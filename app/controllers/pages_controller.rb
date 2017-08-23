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
end
