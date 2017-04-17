# TODO: fix issue with tackle.
# It should wait for rabbit to boot.
puts "Waiting for rabbit server to boot"
sleep 10

$amqp_url = ENV["AMQP_URL"]

tackle_options = {
  :url => $amqp_url,
  :exchange => "events",
  :routing_key => "new-event",
  :service => "event-collector"
}

Tackle.consume(tackle_options) do |message|
  Event.create(:description => JSON.parse(message))
end
