import 'package:flutter/material.dart'; //material library
import 'package:world_time_app/services/world_time.dart'; //import WorldTime class

class Loading extends StatefulWidget {
  Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String time = "loading...";

  //function that would create an instance of WorldTime class (and it wont return anything)
  void setupWorldTime() async {
    WorldTime instance = WorldTime(
        location: "Manila", flag: "philippines.png", url: "Asia/Manila");
    await instance.getTime();
    print(instance.time);
    //update the time property
    setState(() {
      time = instance.time!;
    });
  }

  //initState - will only load up once in the initial screen pop up
  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Text(time),
      ),
    );
  }
}
