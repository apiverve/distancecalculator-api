/// Response models for the Distance Calculator API.

/// API Response wrapper.
class DistancecalculatorResponse {
  final String status;
  final dynamic error;
  final DistancecalculatorData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  DistancecalculatorResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory DistancecalculatorResponse.fromJson(Map<String, dynamic> json) => DistancecalculatorResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? DistancecalculatorData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Distance Calculator API.

class DistancecalculatorData {
  num? distanceMiles;
  num? distanceKm;
  DistancecalculatorDataLocation1? location1;
  DistancecalculatorDataLocation2? location2;
  num? bearing;
  String? direction;
  String? estimatedDriveTime;

  DistancecalculatorData({
    this.distanceMiles,
    this.distanceKm,
    this.location1,
    this.location2,
    this.bearing,
    this.direction,
    this.estimatedDriveTime,
  });

  factory DistancecalculatorData.fromJson(Map<String, dynamic> json) => DistancecalculatorData(
      distanceMiles: json['distanceMiles'],
      distanceKm: json['distanceKm'],
      location1: json['location1'] != null ? DistancecalculatorDataLocation1.fromJson(json['location1']) : null,
      location2: json['location2'] != null ? DistancecalculatorDataLocation2.fromJson(json['location2']) : null,
      bearing: json['bearing'],
      direction: json['direction'],
      estimatedDriveTime: json['estimatedDriveTime'],
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
