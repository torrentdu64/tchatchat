class MessagesChannel < ApplicationCable::Channel
  def subscribed
     stream_from "messages"

  end



  def speak(data)
    message = ApplicationController.render(partial: 'partials/message', locals:{message: data['message']})
    ActionCable.server.broadcast( 'messages' , {message: message})

  end
end
