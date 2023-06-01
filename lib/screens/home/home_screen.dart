import 'package:expense_tracker/db/category/category_db.dart';
import 'package:expense_tracker/screens/category/category_add_popup.dart';
import 'package:expense_tracker/screens/category/screen_category.dart';
import 'package:expense_tracker/screens/home/widgets/bottom_navigation.dart';
import 'package:expense_tracker/screens/models/category/category_model.dart';
import 'package:expense_tracker/screens/transactions/screen_transaction.dart';
import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  ScreenHome({super.key});

static ValueNotifier<int>selectedIndexNotifier= ValueNotifier(0);
final _pages =[
const ScreenTransaction(),
const ScreenCategory(),
];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Expense Tracker',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w900),
          ),
        centerTitle: true,
      ),
      bottomNavigationBar:const  ExpenseTrackerBottomNavigation(),
     body: SafeArea(
     child: ValueListenableBuilder(
      valueListenable: selectedIndexNotifier,
      builder:
      ( BuildContext context, 
      int updatedIndex, _) {
       return _pages[updatedIndex];
     },)
     ), 
     floatingActionButton: Padding(
       padding: const EdgeInsets.all(30.0),
       child: FloatingActionButton(onPressed: (){
        if(selectedIndexNotifier.value==0){
          print('add transactions');
        }else{
          print('add category');

          showCategoryAddPopup(context);
        //   final _sample =CategoryModel(
        //     id: DateTime.now().millisecondsSinceEpoch.toString(), 
        //     name: 'Shopping',
        //      type: CategoryType.expense
        //      );
        //   CategoryDB().insertCategory(_sample);
        }
        //print("its working");
       },
       child: const Icon(Icons.add),
       ),
     ),
    );
  }
}