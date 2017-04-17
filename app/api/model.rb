require "active_record"
require "pg"

$db_url = ENV["DB_URL"]

ActiveRecord::Base.establish_connection($db_url)

class Event < ActiveRecord::Base
end

