import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  List<Product> products;
  int total;
  int skip;
  int limit;

  Welcome({
    required this.products,
    required this.total,
    required this.skip,
    required this.limit,
  });

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
    products: List<Product>.from(json["products"].map((x) => Product.fromJson(x))),
    total: json["total"],
    skip: json["skip"],
    limit: json["limit"],
  );

  Map<String, dynamic> toJson() => {
    "products": List<dynamic>.from(products.map((x) => x.toJson())),
    "total": total,
    "skip": skip,
    "limit": limit,
  };
}

class Product {
  int? id;
  String title;
  String description;
  int price;
  double discountPercentage;
  double rating;
  int stock;
  String brand;
  String category;
  String thumbnail;
  List<String> images;

  Product({
    this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.discountPercentage,
    required this.rating,
    required this.stock,
    required this.brand,
    required this.category,
    required this.thumbnail,
    required this.images,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    id: json["id"]??0,
    title: json["title"]??"",
    description: json["description"]??"",
    price: json["price"]??0,
    discountPercentage: json["discountPercentage"]?.toDouble()??12.0,
    rating: json["rating"]?.toDouble()??2,
    stock: json["stock"]??5,
    brand: json["brand"]??"",
    category: json["category"]??"",
    thumbnail: json["thumbnail"]??"",
    images: List<String>.from(json["images"].map((x) => x))??[],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "description": description,
    "price": price,
    "discountPercentage": discountPercentage,
    "rating": rating,
    "stock": stock,
    "brand": brand,
    "category": category,
    "thumbnail": thumbnail,
    "images": List<dynamic>.from(images.map((x) => x)),
  };
}
