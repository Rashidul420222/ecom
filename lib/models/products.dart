import 'dart:convert';

Data dataFromJson(String str) => Data.fromJson(json.decode(str));

String dataToJson(Data data) => json.encode(data.toJson());

class Data {
  Data({
    this.data,
  });

  List<Items> data;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        data: List<Items>.from(json["data"].map((x) => Items.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Items {
  Items({
    this.id,
    this.name,
    this.price,
    this.photo,
    this.discount,
    this.isHotProduct,
    this.isNewArrival,
    this.categoryId,
    this.userId,
    this.createdAt,
    this.updatedAt,
  });

  int id;
  String name;
  int price;
  String photo;
  int discount;
  int isHotProduct;
  int isNewArrival;
  int categoryId;
  int userId;
  DateTime createdAt;
  DateTime updatedAt;

  factory Items.fromJson(Map<String, dynamic> json) => Items(
        id: json["id"],
        name: json["name"],
        price: json["price"],
        photo: json["photo"],
        discount: json["discount"],
        isHotProduct: json["is_hot_product"],
        isNewArrival: json["is_new_arrival"],
        categoryId: json["category_id"],
        userId: json["user_id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "price": price,
        "photo": photo,
        "discount": discount,
        "is_hot_product": isHotProduct,
        "is_new_arrival": isNewArrival,
        "category_id": categoryId,
        "user_id": userId,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
