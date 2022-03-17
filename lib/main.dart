import 'package:flutter/material.dart';
import 'package:getwidget/components/toggle/gf_toggle.dart';
import 'package:humanware/toggle_button.dart';

const kPrimaryColor = Colors.deepPurpleAccent;
void main() {
  runApp(const LocalTravel());
}

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
    return MaterialApp(
        home: Scaffold(
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
                      width: 100,
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
                Row(
                  children: [
                    ToggleButtons1(),
                    SizedBox(
                      width: 70,
                    ),
                    // DropdownButton(items: items, onChanged: onChanged)

                    DropdownButton<String>(
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
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'From Place',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: 'Bangalore',
                    prefixIcon: Icon(
                      Icons.adjust_outlined,
                      color: kPrimaryColor,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'To Place',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: 'Mumbai',
                    prefixIcon: Icon(
                      Icons.adjust_rounded,
                      color: kPrimaryColor,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Image.network(
                    'https://image.shutterstock.com/image-vector/map-city-600w-671959120.jpg'),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Text(
                      'Kilometer',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 100,
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
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular((15)),
                          ),
                          hintText: '250 km',
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      flex: 1,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular((15)),
                          ),
                          hintText: '500',
                          prefixIcon: Icon(Icons.currency_rupee),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Text(
                      'Travel Date',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 100,
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
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular((15)),
                          ),
                          hintText: '25,Jan \'22',
                          prefixIcon: IconButton(
                            icon: Icon(Icons.date_range),
                            onPressed: () {},
                          ),
                          // Icon(Icons.calendar_month)
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      flex: 1,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular((15)),
                          ),
                          hintText: 'DF026120536587',
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Text(
                      'Are you working on projects?',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 70,
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
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular((15)),
                    ),
                    hintText: 'Humanware Phase 2 UI/UX',
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  'Purpose of Visit',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular((15)),
                    ),
                    hintText:
                        'I am going to meet the tasneem for sales discussion',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
