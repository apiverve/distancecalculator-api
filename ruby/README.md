# Distance Calculator API - Ruby Gem

Distance Calculator computes the distance between two coordinate pairs in miles and kilometers. Supply two latitude and longitude points to receive distances and resolved city and state names for both locations.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_distancecalculator'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_distancecalculator
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_distancecalculator'

# Initialize the client
client = APIVerve::Distancecalculator::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  lat1: 36.7783,
  lon1: -119.4179,
  lat2: 34.0522,
  lon2: -118.2437
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ lat1: 36.7783, lon1: -119.4179, lat2: 34.0522, lon2: -118.2437 })
  puts response["data"]
rescue APIVerve::Distancecalculator::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Distancecalculator::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Distancecalculator::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "distanceMiles": 199.6804337234997,
    "distanceKm": 321.2535462758628,
    "location1": {
      "latitude": "36.728450",
      "longitude": "-119.53571",
      "city": "Sanger",
      "state": "California"
    },
    "location2": {
      "latitude": "34.044662",
      "longitude": "-118.24255",
      "city": "Los Angeles",
      "state": "California"
    },
    "bearing": 198,
    "direction": "South",
    "estimatedDriveTime": "5h 11m"
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/distancecalculator?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/distancecalculator?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/distancecalculator?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
