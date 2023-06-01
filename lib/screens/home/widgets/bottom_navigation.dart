import 'package:expense_tracker/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class ExpenseTrackerBottomNavigation extends StatelessWidget {
  const ExpenseTrackerBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ScreenHome.selectedIndexNotifier,
      builder:(BuildContext ctx, int updatedIndex, Widget? _){
        return BottomNavigationBar(
          selectedItemColor: Colors.pink,
          currentIndex: updatedIndex,
        onTap: (newIndex){
          ScreenHome.selectedIndexNotifier.value=newIndex; 
        } ,
        items: const [
          BottomNavigationBarItem(
            icon:Icon(Icons.home_filled) ,
            label: 'Home',
            
            ),
            BottomNavigationBarItem(icon: Icon(Icons.category),
            label: 'Category',
            )
            ]);
      } ,
    
    );
  }
}