class CreateUserFollows < ActiveRecord::Migration[7.0]
  def change
    create_table :user_follows do |t|
      t.references :user, null: false, foreign_key: true
      t.references :followed_user, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
