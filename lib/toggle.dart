import 'package:flutter/material.dart';

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
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Color(0xFFC7C7C7)),
      ),
      child: Center(
        child: ToggleButtons(
          isSelected: isSelected,
          selectedColor: Colors.deepPurpleAccent,
          color: Colors.black,
          fillColor: Colors.deepPurple[50],
          renderBorder: true,
          borderRadius: BorderRadius.circular(5),
          children: <Widget>[
            Text('Self', style: TextStyle(fontSize: 10)),
            Text('Hired', style: TextStyle(fontSize: 10)),
          ],
          onPressed: (int index) {
            setState(() {
              for (int i = 0; i < isSelected.length; i++) {
                isSelected[i] = i == index;
              }
              //isSelected[index] = !isSelected[index];
            });
          },
        ),
      ),
    );
  }
}
