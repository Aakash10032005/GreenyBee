import 'package:flutter/material.dart';
import 'package:greenybeenew/models/category_selection.dart';
import 'package:greenybeenew/models/search_bar.dart';
import '../constants.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: homescreenbackgroundcolour,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "  Welcome Back User",
            style: TextStyle(
              color: headercolour,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: searchBar(),
          ),
          Expanded(child: CategorySelection()),
        ],
      ),
    );
  }
}