import 'package:flutter/material.dart';

class CategoryModel {
  final String name;
  final Color boxColor;

  CategoryModel({
    required this.name,
    required this.boxColor,
  });
}

class CategoryProvider {
  static List<CategoryModel> getCategories() {
    List<CategoryModel> categories = [];  
    categories.add(
      CategoryModel(name: 'name1',boxColor: Color.fromRGBO(255, 63, 63, 1)),
    );
    categories.add(
      CategoryModel(name: 'name2',boxColor: Color.fromRGBO(0, 255, 8, 1)),
    );
    categories.add(
      CategoryModel(name: 'name3',boxColor: Color.fromRGBO(47, 0, 255, 1)),
    );
    // Add more categories as needed
    return categories; // Return the list of categories
  }
}
