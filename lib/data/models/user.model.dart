class User {
  final String firstName;
  final String lastName;
  final String email;
  final List roles;
  final String avatar;
  final String license;
  final String orcr;
  final String birthDate;

  User({
    required this.firstName,
    required this.lastName,
    required this.avatar,
    this.birthDate = "",
    this.email = "",
    this.license = "",
    this.orcr = "",
    this.roles = const [],
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return new User(
      firstName: json["firstName"] != null ? json["firstName"] : "",
      lastName: json["lastName"] != null ? json["lastName"] : "",
      email: json["email"] != null ? json["email"] : "",
      roles: json["roles"] != null ? json["roles"] : [],
      avatar: json["avatar"] != null ? json["avatar"] : "",
      birthDate: json["birthDate"] != null ? json["birthDate"] : "",
      license: json["license"] != null ? json["license"] : "",
      orcr: json["orcr"] != null ? json["orcr"] : "",
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "firstName": firstName,
      "lastName": lastName,
      "email": email,
      "roles": roles,
      "avatar": avatar,
      "license": license,
      "orcr": orcr,
      "birthDate": birthDate,
    };
  }
}
