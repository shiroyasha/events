require "tackle"
require "pg"
require "active_record"

# flush on every puts
STDOUT.sync = true

require_relative "model"
require_relative "worker"
