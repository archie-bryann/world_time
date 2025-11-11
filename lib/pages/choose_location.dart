import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  List<WorldTime> locations = [
    WorldTime(url: 'Europe/London', location: 'London', flag: 'uk.png'),
    WorldTime(url: 'Europe/Berlin', location: 'Athens', flag: 'greece.png'),
    WorldTime(url: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png'),
    WorldTime(url: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png'),
    WorldTime(url: 'America/Chicago', location: 'Chicago', flag: 'usa.png'),
    WorldTime(url: 'America/New_York', location: 'New York', flag: 'usa.png'),
    WorldTime(url: 'Asia/Seoul', location: 'Seoul', flag: 'south_korea.png'),
    WorldTime(url: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.png'),
  ];

  // void getData() async {
  //   // simulate network request for a username
  //   String username = await Future.delayed(Duration(seconds: 3), () {
  //     // if (kDebugMode) {
  //     //   print('yoshi');
  //     // }
  //     return "yoshi";
  //   });
  //
  //   // simulate network request to get bio of the username
  //   String bio = await Future.delayed(Duration(seconds: 2), () {
  //     // if (kDebugMode) {
  //     //   print('vegan, musician & egg collector');
  //     // }
  //     return "vegan, musician & egg collector";
  //   });
  //
  //   if (kDebugMode) {
  //     print('$username - $bio');
  //   }
  // }
  //
  // // int counter = 0;
  //
  // @override
  // void initState() {
  //   super.initState();
  //   // if (kDebugMode) {
  //   //   print('initState function ran');
  //   // }
  //
  //   getData();
  //   if (kDebugMode) {
  //     print('hey there!');
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    // if (kDebugMode) {
    //   print('build function ran');
    // }
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        foregroundColor: Colors.white,
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
      // body: ElevatedButton(
      //   onPressed: () {
      //     setState(() {
      //       // counter++;
      //     });
      //   },
      //   child: Text('counter is $counter')
      // )
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
            child: Card(
              child: ListTile(
                onTap: () {
                  if(kDebugMode) {
                    print(locations[index].location);
                  }
                },
                title: Text(locations[index].location),
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/${locations[index].flag}'),
                )
              )
            ),
          );
        }
      )
    );
  }
}
