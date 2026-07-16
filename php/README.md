# Distance Calculator API - PHP Package

Distance Calculator is a simple tool for calculating the distance between two locations. It returns the distance in miles and kilometers.

## Installation

Install via Composer:

```bash
composer require apiverve/distancecalculator
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Distancecalculator\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'lat1' => 36.7783,
    'lon1' => -119.4179,
    'lat2' => 34.0522,
    'lon2' => -118.2437
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Distancecalculator\Client;
use APIVerve\Distancecalculator\Exceptions\APIException;
use APIVerve\Distancecalculator\Exceptions\ValidationException;

try {
    $response = $client->execute(['lat1' => 36.7783, 'lon1' => -119.4179, 'lat2' => 34.0522, 'lon2' => -118.2437]);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/distancecalculator?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://apiverve.com/marketplace/distancecalculator?utm_source=php&utm_medium=readme](https://apiverve.com/marketplace/distancecalculator?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
