# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_mahi_session',
  :secret      => '89bada211dc573acd62ce202d7ff097c48fd309b840fe4ee9c8471389b455dc1105db303a7ba64ec043a1e58debe23d3a843dba975ae3a07e5f3c139c8866c0a'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
