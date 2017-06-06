class TchatChannel < ApplicationCable::Channel
  def subscribed
     stream_from "tchat"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
