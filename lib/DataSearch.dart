import 'package:flutter/material.dart';

class DataSearch extends SearchDelegate<String>{ 

  final Songs = [
    "Test 1",
    "Test 2",
    "Test 3",
    "Test 4",
    "Test 5",
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [IconButton(
      onPressed: () {
        query = "";
      }, 
      icon: Icon(Icons.clear))];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pop(context);
      }, 
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress :transitionAnimation
        ),);
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Card(
        color: Colors.blue,
        child: Center(
          child: Text("Test"),
        ),
      ),
    
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty?Songs:Songs.where((element) => element.startsWith(query)).toList();

    return ListView.builder(itemBuilder: (context, index)=>ListTile(
      onTap: (){
        showResults(context);
      },
      leading: Icon(Icons.music_note),
      title: RichText(
        text: TextSpan(
          text: suggestionList[index].substring(0, query.length),
          style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold),
            children :[
              TextSpan(
                text: suggestionList[index].substring(query.length),
                style: TextStyle(color:Colors.grey))
            ]
              ),
        ),
    ),
    itemCount: suggestionList.length,);
  }

}