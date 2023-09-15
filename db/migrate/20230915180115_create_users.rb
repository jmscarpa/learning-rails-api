class CreateUsers < ActiveRecord::Migration[7.0]
  
  def change
    
    create_table :users do |t|
      t.string :rocket_chat_id, null: false
      t.string :email, null: false
      t.string :username, null: false
      t.string :name

      t.timestamps
    end

  end

end
