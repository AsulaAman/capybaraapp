class MessagesController < ApplicationController

  def create
    @message = Message.new(message_params)
    @message.user = current_user
    @message.chatroom = Chatroom.find(params[:chatroom_id])
    if @message.save
      redirect_to chatroom_path(@message.chatroom)
    else
      render 'chatrooms/show', alert: "Message can't be blank"
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
