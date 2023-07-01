require 'net/http'
require 'uri'
class User < ApplicationRecord
    validates :first_name, presence: true, length: { maximum: 50}
    validates :last_name, presence: true, length: { maximum: 50}
    validates :email, presence: true, uniqueness: true, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i }
    validates :password, presence: true, length: { minimum: 6 }
    
    after_create :send_after_create
    after_update :log_user_update
   
    private
  
    def send_after_create
      uri = URI('http://localhost:3000/api/v1/third_party') # Replace with your API endpoint URL
      response = Net::HTTP.get(uri)
      result = JSON.parse(response)
    end
  
    def log_user_update
      uri = URI('http://localhost:3000/api/v1/third_party') # Replace with your API endpoint URL
      response = Net::HTTP.get(uri)
      result = JSON.parse(response)
    end
end
