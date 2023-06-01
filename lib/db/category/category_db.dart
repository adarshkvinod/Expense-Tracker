import 'package:expense_tracker/screens/models/category/category_model.dart';
import 'package:hive_flutter/adapters.dart';

// ignore: constant_identifier_names
const CATEGORY_DB_NAME ='category-database';

abstract class CategoryDbfunctions{
  Future<List<CategoryModel>> getCategories();
  Future<void> insertCategory(CategoryModel value);
}




class CategoryDB implements CategoryDbfunctions{
 @override
 Future<void>insertCategory(CategoryModel value) async{

 final _categoryDB =await  Hive.openBox<CategoryModel>(CATEGORY_DB_NAME);
  await _categoryDB.add(value);
 }
 
  @override
  Future<List<CategoryModel>> getCategories()async {
 final _categoryDB =await  Hive.openBox<CategoryModel>(CATEGORY_DB_NAME);
 return _categoryDB.values.toList();
    
  }
 
 

  
}