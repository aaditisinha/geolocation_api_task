Rails Geolocation API
This project is a Ruby on Rails application that provides a RESTful API for geolocation services. It allows users to retrieve geolocation data based on IP addresses or URLs using the IPSTACK API. (TAKE HOME ASSIGNMENT)

Features

-RESTful API for geolocation data
-Integration with ipstack for geolocation services
-CRUD operations for geolocation entries
-Basic authentication for API endpoints
- Simple web interface for geolocation lookup

Prerequisites


Ruby 3.1.2
Rails 7.0.8 
PostgreSQL

Installation

Clone the repository:
Copygit clone https://github.com/aaditisinha/geolocation_api_task.git
cd geolocation_api_task

Install dependencies:
bundle install

Set up the database:
rails db:create db:migrate


Set up environment variables:
Create a .env file in the root directory and add the following:
IPSTACK_API_KEY="1ecaf60b931a208b6302aa7c1009fab4"
API_USERNAME="positrace"
API_PASSWORD="positrace"


Usage

Start the Rails server:
rails server

Access the web interface by visiting http://localhost:3000 in your browser.
To use the API endpoints:

GET all geolocations:
curl -u username:password http://localhost:3000/api/v1/geolocations

GET a specific geolocation:
curl -u username:password http://localhost:3000/api/v1/geolocations/:id

CREATE a new geolocation:
curl -u username:password -X POST -H "Content-Type: application/json" -d '{"ip_or_url":"8.8.8.8"}' http://localhost:3000/api/v1/geolocations

DELETE a geolocation:
curl -u username:password -X DELETE http://localhost:3000/api/v1/geolocations/:id




Running Tests
To run the test suite:
rspec
Contributing

Fork the repository
Create your feature branch (git checkout -b feature/AmazingFeature)
Commit your changes (git commit -m 'Add some AmazingFeature')
Push to the branch (git push origin feature/AmazingFeature)
Open a Pull Request


Acknowledgments
ipstack for providing geolocation data
Ruby on Rails framework (https://guides.rubyonrails.org/api_app.html)
