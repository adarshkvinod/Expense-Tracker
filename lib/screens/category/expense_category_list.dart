import 'package:flutter/material.dart';

class ExpenseCategoryList extends StatelessWidget {
  const ExpenseCategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView.separated(
        itemBuilder: (ctx,index){
          return  Card(
            elevation: 9,
            color: const Color.fromARGB(255, 0, 73, 91),
            child: ListTile(
              title: Text('Expense Category $index',style: TextStyle(color:Colors.white ),),
              trailing: IconButton(onPressed: (){}, icon: const Icon(Icons.delete,color: Colors.white,)),
            ),
          );
        
        },
       separatorBuilder: (ctx,index){
        return const SizedBox(height: 10,);
       },
        itemCount: 100),
    );
  }
}