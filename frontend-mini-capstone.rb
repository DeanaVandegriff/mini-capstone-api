require "http"

# response = HTTP.get("http://localhost:3000/products.json")
# products = response.parse(:json)
# pp products

response = HTTP.get("http://localhost:3000/products/2.json")
products = response.parse(:json)
pp products
