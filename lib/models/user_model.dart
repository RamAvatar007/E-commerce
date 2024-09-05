class UserModel {
  String? uId;
  String? username;
  String? email;
  String? phone;
  String? userImg;
  String? userDeviceToken;
  String? country;
  String? userAddress;
  String? street;
  String? city;
  bool? isAdmin;
  bool? isActive;
  dynamic createdOn;

  UserModel(
      {this.uId,
      this.username,
      this.email,
      this.phone,
      this.userImg,
      this.userDeviceToken,
      this.country,
      this.userAddress,
      this.street,
      this.city,
      this.isAdmin,
      this.isActive,
      this.createdOn});

  UserModel.fromJson(Map<String, dynamic> json) {
    uId = json["uId"];
    username = json["username"];
    email = json["email"];
    phone = json["phone"];
    userImg = json["userImg"];
    userDeviceToken = json["userDeviceToken"];
    country = json["country"];
    userAddress = json["userAddress"];
    street = json["street"];
    street = json["city"];
    isAdmin = json["isAdmin"];
    isActive = json["isActive"];
    createdOn = json["createdOn"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["uId"] = uId;
    data["username"] = username;
    data["email"] = email;
    data["phone"] = phone;
    data["userImg"] = userImg;
    data["userDeviceToken"] = userDeviceToken;
    data["country"] = country;
    data["userAddress"] = userAddress;
    data["street"] = street;
    data["city"] = city;
    data["isAdmin"] = isAdmin;
    data["isActive"] = isActive;
    data["createdOn"] = createdOn;
    return data;
  }
}
