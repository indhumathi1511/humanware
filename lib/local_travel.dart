import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/toggle/gf_toggle.dart';

import 'constants.dart';
import 'toggle.dart';

class LocalTravel extends StatefulWidget {
  const LocalTravel({Key? key}) : super(key: key);

  @override
  State<LocalTravel> createState() => _LocalTravelState();
}

class _LocalTravelState extends State<LocalTravel> {
//TabController tabController=TabController(length: 3, vsync: this);
  var selectedValue = 'Car';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Flexible(
            child: ListView(
              children: [
                // TabBar(controller: tabController,
                //     tabs: [
                //       icon:Text('Chat'),
                //     ] ),
                Row(
                  children: [
                    Text(
                      'Expense type',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    Text(
                      'Mode',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      ToggleButton(),
                      SizedBox(
                        width: 26,
                      ),
                      // DropdownButton(items: items, onChanged: onChanged)

                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 43,
                          width: 139,
                          decoration: BoxDecoration(
                              border: Border.all(color: Color(0xFFC7C7C7)),
                              borderRadius: BorderRadius.circular(8)),
                          child: Center(
                            child: DropdownButton<String>(
                              icon: Icon(Icons.arrow_drop_down),
                              value: selectedValue,
                              items: <String>['Bike', 'Train', 'Car', 'Bus']
                                  .map((String value) {
                                return DropdownMenuItem<String>(
                                  child: Text(value),
                                  value: value,
                                );
                              }).toList(),
                              onChanged: (String? value) {
                                setState(() {
                                  //  value = selectedValue;
                                  selectedValue = value!;
                                });
                              },
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'From Place',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                BoxContainer(
                  text: 'Bangalore',
                  icon: Icons.my_location,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'To Place',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                BoxContainer(icon: Icons.location_on_outlined, text: 'Mumbai'),
                SizedBox(
                  height: 15,
                ),
                Image.network(
                    'https://image.shutterstock.com/image-vector/map-city-600w-671959120.jpg'),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text(
                      'Kilometer',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 103,
                    ),
                    Text(
                      'Claim Amount',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                          height: 43,
                          width: 139,
                          decoration: kboxdecoration,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text('250 km'),
                          )),
                    ),
                    SizedBox(width: 26),
                    Expanded(
                      flex: 1,
                      child: Container(
                          height: 43,
                          width: 139,
                          decoration: kboxdecoration,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text('Rs:500'),
                          )),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text(
                      'Travel Date',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 103,
                    ),
                    Text(
                      'Ticket ID',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      flex: 1,
                      child: BoxContainer(
                        text: '25 Jan \'22',
                        icon: Icons.calendar_month,
                      ),
                    ),
                    SizedBox(width: 26),
                    Expanded(
                        flex: 1,
                        child: Container(
                          height: 43,
                          width: 139,
                          decoration: kboxdecoration,
                          child: Center(child: Text('DF026102536587')),
                        )
                        // child: BoxContainer(
                        //
                        // ),
                        ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text(
                      'Are you working on projects?',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    GFToggle(
                      onChanged: (val) {
                        if (val == true) {}
                      },
                      value: false,
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 43,
                  width: 295,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Color(0xFFC7C7C7))),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('HumanWare Phase2 UI/Ux'),
                      ),
                      SizedBox(
                        width: 70,
                      ),
                      Icon(Icons.keyboard_arrow_down),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  'Purpose of Visit',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                TextField(
                  maxLines: 4,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular((12)),
                    ),
                    hintText:
                        'I am going to meet the tasneem for sales discussion',
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Purpose of Visit',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DottedBorder(
                        borderType: BorderType.RRect,
                        dashPattern: [4, 3],
                        color: Colors.black,
                        strokeWidth: 1,
                        radius: Radius.circular(12),
                        // child: FlutterLogo(size: 148),

                        child: Container(
                          height: 81,
                          width: 103,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.upload_file,
                                color: kPrimaryColor,
                                size: 30,
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text('Upload File'),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    // Expanded(
                    //   flex: 1,
                    //   child: Container(
                    //     padding: EdgeInsets.all(10),
                    //     decoration: BoxDecoration(
                    //       color: Colors.deepPurple[50],
                    //       shape: BoxShape.rectangle,
                    //       borderRadius: BorderRadius.circular(12),
                    //       border: Border.all(color: Color(0xFFC7C7C7)),
                    //     ),
                    //     height: 81,
                    //     width: 103,
                    //     child: Column(
                    //       children: [
                    //         Icon(
                    //           Icons.file_copy_outlined,
                    //           color: kPrimaryColor,
                    //           size: 20,
                    //         ),
                    //         SizedBox(
                    //           height: 12,
                    //         ),
                    //         Text('data'),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: TextButton(
                      style: ElevatedButton.styleFrom(
                        primary: kPrimaryColor,
                        elevation: 10,
                        shadowColor: Colors.deepPurple[500],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        minimumSize: Size(180, 47),
                        // Background color
                      ),
                      onPressed: () {},
                      child: Text(
                        ' + Add',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BoxContainer extends StatelessWidget {
  BoxContainer({required this.text, this.icon});
  IconData? icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 43,
      width: 295,
      decoration: kboxdecoration,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              icon,
              color: kPrimaryColor,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Text(text),
        ],
      ),
    );
  }
}
