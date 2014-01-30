DB_DEFAULTS = {
  :adapter   => RUBY_PLATFORM == 'java' ? 'jdbcmysql' : 'mongo',
  :encoding  => 'utf8',
  :reconnect => true,
  :database  => "intuit_promotions_#{Padrino.env}",
  :pool      => 25,
  :username  => 'root',
  :password  => '',
  :host      => 'localhost'
}

ActiveRecord::Base.configurations[:development] = DB_DEFAULTS
ActiveRecord::Base.configurations[:test] = DB_DEFAULTS
ActiveRecord::Base.configurations[:staging] = DB_DEFAULTS
ActiveRecord::Base.configurations[:production] = DB_DEFAULTS
                 
# Setup our logger
ActiveRecord::Base.logger = logger

# Include Active Record class name as root for JSON serialized output.
ActiveRecord::Base.include_root_in_json = false

# Store the full class name (including module namespace) in STI type column.
ActiveRecord::Base.store_full_sti_class = true

# Now we can establish connection with our db
logger.info "Connecting to DB"
ActiveRecord::Base.establish_connection(ActiveRecord::Base.configurations[Padrino.env])
