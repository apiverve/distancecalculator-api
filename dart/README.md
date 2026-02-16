# Distance Calculator API - Dart/Flutter Client

Distance Calculator is a simple tool for calculating the distance between two locations. It returns the distance in miles and kilometers.

[![pub package](https://img.shields.io/pub/v/apiverve_distancecalculator.svg)](https://pub.dev/packages/apiverve_distancecalculator)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Distance Calculator API](https://apiverve.com/marketplace/distancecalculator?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_distancecalculator: ^1.1.14
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_distancecalculator/apiverve_distancecalculator.dart';

void main() async {
  final client = DistancecalculatorClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'lat1': 36.7783,
      'lon1': -119.4179,
      'lat2': 34.0522,
      'lon2': -118.2437
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

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
    }
  }
}
```

## API Reference

- **API Home:** [Distance Calculator API](https://apiverve.com/marketplace/distancecalculator?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/distancecalculator](https://docs.apiverve.com/ref/distancecalculator?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)
