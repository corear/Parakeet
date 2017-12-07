class PagesController < ApplicationController
  def index
  end

  def home
    @newRoom = Chatroom.new
    @rooms = Chatroom.all
  end
  
  def room
    @room = Chatroom.find(params[:id])
    @access = params[:id]
    @newMessage = Message.new
    @messages = Message.all.where('chatroom = ?', params[:id]).take(50)
  end
  
  def admin
    @users = User.all.order("updated_at DESC")
    @rooms = Chatroom.all.order("updated_at DESC")
    @messages = Message.all.order("updated_at DESC").take(100)
    @mPics = Message.all
  end
end
