import 'package:expense_tracker/screens/models/category/category_model.dart';
import 'package:flutter/material.dart';

ValueNotifier<CategoryType>selectedCategoryNotifier = ValueNotifier(CategoryType.income);

Future<void> showCategoryAddPopup(BuildContext context)async{
  showDialog(context: context,
   builder: (ctx){
    return  SimpleDialog(
      backgroundColor: Colors.white,
      title: const Text('Add Category'),
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          cursorColor: Colors.white,
          decoration: const InputDecoration(
            hintText: 'Category Name',
            border: OutlineInputBorder(
              
              borderSide: BorderSide(color: Colors.white,width: 10)
            )
          ),
        ),
      ),
      const Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(children: [
          RadioButton(title: "Income",
           type: CategoryType.income),
          RadioButton(title: 'Expense', 
          type: CategoryType.expense)
        ],),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.pink)),
          onPressed: (){}, child: const Text('Add',style: TextStyle(color: Colors.white),)),
      )
    ],
    );
   });
   
}

class RadioButton extends StatelessWidget {
  final String title;
  final CategoryType type;
 

  const RadioButton({super.key,
   required this.title,
   required this.type,
  });

  

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
       ValueListenableBuilder(
        valueListenable: selectedCategoryNotifier, 
        builder: (
          BuildContext ctx,
           CategoryType newCategory,
            Widget? _){
         return Radio<CategoryType>(value:type, 
        groupValue: newCategory,
         onChanged: (value) {
          if(value==null){
            return;
          }
          selectedCategoryNotifier.value=value;
          selectedCategoryNotifier.notifyListeners();
         }
         );
       }),
        Text(title),
      ],
    );
  }
}