/// Response models for the Distance Calculator API.

/// API Response wrapper.
class DistancecalculatorResponse {
  final String status;
  final dynamic error;
  final DistancecalculatorData? data;

  DistancecalculatorResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory DistancecalculatorResponse.fromJson(Map<String, dynamic> json) => DistancecalculatorResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? DistancecalculatorData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the Distance Calculator API.

class DistancecalculatorData {
  double? distanceMiles;
  double? distanceKm;
  DistancecalculatorDataLocation1? location1;
  DistancecalculatorDataLocation2? location2;

  DistancecalculatorData({
    this.distanceMiles,
    this.distanceKm,
    this.location1,
    this.location2,
  });

  factory DistancecalculatorData.fromJson(Map<String, dynamic> json) => DistancecalculatorData(
      distanceMiles: json['distanceMiles'],
      distanceKm: json['distanceKm'],
      location1: json['location1'] != null ? DistancecalculatorDataLocation1.fromJson(json['location1']) : null,
      location2: json['location2'] != null ? DistancecalculatorDataLocation2.fromJson(json['location2']) : null,
    );
}

class DistancecalculatorDataLocation1 {
  String? latitude;
  String? longitude;
  String? city;
  String? state;

  DistancecalculatorDataLocation1({
    this.latitude,
    this.longitude,
    this.city,
    this.state,
  });

  factory DistancecalculatorDataLocation1.fromJson(Map<String, dynamic> json) => DistancecalculatorDataLocation1(
      latitude: json['latitude'],
      longitude: json['longitude'],
      city: json['city'],
      state: json['state'],
    );
}

class DistancecalculatorDataLocation2 {
  String? latitude;
  String? longitude;
  String? city;
  String? state;

  DistancecalculatorDataLocation2({
    this.latitude,
    this.longitude,
    this.city,
    this.state,
  });

  factory DistancecalculatorDataLocation2.fromJson(Map<String, dynamic> json) => DistancecalculatorDataLocation2(
      latitude: json['latitude'],
      longitude: json['longitude'],
      city: json['city'],
      state: json['state'],
    );
}

class DistancecalculatorRequest {
  double lat1;
  double lon1;
  double lat2;
  double lon2;

  DistancecalculatorRequest({
    required this.lat1,
    required this.lon1,
    required this.lat2,
    required this.lon2,
  });

  Map<String, dynamic> toJson() => {
      'lat1': lat1,
      'lon1': lon1,
      'lat2': lat2,
      'lon2': lon2,
    };
}
