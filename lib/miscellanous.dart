import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/toggle/gf_toggle.dart';
import 'package:humanware/local_travel.dart';

const kPrimaryColor = Colors.deepPurpleAccent;
final kboxdecoration = BoxDecoration(
    shape: BoxShape.rectangle,
    borderRadius: BorderRadius.circular(12),
    border: Border.all(color: const Color(0xFFC7C7C7)));
const ktextStyle = TextStyle(fontWeight: FontWeight.w500, fontSize: 13);
const kBorderColor = Color(0xFFF5F3FA);

class Miscellaneous extends StatefulWidget {
  const Miscellaneous({Key? key}) : super(key: key);

  @override
  State<Miscellaneous> createState() => _MiscellaneousState();
}

class _MiscellaneousState extends State<Miscellaneous> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: ListView(
            children: [
              const Text(
                'Category',
                style: ktextStyle,
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
                      padding: EdgeInsets.all(12.0),
                      child: Text('BirthDay Party'),
                    ),
                    SizedBox(
                      width: 150,
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      size: 15,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const Text(
                    'Are you working on Projects?',
                    style: ktextStyle,
                  ),
                  const SizedBox(
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
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 43,
                width: 295,
                decoration: kboxdecoration,
                child: const Padding(
                  padding: EdgeInsets.only(right: 90, top: 10, bottom: 11),
                  child: Center(child: Text('HumanWare Phase2 UI/UX')),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: const [
                  Text(
                    'Bill No',
                    style: ktextStyle,
                  ),
                  SizedBox(
                    width: 120,
                  ),
                  Text(
                    'Date',
                    style: ktextStyle,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,

                    child: Container(
                      height: 43,
                      decoration: kboxdecoration,
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(0, 11, 22, 11),
                        child: Center(
                            child: Text(
                          'DF0261205',
                          style: TextStyle(),
                        )),
                      ),
                    ),

                    // child: Center(child: TextFieldWidget(text: '+91 923456778')),
                  ),
                  const SizedBox(
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
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Claim Amount',
                style: ktextStyle,
              ),
              const SizedBox(
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
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Remark',
                style: ktextStyle,
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                maxLines: 4,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular((12)),
                    // border: Border.all(color: Color(0xFFC7C7C7)),
                  ),
                  hintText:
                      'I am going to meet the tasneem for sales discussion',
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Attachments',
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
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LocalTravel()));
                      // Navigator.pop(context);
                    },
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
    );
  }
}
