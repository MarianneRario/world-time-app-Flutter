import 'package:flutter/material.dart';
import 'package:world_time_app/pages/choose_location.dart';
import 'package:world_time_app/pages/home.dart';
import 'package:world_time_app/pages/loading.dart';


void main() {
  runApp(MaterialApp(
    /**
     * CREATE THREE SCREENS (PAGES)
     */
    //homescreen - place where to show the time
    // home: Home(), home property is conflicting with the root route, so to resolve, we will use a property called "initialRoute"
    //property which dictates which route to load up first when we open the app
    //by default, it is the LoadingScreen() since it is declared in the root route,
    //but we can override it by using "initialRoute" property
    initialRoute: "/",

    //ROUTES (using map logic)
    routes: {
      //root route, the Loading page should be flashed first because you need to load all the data before displaying it to the screen
      //loading screen - screen to show while waiting for the data
      "/": (context) => Loading(), 
      //homescreen - place where to show the time
      "/home": (context) => Home(),
      //choose_location screen - where user can update the location and different place to find out the time
      "/location": (context) => ChooseLocation()

    },
    
    
  ));
}


