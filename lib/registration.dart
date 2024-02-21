import 'package:flutter/material.dart';

class Reg extends StatefulWidget {
  const Reg({super.key});

  @override
  State<Reg> createState() => _RegState();
}

class _RegState extends State<Reg> {
  String? dropdownvalue = 'item1';

  var items = [
    "item1",
    "item2",
    "item3",
    "item5"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          DropdownButton(
            value: dropdownvalue,
            icon: Icon(Icons.keyboard_arrow_down),
            
            items: items.map((String items){
              return DropdownMenuItem(
                value: items,
                child: Text(items),
              );
            }).toList(),
             onChanged: (String? newValue) {
              
              setState(() {
                dropdownvalue = newValue;
              });

            
          },),
        ],
      ),
    );
  }
}