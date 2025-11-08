import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  void getData() async {
    // simulate network request for a username
    String username = await Future.delayed(Duration(seconds: 3), () {
      // if (kDebugMode) {
      //   print('yoshi');
      // }
      return "yoshi";
    });

    // simulate network request to get bio of the username
    String bio = await Future.delayed(Duration(seconds: 2), () {
      // if (kDebugMode) {
      //   print('vegan, musician & egg collector');
      // }
      return "vegan, musician & egg collector";
    });

    if (kDebugMode) {
      print('$username - $bio');
    }
  }

  // int counter = 0;

  @override
  void initState() {
    super.initState();
    // if (kDebugMode) {
    //   print('initState function ran');
    // }

    getData();
    if (kDebugMode) {
      print('hey there!');
    }
  }

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
    );
  }
}
