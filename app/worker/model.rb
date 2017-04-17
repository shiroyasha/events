$db_url = ENV["DB_URL"]

ActiveRecord::Base.establish_connection($db_url)

unless ActiveRecord::Base.connection.data_source_exists?(:events)
  ActiveRecord::Migration.class_eval do
    create_table :events do |t|
      t.json :description
    end
  end
end

class Event < ActiveRecord::Base
end
