import 'package:chat/screens/home_screen/components/categorySelector.dart';
import 'package:chat/screens/home_screen/components/contacts_view.dart';
import 'package:chat/screens/home_screen/components/favorites_contacts.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String ROUTE_ID = 'home_screen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Chat '),
        automaticallyImplyLeading: false,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Icon(Icons.search),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.settings)
              ],
            ),
          ),
        ],
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        children: [
          CategorySelector(),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).accentColor,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50), topRight: Radius.circular(50)),
            ),
            child: Column(
              children: [FavoritesContact(), ContactsView()],
            ),
          ))
        ],
      ),
    );
  }
}
