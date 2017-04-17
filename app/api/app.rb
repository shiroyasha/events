require "sinatra"
require_relative "model"

set :bind, "0.0.0.0"

get "/" do
  { :supported_actions => ["GET /events"] }.to_json
end

get "/events" do
  Event.all.to_a.to_json
end
