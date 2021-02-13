class Product {
  List<Data> data;

  Product({this.data});

  Product.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = new List<Data>();
      json['data'].forEach((v) {
        data.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int id;
  String name;
  int price;
  String photo;
  int discount;
  int isHotProduct;
  int isNewArrival;
  int categoryId;
  int userId;
  String createdAt;
  String updatedAt;

  Data(
      {this.id,
      this.name,
      this.price,
      this.photo,
      this.discount,
      this.isHotProduct,
      this.isNewArrival,
      this.categoryId,
      this.userId,
      this.createdAt,
      this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    price = json['price'];
    photo = json['photo'];
    discount = json['discount'];
    isHotProduct = json['is_hot_product'];
    isNewArrival = json['is_new_arrival'];
    categoryId = json['category_id'];
    userId = json['user_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['price'] = this.price;
    data['photo'] = this.photo;
    data['discount'] = this.discount;
    data['is_hot_product'] = this.isHotProduct;
    data['is_new_arrival'] = this.isNewArrival;
    data['category_id'] = this.categoryId;
    data['user_id'] = this.userId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
