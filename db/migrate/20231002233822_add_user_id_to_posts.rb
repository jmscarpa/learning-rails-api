class AddUserIdToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :user_id, :integer, null: false
    add_column :users, :email, :string

    add_index :posts, :user_id
    add_foreign_key :posts, :users
  end
end
