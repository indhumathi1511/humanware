import 'package:flutter/material.dart';

class ToggleButtons1 extends StatefulWidget {
  @override
  _ToggleButtons1State createState() => _ToggleButtons1State();
}

class _ToggleButtons1State extends State<ToggleButtons1> {
  List<bool> isSelected = [true, false];

  @override
  Widget build(BuildContext context) => ToggleButtons(
        isSelected: isSelected,
        selectedColor: Colors.deepPurpleAccent,
        color: Colors.black,
        fillColor: Colors.deepPurple[50],
        renderBorder: true,
        borderRadius: BorderRadius.circular(15),
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Self', style: TextStyle(fontSize: 10)),
          ),
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
      );
}
