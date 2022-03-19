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
            backgroundColor: Colors.white,
            bottom: TabBar(
              tabs: [
                Expanded(
                  flex: 1,
                  child: Tab(
                    icon: Row(
                      children: [
                        Icon(
                          Icons.share_location_sharp,
                          size: 20,
                          color: Colors.deepPurpleAccent,
                        ),
                        Text(
                          'LocalTravel',
                          style: TextStyle(color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Tab(
                    icon: Row(
                      children: [
                        Icon(
                          Icons.phone_in_talk,
                          size: 20,
                          color: Colors.deepPurpleAccent,
                        ),
                        Text(
                          'Mobile',
                          style: TextStyle(color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Tab(
                    icon: Row(
                      children: [
                        Icon(
                          Icons.file_copy_outlined,
                          size: 20,
                          color: Colors.deepPurpleAccent,
                        ),
                        Text(
                          'Miscellaneous',
                          style: TextStyle(color: Colors.black54, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            title: Center(
                child: const Text(
              'HumanWare',
              style: TextStyle(color: Colors.black),
            )),
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
