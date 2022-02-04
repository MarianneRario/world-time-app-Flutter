import 'package:flutter/material.dart';
import 'package:world_time_app/pages/home.dart';


void main() {
  runApp(MaterialApp(
    /**
     * CREATE THREE SCREENS (PAGES)
     */
    //homescreen - place where to show the time
    home: Home(),
    //loading screen - screen to show while waiting for the data
    //choose_location screen - where user can update the location and different place to find out the time

  ));
}


