import 'package:http/http.dart'; //http library
import 'dart:convert'; //allows us to convert json string into data

class WorldTime {
  String location; //create a location property (UI)
  String? time; //create a time property (UI)
  String flag; //url to an asset flag icon
  String url; //url for api endpoint

  //create a constructor
  WorldTime({required this.location, required this.flag, required this.url});

  //async getTime function
  Future<void> getTime() async {
    //use 'http' package to make a network request to get data
    //uri = https://worldtimeapi.org/api/timezone/Asia/Manila
    Response response = await get(Uri.http(
        "worldtimeapi.org", "/api/timezone/$url")); //pass the url endpoint
    //allows us to decode json string and format
    Map data = jsonDecode(response.body);

    //get properties from data
    //get the datetime property
    String datetime = data["datetime"];
    //get the offset property
    String offset = data["utc_offset"];

    //create a datetime object
    DateTime now = DateTime.parse(datetime.substring(0, 26));

    //override the declared time variable at the top
    time = now.toString();

  }
}

//create an instance of this class
//[type][variable_name] = [value]
// WorldTime instance =
//     WorldTime(location: "Manila", flag: "philippines.png", url: "Asia/Manila");

