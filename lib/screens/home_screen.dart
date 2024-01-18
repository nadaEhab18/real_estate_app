import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:real_estate_app/models/item_model.dart';
import 'package:real_estate_app/widgests/search_field.dart';
import 'package:real_estate_app/widgests/select_category.dart';
import 'package:real_estate_app/widgests/suggestion_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// AppBar
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        toolbarHeight: 80.0,
        title: Row(
          children: [
            Icon(
              Icons.location_on,
              color: Colors.blue.shade600,
            ),
            Text(
              'Tokyo , Japan',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications, color: Colors.grey.shade600),
          ),
        ],
      ),

     /// Body
     backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              SearchField(),
              SelectCategory(),
              SizedBox(height: 20,),
              SuggestionList('Recommendation For you',Item.recommendation),
              SizedBox(height: 20,),
              SuggestionList('Nearby you', Item.nearby),
            ],
          ),
        ),
      ),

    /// BottomNavigationBar
    bottomNavigationBar: BottomNavigationBar(
      elevation: 0.0,
      backgroundColor: Colors.white,
      selectedItemColor: Colors.blue.shade600,
      unselectedItemColor: Colors.grey.shade600,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: 'Home',),
        BottomNavigationBarItem(icon: Icon(Icons.search_outlined),label: 'Search',),
        BottomNavigationBarItem(icon: Icon(Icons.favorite_border),label: 'Favourite',),
        BottomNavigationBarItem(icon: Icon(Icons.message_outlined),label: 'Message',),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile',),

      ],
    ),
    );
  }
}
