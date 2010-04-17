# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_empower_session',
  :secret      => '698f6bb275104c1d3175b1e3b5b4b44d667402d5492d4850807165dc7d8cbb45f1bf67dd08ed145c14497592d3abcc706c9e3715c7e4e060bf817ba342b18876'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
