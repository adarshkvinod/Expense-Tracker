import 'package:expense_tracker/db/category/category_db.dart';
import 'package:expense_tracker/screens/models/category/category_model.dart';
import 'package:flutter/material.dart';

class ExpenseCategoryList extends StatelessWidget {
  const ExpenseCategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: CategoryDB().expenseCategoryListListener,
     builder: (BuildContext ctx, List<CategoryModel>newList, Widget?_ ) {
      return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView.separated(
        itemBuilder: (ctx,index){
          final category = newList[index];
          return  Card(
            elevation: 9,
            color: const Color.fromARGB(255, 0, 73, 91),
            child: ListTile(
              title: Text(category.name,style: const TextStyle(color:Colors.white ),),
              trailing: IconButton(onPressed: (){
                CategoryDB.instance.deleteCategory(category.id);
              }, 
              icon: const Icon(Icons.delete,color: Colors.white,)),
            ),
          );
        
        },
       separatorBuilder: (ctx,index){
        return const SizedBox(height: 10,);
       },
        itemCount: newList.length),
    );
     }
     );
  }

}