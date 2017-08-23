class MessagesController < ApplicationController
  
    def new
        @message = Message.new
    end
    
    def create
        url = "https://parakeet-corear.c9users.io/room/2"
        uri = URI::parse(url)
        id2 = uri.path.split('/')[2]
        id = params[:id]
        @message = Message.new(room_params)
        @message.user_id = current_user.id
        @message.chatroom = id
        respond_to do |f|
            if (@message.save)
                f.html { redirect_to "/room/#{id}"}
            else
                f.html { redirect_to "", notice: "Error!" }
            end
        end
    end
    
    private
    def room_params
        params.require(:message).permit(:content, :user_id, :chatroom, :picture)
    end
    
end