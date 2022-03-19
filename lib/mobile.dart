import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/toggle/gf_toggle.dart';

const kPrimaryColor = Colors.deepPurpleAccent;
final kboxdecoration = BoxDecoration(
    shape: BoxShape.rectangle,
    borderRadius: BorderRadius.circular(12),
    border: Border.all(color: Color(0xFFC7C7C7)));
const ktextStyle = TextStyle(fontWeight: FontWeight.w600);
final kBorderColor = Colors.deepPurple.shade50;

class Mobile extends StatefulWidget {
  const Mobile({Key? key}) : super(key: key);

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: ListView(children: [
            Row(
              children: [
                Text(
                  'Category',
                  style: ktextStyle,
                ),
                SizedBox(
                  width: 104,
                ),
                Text(
                  'Service Provider',
                  style: ktextStyle,
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
                  Expanded(flex: 1, child: ToggleButtonn()),
                  SizedBox(
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
                        child: Row(
                          children: [
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Center(child: Text('Airtel')),
                              ),
                            ),
                            SizedBox(
                              width: 39,
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              size: 17,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Text(
                  'Are you working on Projects?',
                  style: ktextStyle,
                ),
                SizedBox(
                  width: 50,
                ),
                GFToggle(
                  onChanged: (val) {
                    //if (val == true) {}
                  },
                  value: true,
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
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 15, right: 120, top: 12, bottom: 11),
                child: Center(child: Text('HumanWare Phase2 UI/Ux')),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Text(
                  'Phone Number',
                  style: ktextStyle,
                ),
                SizedBox(
                  width: 70,
                ),
                Text(
                  'Bill Date',
                  style: ktextStyle,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,

                  child: Container(
                    height: 43,
                    decoration: kboxdecoration,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 5, top: 12, bottom: 11),
                      child: Center(child: Text('+91 9876543218')),
                    ),
                  ),

                  // child: Center(child: TextFieldWidget(text: '+91 923456778')),
                ),
                SizedBox(
                  width: 25,
                ),
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
                              size: 13,
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
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Bill No',
              style: ktextStyle,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 43,
              decoration: kboxdecoration,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 10, right: 5, top: 12, bottom: 11),
                child: Text('DF0261205'),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Claim Amount',
              style: ktextStyle,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 43,
              decoration: kboxdecoration,
              child: const Padding(
                padding:
                    EdgeInsets.only(left: 10, right: 5, top: 12, bottom: 11),
                child: Text('₹ 500'),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Monthly Limit',
              style: ktextStyle,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 43,
              decoration: kboxdecoration,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 10, right: 5, top: 12, bottom: 11),
                child: Text('₹ 500'),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Remark',
              style: ktextStyle,
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              maxLines: 4,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular((12)),
                  // border: Border.all(color: Color(0xFFC7C7C7)),
                ),
                hintText: 'I am going to meet the tasneem for sales discussion',
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Attachments',
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
                    Navigator.pop(context);
                  },
                  child: Text(
                    ' Update',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )),
            )
          ]),
        ),
      ),
    );
  }
}

class ToggleButtonn extends StatefulWidget {
  const ToggleButtonn({Key? key}) : super(key: key);

  @override
  State<ToggleButtonn> createState() => _ToggleButtonnState();
}

class _ToggleButtonnState extends State<ToggleButtonn> {
  List<bool> isSelected = [true, false];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 43,
      width: 135,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        //shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Color(0xFFC7C7C7)),
      ),
      child: Center(
        child: buildToggleButtons('LandLine', 'Mobile'),
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
      borderRadius: BorderRadius.circular(8),
      children: <Widget>[
        Text(text1,
            style: TextStyle(
              fontSize: 10,
            )),
        Text(text2, style: TextStyle(fontSize: 10)),
      ],
      onPressed: (int index) {
        setState(() {
          for (int i = 0; i < isSelected.length; i++) {
            isSelected[i] = i == index;
          }
          // isSelected[index] = !isSelected[index];
        });
      },
    );
  }
}
