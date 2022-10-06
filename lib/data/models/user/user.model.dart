import 'package:promdifarm_app/data/models/user/user_cr.model.dart';
import 'package:promdifarm_app/data/models/user/user_license.model.dart';
import 'package:promdifarm_app/data/models/user/user_or.model.dart';
import 'package:promdifarm_app/data/models/user/user_vehicle.model.dart';
import 'package:promdifarm_app/domain/entities/user/user.entity.dart';

class User implements UserEntity {
  final String firstName;
  final String lastName;
  final String email;
  final List roles;
  final String avatar;
  final UserLicense license;
  final UserCR cr;
  final UserOR or;
  final String birthDate;
  final UserVehicle vehicle;
  final List tenants;
  final String lastLogin;
  final String type;
  final String phoneNumber;
  final String address;
  final String status;

  User({
    required this.firstName,
    required this.lastName,
    required this.avatar,
    required this.vehicle,
    required this.or,
    required this.cr,
    required this.license,
    this.birthDate = "",
    this.email = "",
    this.lastLogin = "",
    this.type = "",
    this.phoneNumber = "",
    this.address = "",
    this.status = "",
    this.roles = const [],
    this.tenants = const [],
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return new User(
      firstName: json["firstName"] ?? "",
      lastName: json["lastName"] ?? "",
      email: json["email"] ?? "",
      roles: json["roles"] != null ? json["roles"] : [],
      tenants: json["tenants"] != null ? json["tenants"] : [],
      avatar: json["avatar"] ?? "",
      birthDate: json["birthDate"] ?? "",
      license: UserLicense.fromJson(json["license"]),
      or: UserOR.fromJson(json["or"]),
      cr: UserCR.fromJson(json["cr"]),
      vehicle: UserVehicle(),
      lastLogin: json["lastLogin"] ?? "",
      type: json["type"] ?? "",
      phoneNumber: json["phoneNumber"] ?? "",
      address: json["address"] ?? "",
      status: json["status"] ?? "",
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "firstName": firstName,
      "lastName": lastName,
      "email": email,
      "roles": roles,
      "tenants": tenants,
      "avatar": avatar,
      "license": license,
      "cr": cr,
      "or": or,
      "vehicle": vehicle,
      "birthDate": birthDate,
      "lastLogin": lastLogin,
      "type": type,
      "phoneNumber": phoneNumber,
      "address": address,
      "status": status,
    };
  }

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

  @override
  // TODO: implement stringify
  bool? get stringify => throw UnimplementedError();
}
