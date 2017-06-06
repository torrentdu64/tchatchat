App.poke = App.cable.subscriptions.create "PokeChannel",
  connected: ->
    $('#button').click =>
     @perform('poke', {})
  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    alert('poke')
    # Called when there's incoming data on the websocket for this channel
