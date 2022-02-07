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
    return Scaffold(
      //SafeArea widget brings the upper most text to an area where it is not tampered by the built in android app bar
      body: SafeArea(
          child: Column(
            children: <Widget>[
            //updated button
            //flat button for delete icon
            TextButton.icon(
              //should linked us to another screen if pressed
              onPressed: () {
                //use Navigator to go to another route
                //it is "Named" because we are gonna supply a named route
                //it is "push" because we're gonna push another screen on top of the initial screen, the previous screen is not deleted, it will just be tampered by the clicked route screen
                Navigator.pushNamed(context, "/location");
              },
              icon: const Icon(Icons.edit_location),
              label: const Text("Edit Location"),
              style: TextButton.styleFrom(primary: Colors.black),
          )
        ],
      )),
    );
  }
}
