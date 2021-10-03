import 'package:flutter/material.dart';
import 'package:uts_project/screen/s_browse.dart';
import 'package:uts_project/screen/s_library.dart';
import 'package:uts_project/screen/s_main.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'DataSearch.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex=0;
  PageController pageController = PageController();

  void onTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KMMI'),
        actions: <Widget>[
          IconButton(onPressed:() {
            showSearch(context: context, delegate: DataSearch());
          }, icon: Icon(Icons.search))
        ],),
      body: PageView(
        controller: pageController,
        children: [
          MainScreen(),
          BrowseScreen(),
          LibraryScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: const<BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        BottomNavigationBarItem(icon: Icon(Icons.my_library_music), label: 'Library'),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.blue,
      // showUnselectedLabels: false,
      // showSelectedLabels: false,
      onTap: onTapped
      ),
    );
  }
}