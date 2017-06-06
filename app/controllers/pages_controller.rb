  class PagesController < ApplicationController



  def index
    ActionCable.server.broadcast('tchat', {content: 'salut'})
  end

  def show
  end

  def tchat
    ActionCable.server.broadcast('tchat', {content: 'salut'})
  end
end
