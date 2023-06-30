import consumer from "channels/consumer"

consumer.subscriptions.create("OrderChannel", {
  connected() {
    console.log("Conectado")
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
  }
});
