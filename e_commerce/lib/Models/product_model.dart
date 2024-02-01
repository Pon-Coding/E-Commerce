// To parse this JSON data, do
//
//     final productModel = productModelFromJson(jsonString);

import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'product_model.g.dart';

List<ProductModel> productModelFromJson(String str) => List<ProductModel>.from(json.decode(str).map((x) => ProductModel.fromJson(x)));

String productModelToJson(List<ProductModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@JsonSerializable()
class ProductModel {
    @JsonKey(name: "id")
    int id;
    @JsonKey(name: "name")
    String name;
    @JsonKey(name: "image")
    String image;
    @JsonKey(name: "price")
    int price;
    @JsonKey(name: "color")
    int color;
    @JsonKey(name: "qty")
    int qty;

    ProductModel({
        required this.id,
        required this.name,
        required this.image,
        required this.price,
        required this.color,
        required this.qty,
    });

    factory ProductModel.fromJson(Map<String, dynamic> json) => _$ProductModelFromJson(json);

    Map<String, dynamic> toJson() => _$ProductModelToJson(this);
}


