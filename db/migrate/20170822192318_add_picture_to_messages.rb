class AddPictureToMessages < ActiveRecord::Migration
  def up
    add_attachment :messages, :picture
  end

  def down
    remove_attachment :messages, :picture
  end
end
