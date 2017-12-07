class CreateChatrooms < ActiveRecord::Migration
  def change
    create_table :chatrooms do |t|
      t.text :title
      t.text :password

      t.timestamps null: false
    end
  end
end
