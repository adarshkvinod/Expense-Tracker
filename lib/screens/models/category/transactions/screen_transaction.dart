import 'package:flutter/material.dart';

class ScreenTransaction extends StatelessWidget {
  const ScreenTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView.separated(
        itemBuilder:(ctx,index){
          return const Card(
            elevation: 9,
            color: Color.fromARGB(255, 0, 73, 91),
            child: ListTile(
              textColor: Colors.white,
              leading: Text('01 JUNE'),
              title: Text('1500/-'),
              subtitle: Text('Shopping'),
            ),
          );
        }, 
      separatorBuilder: (ctx,index){
        return const SizedBox(height: 10,);
      },
       itemCount: 15,),
    );
  }
}