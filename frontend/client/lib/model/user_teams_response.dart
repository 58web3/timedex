//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserTeamsResponse {
  /// Returns a new [UserTeamsResponse] instance.
  UserTeamsResponse({
    this.message,
    this.userTeams = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

  List<TeamDetail> userTeams;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserTeamsResponse &&
     other.message == message &&
     other.userTeams == userTeams;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (message == null ? 0 : message!.hashCode) +
    (userTeams.hashCode);

  @override
  String toString() => 'UserTeamsResponse[message=$message, userTeams=$userTeams]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
      json[r'user_teams'] = this.userTeams;
    return json;
  }

  /// Returns a new [UserTeamsResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserTeamsResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserTeamsResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserTeamsResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserTeamsResponse(
        message: mapValueOfType<String>(json, r'message'),
        userTeams: TeamDetail.listFromJson(json[r'user_teams']) ?? const [],
      );
    }
    return null;
  }

  static List<UserTeamsResponse>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserTeamsResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserTeamsResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserTeamsResponse> mapFromJson(dynamic json) {
    final map = <String, UserTeamsResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserTeamsResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserTeamsResponse-objects as value to a dart map
  static Map<String, List<UserTeamsResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserTeamsResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserTeamsResponse.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

