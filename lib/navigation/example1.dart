import 'package:flutter/material.dart';

class Example1 extends StatefulWidget {
  const Example1({super.key});

  @override
  State<Example1> createState() => _Example1State();
}

class _Example1State extends State<Example1> {
  int _currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _switchIndex(),
      bottomNavigationBar:BottomNavigationBar(
        selectedFontSize: 18,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
        onTap: (index)
        {
       setState(() {
         _currentIndex=index;
       });
        },
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(icon:Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon:Icon(Icons.linked_camera),label: "Camera"),
          BottomNavigationBarItem(icon:Icon(Icons.favorite),label: "Favorite"),
          BottomNavigationBarItem(icon:Icon(Icons.person),label: "Profile"),
        ],
      ),
    );
  }
  _switchIndex()
  {
    switch(_currentIndex)
    {
      case 0:{
        return const Center(
          child: Text("Page One"),
        );
      }
      case 1:{
        return const Center(
          child: Text("Page Two"),
        );
      }
      case 2:{
        return const Center(
          child: Text("Page Three"),
        );
      }
      case 3:{
        return const Center(
          child: Text("Page Four"),
        );
      }
    }
  }
}
