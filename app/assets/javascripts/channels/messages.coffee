App.messages = App.cable.subscriptions.create "MessagesChannel",
  connected: ->
    $(document).on 'keypress', (event) =>
    if event.keyCode == 13
      alert("press")
      @speak(event.target.value)
      event.target.value = ""
      event.preventDefault()

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    #alert data['message']
   #console.log(event.keyCode)
   $('#messages').append(data.message)

  speak: (message) =>
    @perform 'speak',{ message: message }
