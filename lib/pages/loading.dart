import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  String time = 'loading...';

  void setupWorldTime() async {
    WorldTime instance = WorldTime(location: "Berlin", flag: "germany.png", url: "Europe/Berlin");
    await instance.getTime();
    if (kDebugMode) {
      print(instance.time);
      setState(() {
        time = instance.time;
      });
    }
  }

  // void getData() async {
  //   Response response = await get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
  //   Map data = jsonDecode(response.body);
  //   if (kDebugMode) {
  //     print(data);
  //     print(data['title']);
  //   }
  // }
  
  // void getTime() async {
  //   Response response = await get(
  //     Uri.parse('https://worldtimeapi.org/api/timezone/Europe/London')
  //   );
  //   Map data = jsonDecode(response.body);
  //   if (kDebugMode) {
  //     print(data);
  //   }
  //
  //   // get properties from data
  //   String datetime = data['datetime'];
  //   String offset = data['utc_offset'].substring(1, 3);
  //   // if(kDebugMode) {
  //   //   print(datetime);
  //   //   print(offset);
  //   // }
  //
  //   // create DateTime object
  //   DateTime now = DateTime.parse(datetime);
  //   now = now.add(Duration(hours: int.parse(offset)));
  //   if(kDebugMode) {
  //     print(now);
  //   }
  // }

  @override
  void initState() {
    super.initState();
    // getData();
    // getTime();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50.0),
        child: Text(time),
      ),
    );
  }
}
