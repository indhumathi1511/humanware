import 'package:flutter/material.dart';
import 'package:humanware/local_travel.dart';
import 'package:humanware/miscellanous.dart';
import 'package:humanware/mobile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.deepPurpleAccent,
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.share_location_sharp,
                  ),
                  text: 'LocalTravel',
                ),
                Tab(
                  icon: Icon(Icons.phone_in_talk),
                  text: 'Mobile',
                ),
                Tab(
                  icon: Icon(Icons.file_copy_outlined),
                  text: 'Miscellaneous',
                ),
              ],
            ),
            title: Center(child: const Text('HumanWare')),
          ),
          body: const TabBarView(
            children: [
              LocalTravel(),
              Mobile(),
              Miscellaneous(),
            ],
          ),
        ),
      ),
    );
  }
}
