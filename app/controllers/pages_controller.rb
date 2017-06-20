  class PagesController < ApplicationController



  def index

    #ActionCable.server.broadcast('messages', { message: data['message']})
  end

  def show
  end

  def tchat
    #ActionCable.server.broadcast('tchat', {content: 'salut'})
  end

  def messages
    #ActionCable.server.broadcast 'messages' , message: data['message']
  end
end
