require "http"

# response = HTTP.get("http://localhost:3000/products.json")
# products = response.parse(:json)
# pp products

# response = HTTP.get("http://localhost:3000/products/6.json")
# products = response.parse(:json)
# pp products

response = HTTP.post("http://localhost:3000/products", :params => { name: "pencil", price: 2, image_url: "image.jpg", description: "a wooden writing instrument" })
