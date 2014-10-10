class MessagesController < ApplicationController

  def index
    @user = User.find(current_user.id)
    @messages = Message.all
  end

  def new
    @user = User.find(current_user.id)
    @message = Message.new
  end

  def create
    @user = User.find(current_user.id)
    @message = Message.new(message_params)
    if @message.save
      respond_to do |format|
        format.html { redirect_to messages_url }
        format.js
      end
    end
  end

private
  def message_params
    params.require(:message).permit(:content).merge(latitude: current_user.latitude, longitude: current_user.longitude)
  end
end
