class GeolocationService
  include HTTParty
  base_uri 'http://api.ipstack.com'

  def initialize
    @api_key = ENV['IPSTACK_API_KEY']
  end

  def fetch(ip_or_url)
    response = self.class.get("/#{ip_or_url}", query: { access_key: @api_key })
    response.parsed_response
  end
end