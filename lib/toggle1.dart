import 'package:flutter/material.dart';

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
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
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
      renderBorder: true,
      borderRadius: BorderRadius.circular(8),
      children: <Widget>[
        Text(text1, style: TextStyle(fontSize: 10)),
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
