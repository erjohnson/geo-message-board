class MessagesController < ApplicationController
  def index

  end

private
  def message_params
    params.require(:message).permit(:content, :latitude, :longitude)
  end
end
