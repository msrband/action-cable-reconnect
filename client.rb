require 'action_cable_client'

puts "Process: #{Process.pid}"

EventMachine.run do
  uri = "ws://localhost:3000/cable"
  client = ActionCableClient.new(uri, 'ChatChannel')

  # the connected callback is required, as it triggers
  # the actual subscribing to the channel
  client.connected do
    puts "Client connected"
  end

  client.subscribed do
    puts "Client subscribed"
  end

  client.received do |msg|
    puts "Client received: #{msg}"
  end

  client.errored do |msg|
    puts "Client errored: #{msg}"
  end

  client.disconnected do
    puts "Client disconnected"
    puts
  end
end
