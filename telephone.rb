require 'httparty'

# FIXME
sender = "Telemarketer Bob"

# FIXME
message = "I have a credit card offer you can't refuse."

# FIXME
url = "http://localhost:8080/messages"
json = { from: sender, body: message }

response = HTTParty.post(url, body: JSON.generate(json))
