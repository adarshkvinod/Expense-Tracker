import 'package:flutter/material.dart';
class ScreenTransaction extends StatelessWidget {
  const ScreenTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView.separated(itemBuilder: (ctx, index){
          return const Card(
            color:  Color.fromARGB(255, 0, 73, 91),
            child: ListTile(
              textColor: Colors.white,
              title: Text('1500/-'),
              leading: Text('01 JUNE'),
              subtitle: Text('Shopping'),
            ),
          );
        },
         separatorBuilder: (ctx,index){
          return const SizedBox(height: 10,);
         },
          itemCount: 15),
      ),
    ));
  }
}