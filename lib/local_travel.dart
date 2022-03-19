import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/toggle/gf_toggle.dart';

const kPrimaryColor = Colors.deepPurpleAccent;
final kboxdecoration = BoxDecoration(
    shape: BoxShape.rectangle,
    borderRadius: BorderRadius.circular(12),
    border: Border.all(color: const Color(0xFFC7C7C7)));
const ktextStyle = TextStyle(fontWeight: FontWeight.w500);
const kBorderColor = Color(0xFFF5F3FA);

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
                      width: 90,
                    ),
                    Text(
                      'Mode',
                      style: ktextStyle,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 7,
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      const ToggleButton(),
                      const SizedBox(
                        width: 10,
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
                                    child: const Icon(
                                      Icons.directions_car,
                                      color: kPrimaryColor,
                                      size: 15,
                                    ),
                                  ),
                                  const Center(
                                    child: Padding(
                                      padding: EdgeInsets.all(6.0),
                                      child: Center(child: Text('Car')),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 30,
                                  ),
                                  const Icon(
                                    Icons.keyboard_arrow_down,
                                    size: 17,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'From Place',
                  style: ktextStyle,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
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
                          child: const Icon(
                            Icons.my_location,
                            color: kPrimaryColor,
                            size: 13,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Center(
                          child: Center(child: Text('Bangalore')),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'To Place',
                  style: ktextStyle,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
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
                          child: const Icon(
                            Icons.share_location_outlined,
                            color: kPrimaryColor,
                            size: 13,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Center(
                          child: Center(child: Text('Mumbai')),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Image.network(
                    'https://image.shutterstock.com/image-vector/map-city-600w-671959120.jpg'),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: const [
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
                const SizedBox(
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
                          child: const Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Text('250 km'),
                          )),
                    ),
                    const SizedBox(width: 26),
                    Expanded(
                      flex: 1,
                      child: Container(
                          height: 43,
                          width: 139,
                          decoration: kboxdecoration,
                          child: const Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Text('₹ 500'),
                          )),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: const [
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
                const SizedBox(
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
                                child: const Icon(
                                  Icons.calendar_today_outlined,
                                  size: 18,
                                  color: kPrimaryColor,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text('25 Jan \'22'),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 26),
                    Expanded(
                        flex: 1,
                        child: Container(
                          height: 43,
                          width: 139,
                          decoration: kboxdecoration,
                          child: const Center(child: Text('DF026102536587')),
                        )),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    const Text(
                      'Are you working on projects?',
                      style: ktextStyle,
                    ),
                    const SizedBox(
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
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 43,
                  width: 295,
                  decoration: kboxdecoration,
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('HumanWare Phase2 UI/Ux'),
                      ),
                      SizedBox(
                        width: 70,
                      ),
                      Icon(Icons.keyboard_arrow_down),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                const Text(
                  'Purpose of Visit',
                  style: ktextStyle,
                ),
                const SizedBox(height: 10),
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
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Purpose of Visit',
                  style: ktextStyle,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DottedBorder(
                        borderType: BorderType.RRect,
                        dashPattern: const [4, 3],
                        color: Colors.black,
                        strokeWidth: 1,
                        radius: const Radius.circular(12),
                        // child: FlutterLogo(size: 148),

                        child: SizedBox(
                          height: 81,
                          width: 103,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
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
                    const SizedBox(
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
                        minimumSize: const Size(180, 47),
                        // Background color
                      ),
                      onPressed: () {},
                      child: const Text(
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

class ToggleButton extends StatefulWidget {
  const ToggleButton({Key? key}) : super(key: key);

  @override
  State<ToggleButton> createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  List<bool> isSelected = [true, false];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 43,
      width: 135,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFC7C7C7)),
      ),
      child: Center(
        child: buildToggleButtons('Self', 'Hired'),
      ),
    );
  }

  ToggleButtons buildToggleButtons(String text1, String text2) {
    return ToggleButtons(
      isSelected: isSelected,
      selectedColor: Colors.deepPurpleAccent,
      color: Colors.black,
      fillColor: Colors.deepPurple[50],
      renderBorder: false,
      borderRadius: BorderRadius.circular(7),
      children: <Widget>[
        Text(text1, style: const TextStyle(fontSize: 11)),
        Text(text2, style: const TextStyle(fontSize: 11)),
      ],
      onPressed: (int index) {
        setState(() {
          for (int i = 0; i < isSelected.length; i++) {
            isSelected[i] = i == index;
          }
          //isSelected[index] = !isSelected[index];
        });
      },
    );
  }
}
