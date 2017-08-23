class ChatroomsController < ApplicationController
    def new
        @room = Chatroom.new
    end
    
    def create
        @room = Chatroom.new(room_params)
        
        respond_to do |f|
            if (@room.save)
                f.html { redirect_to "/room/#{@room.id}"}
            else
                f.html { redirect_to "", notice: "Error!" }
            end
        end
    end
    
    
    
    
    private
    def room_params
        params.require(:chatroom).permit(:title,:password)
    end
    
end