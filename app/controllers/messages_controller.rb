class MessagesController < ApplicationController

  def index
    @messages = Message.all
  end

  def new
    @message = Message.new
  end

  def create
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
    params.require(:message).permit(:content, :latitude, :longitude)
  end
end
