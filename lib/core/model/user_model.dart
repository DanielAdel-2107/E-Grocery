class UserModel {
  final String accessToken;
  final String tokenType;

  final int userId;
  final String userName;
  final int expiresIn;
  // final DateTime creationTime;
  // final DateTime expirationTime;
  final int accountId;
  final String email;
  final String role;

  UserModel({
    required this.accessToken,
    required this.tokenType,
    required this.userId,
    required this.userName,
    required this.expiresIn,
    // required this.creationTime,
    // required this.expirationTime,
    required this.accountId,
    required this.email,
    required this.role,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      accessToken: json["access_token"],
      tokenType: json["token_type"],
      userId: json["user_Id"],
      userName: json["user_name"],
      expiresIn: json["expires_in"],
      // creationTime: DateTime.parse(json["creation_Time"]),
      // expirationTime: DateTime.parse(json["expiration_Time"]),
      accountId: json["accountid"],
      email: json["email"],
      role: json["role"],
    );
  }

  Map<String, dynamic> toJson() => {
        "access_token": accessToken,
        "token_type": tokenType,
        "user_Id": userId,
        "user_name": userName,
        "expires_in": expiresIn,
        // "creation_Time": creationTime.toIso8601String(),
        // "expiration_Time": expirationTime.toIso8601String(),
        "accountid": accountId,
        "email": email,
        "role": role,
      };
}
