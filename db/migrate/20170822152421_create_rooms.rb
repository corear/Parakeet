class CreateRooms < ActiveRecord::Migration
  def change
    create_table :room do |t|
      t.text :title
      t.text :password
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
