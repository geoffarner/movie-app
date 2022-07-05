require "http"

response = HTTP.get("http://localhost:3000/movies.json").parse(:json)
pp response
