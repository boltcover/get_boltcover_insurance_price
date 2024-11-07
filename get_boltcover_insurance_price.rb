# Bolt Cover helps UK retailers offer insurance at the point of sale
# This is an example of how to retrieve an insurance price for a specific insurance category and product price

# Run using: ruby get_boltcover_insurance_price.rb
# This example is provided without warranty and may cause data loss if used in a production environment

# See the full API documentation at https://api-docs.boltcover.com

require 'uri'
require 'openssl'
require 'net/http'
require 'json'
require "httparty"
require 'yaml'

# Uncomment this line to enable HTTP debug mode
# HTTParty::Basement.debug_output $stdout

# To run this script create a file called get_boltcover_insurance_price.yml containing (remembering to remove the # symbols):

# BOLT_BASE_URL: "xxx"
# BOLT_API_KEY: "xxx" 

yaml_settings = YAML.load_file('get_boltcover_insurance_price.yml')

# Bolt API constants
BOLT_BASE_URL = yaml_settings["BOLT_BASE_URL"]
BOLT_API_KEY = yaml_settings["BOLT_API_KEY"]

# API credentials for the retailer, note you will need a live base_url for production usage
# Request a test API key at: https://app.boltcover.com/request-test-api

# Note the TEST AND PRODUCTION endpoints are:
# UAT: "https://api.boltcover.com/test"
# PRODUCTION: "https://api.boltcover.com/production"

# Set the category, here are some others you may want to use:
# "Baby & Toddler Furniture", "Beds & Accessories", "Benches", "Cabinets & Storage", "Chairs", "Entertainment Centers & TV Stands"
# "Furniture Sets", "Futon Frames", "Futon Pads", "Futons", "Office Furniture", "Ottomans", "Sofa Accessories", "Sofas", "Table Accessories", "Tables"
category = "Sofas" # Note this is the Bolt Cover category, email developers@boltcover.com if you need these for your specific needs"

# Retail price of the product in GBP (£)
product_price = 1278.99 

puts "Bolt Cover Insurance Premium Example Generator.."
puts 
puts "Visit https://api-docs.boltcover.com/ for more information about our API"
puts "This example is provided without warranty and may cause data loss if used in a production environment"
puts "For more information contact Bolt Cover at https://www.boltcover.com/contact"
puts 


start_time = Time.now
# GET insurance-price
insurance_prices = HTTParty.get("#{BOLT_BASE_URL}/insurance-price?category-name=#{category}&product-price=#{product_price}", 
                    headers: { "X-Api-Key" => BOLT_API_KEY })
finish_time = Time.now                    

# Work out the time it took to execute the API call
time_diff = finish_time - start_time

if !insurance_prices["insurance"]
  puts "API ERROR!  For more detailed information uncomment HTTParty::Basement.debug_output $stdout at the top of this file."
  puts "Ensure you are using the correct Bolt Cover product category, email developers@boltcover.com for help."
else
  # We only offer 5 year insurance policies. Please ignore any other term lengths this method returns
  insurance_price = insurance_prices["insurance"].find { |hash| hash["term"] == "5" }["insurance_price"]
  puts
  puts "*********************************************************************************************************"
  puts "The Bolt Cover Insurance Premium (including Insurance Premium Tax)"
  puts "for the product category '#{category}' with a item price of £#{product_price} is:"
  puts "£#{insurance_price}"
  puts "Request took #{time_diff} seconds"
  puts "*********************************************************************************************************"
end

