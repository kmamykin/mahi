Factory.sequence :time do |x|
  Time.now - x.hours
end

Factory.sequence :date do |x|
  Date.today - x.days
end

Factory.sequence(:number) { |n| n }

Factory.define :user do |u|
  u.first_name            { |n| "Joe#{n}" }
  u.last_name             { |n| "Doe#{n}" }
  u.sequence(:login)      { |n| "login#{n}" }
  u.sequence(:email)      { |n| "login#{n}@example.com" }
  u.password              "password"
  u.password_confirmation { |p| p.password }
  u.phone_number          { |n| "555-555-000#{n}" }
  u.last_request_at       { Factory.next(:time) }
  u.current_login_at      { Factory.next(:time) }
  u.last_login_at         { Factory.next(:time) }
  u.last_login_ip         "127.0.0.1"
  u.current_login_ip      "127.0.0.1"
  u.login_count           { rand(100) + 1 }
  u.updated_at            { Factory.next(:time) }
  u.created_at            { Factory.next(:time) }
end
