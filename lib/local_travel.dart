import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/toggle/gf_toggle.dart';

import 'constants.dart';
import 'mobile.dart';
import 'toggle.dart';

class LocalTravel extends StatefulWidget {
  const LocalTravel({Key? key}) : super(key: key);

  @override
  State<LocalTravel> createState() => _LocalTravelState();
}

class _LocalTravelState extends State<LocalTravel> {
//TabController tabController=TabController(length: 3, vsync: this);

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
                  children: const [
                    Text(
                      'Expense type',
                      style: ktextStyle,
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    Text(
                      'Mode',
                      style: ktextStyle,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      const ToggleButton(),
                      const SizedBox(
                        width: 26,
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            height: 43,
                            width: 139,
                            decoration: kboxdecoration,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Container(
                                    height: 24,
                                    width: 24,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7),
                                      color: kBorderColor,
                                    ),
                                    child: Icon(
                                      Icons.calendar_month,
                                      color: kPrimaryColor,
                                      size: 11,
                                    ),
                                  ),
                                  Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: Center(child: Text('Car')),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(Icons.keyboard_arrow_down),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'From Place',
                  style: ktextStyle,
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 43,
                    width: 139,
                    decoration: kboxdecoration,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            height: 24,
                            width: 24,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: kBorderColor,
                            ),
                            child: Icon(
                              Icons.my_location,
                              color: kPrimaryColor,
                              size: 11,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Center(
                            child: Center(child: Text('Bangalore')),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'To Place',
                  style: ktextStyle,
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 43,
                    width: 139,
                    decoration: kboxdecoration,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            height: 24,
                            width: 24,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: kBorderColor,
                            ),
                            child: Icon(
                              Icons.share_location_outlined,
                              color: kPrimaryColor,
                              size: 11,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Center(
                            child: Center(child: Text('Mumbai')),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
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
                      style: ktextStyle,
                    ),
                    SizedBox(
                      width: 103,
                    ),
                    Text(
                      'Claim Amount',
                      style: ktextStyle,
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
                            child: Text('₹ 500'),
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
                      style: ktextStyle,
                    ),
                    SizedBox(
                      width: 103,
                    ),
                    Text(
                      'Ticket ID',
                      style: ktextStyle,
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
                        width: 295,
                        decoration: kboxdecoration,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Container(
                                height: 24,
                                width: 24,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: kBorderColor,
                                ),
                                child: Icon(
                                  Icons.calendar_month,
                                  size: 11,
                                  color: kPrimaryColor,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text('25 Jan \'22'),
                            ],
                          ),
                        ),
                      ),
                      // child: BoxContainer(
                      //   text: '25 Jan \'22',
                      //   icon: Icons.calendar_month,
                      // ),
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
                      style: ktextStyle,
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
                  decoration: kboxdecoration,
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
                  style: ktextStyle,
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
                  style: ktextStyle,
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
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Mobile()));
                      },
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
//
// class ToggleButton extends StatefulWidget {
//   const ToggleButton({Key? key}) : super(key: key);
//
//   @override
//   State<ToggleButton> createState() => _ToggleButtonState();
// }
//
// class _ToggleButtonState extends State<ToggleButton> {
//   List<bool> isSelected = [true, false];
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 43,
//       width: 135,
//       padding: EdgeInsets.all(10),
//       decoration: BoxDecoration(
//         shape: BoxShape.rectangle,
//         borderRadius: BorderRadius.circular(12),
//         border: Border.all(color: Color(0xFFC7C7C7)),
//       ),
//       child: Center(
//         child: buildToggleButtons('Self', 'Hired'),
//       ),
//     );
//   }
//
//   ToggleButtons buildToggleButtons(String text1, String text2) {
//     return ToggleButtons(
//       isSelected: isSelected,
//       selectedColor: Colors.deepPurpleAccent,
//       color: Colors.black,
//       fillColor: Colors.deepPurple[50],
//       renderBorder: true,
//       borderRadius: BorderRadius.circular(5),
//       children: <Widget>[
//         Text(text1, style: TextStyle(fontSize: 10)),
//         Text(text2, style: TextStyle(fontSize: 10)),
//       ],
//       onPressed: (int index) {
//         setState(() {
//           for (int i = 0; i < isSelected.length; i++) {
//             isSelected[i] = i == index;
//           }
//           //isSelected[index] = !isSelected[index];
//         });
//       },
//     );
//   }
// }
