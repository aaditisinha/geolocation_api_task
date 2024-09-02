# Rails Geolocation API

This project is a Ruby on Rails application that provides a RESTful API for geolocation services. It allows users to retrieve geolocation data based on IP addresses or URLs using the ipstack API.

## Features

- RESTful API for geolocation data
- Integration with ipstack for geolocation services
- CRUD operations for geolocation entries
- Basic authentication for API endpoints
- Simple web interface for geolocation lookup

## Prerequisites
- Ruby 3.1.2
- Rails 7.0.8 
- PostgreSQL

## Installation

1. Clone the repository:
   ```
   git clone https://github.com/yourusername/rails-geolocation-api.git
   cd rails-geolocation-api
   ```

2. Install dependencies:
   ```
   bundle install
   ```

3. Set up the database:
   ```
   rails db:create db:migrate
   ```

4. Set up environment variables:
   Create a `.env` file in the root directory and add the following:
   ```
   IPSTACK_API_KEY="replace as provided by developer"
   API_USERNAME="replace as provided by developer"
   API_PASSWORD="replace as provided by developer"
   ```

## Usage

1. Start the Rails server:
   ```
   rails server
   ```

2. Access the web interface by visiting `http://localhost:3000` in your browser.

3. To use the API endpoints:

   - GET all geolocations:
     ```
     curl -u username:password http://localhost:3000/api/v1/geolocations
     ```

   - GET a specific geolocation:
     ```
     curl -u username:password http://localhost:3000/api/v1/geolocations/:id
     ```

   - CREATE a new geolocation:
     ```
     curl -u username:password -X POST -H "Content-Type: application/json" -d '{"ip_or_url":"8.8.8.8"}' http://localhost:3000/api/v1/geolocations
     ```

   - DELETE a geolocation:
     ```
     curl -u username:password -X DELETE http://localhost:3000/api/v1/geolocations/:id
     ```

## Running Tests

To run the test suite:

```
rspec
```

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License. See the `LICENSE` file for details.

## Acknowledgments

- [ipstack](https://ipstack.com/) for providing geolocation data
- [Ruby on Rails](https://rubyonrails.org/) framework
