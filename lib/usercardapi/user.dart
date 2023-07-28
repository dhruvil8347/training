class UserModel {
  int id;
  String name;
  String username;
  String number;
  String website;
  String email;
  Address address;


  UserModel({
    this.id = 0,
    this.name = "",
    this.username = "",
    this.number = "",
    this.website = "",
    this.email = "",
    this.address = const Address(),
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'] ?? 0,
      name: json['name'] ?? "",
      username: json['username'] ?? "",
      number: json['phone'] ?? "",
      email: json['email'] ?? "",
      website: json['website'] ?? "",
      address: Address.fromjson(json["address"]),
    );
  }

  get length => null;

  Map<String, dynamic> tojson() => {
        "id": id,
        "name": name,
        "pic": username,
        "number": number,
        "website": website,
        "email": email,
        "address": address.tojson()
      };
}

class Address
{
  final String street;
  final String suite;
  final String city;
  final String zipcode;

  const Address
  ({
    this.street = "",
    this.suite = "",
    this.city = "",
    this.zipcode = "",
  });

  factory Address.fromjson(Map<String, dynamic> json)
  {
    return Address
      (
      street: json['street'] ?? "",
      suite: json['suite'] ?? "",
      city: json['city'] ?? "",
      zipcode: json['zipcode'] ?? "",
      );
  }

  Map<String, dynamic> tojson() =>
      {
        "street": street,
        "suite": suite,
        "city": city,
        "zipcode": zipcode,
      };
}
