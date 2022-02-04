// ignore_for_file: slash_for_doc_comments

import 'package:flutter/material.dart'; //material library

/**
 * CREATE A STATEFUL WIDGET
 */

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    //return a widget tree
    return const Scaffold(
      //SafeArea widget brings the upper most text to an area where it is not tampered by the built in android app bar
      body: SafeArea(child: Text("Home Screen")),
    );
  }
}