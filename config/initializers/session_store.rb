# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_swapper_session',
  :secret      => '4e28369f61bf174e222728f8cf5d933a97e4afd704e73f73a6178fc461648829d3795b0a71b68ee3120b9d329c7e553ad40717d7a6de11ca40465f7b419f22f2'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
