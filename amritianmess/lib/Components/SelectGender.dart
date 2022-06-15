// //Creating a Statefulwidgit for the dyanamic page 
//import 'package:amritamess/constants.dart';
import 'package:flutter/material.dart';

class Dropdown extends StatefulWidget {
  const Dropdown({Key? key}) : super(key: key);

  @override
  State <Dropdown> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<Dropdown> {
   var dropdownValue = 'Vaikundam';

  
  @override
  Widget build(BuildContext context) {
    return  DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
      underline: Container(
        height: 2,
        color: const Color.fromARGB(255, 241, 240, 244),
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: <String>['Vaikundam', 'Parasara', 'Pahalada', 'Girls Hostel']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }

}