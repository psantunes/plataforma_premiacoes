require 'mysql2'

client = Mysql2::Client.new(
  host: "127.0.0.1",
  username: "root",
  password: "root"
)

puts client.query("SHOW DATABASES;").to_a
