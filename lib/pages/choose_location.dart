import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  void getData() async {
    String username = await Future.delayed(Duration(seconds: 3), () {
      return "Hello";
    });

    String bio = await Future.delayed(Duration(seconds: 2), () {
      return "Let's Start";
    });

    print('$username - $bio');
  }

  @override
  void initState() {
    super.initState();
    getData();
    print("Hey There");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        title: Text("Choose a Location"),
        centerTitle: true,
        elevation: 0,
      ),
    );
  }
}
