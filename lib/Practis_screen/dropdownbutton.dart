import 'package:flutter/material.dart';

List<String> name = ['raj', 'ronak', 'ram'];

class DropDownButton extends StatefulWidget {
  const DropDownButton({super.key});

  @override
  State<DropDownButton> createState() => _DropDownButtonState();
}

class _DropDownButtonState extends State<DropDownButton> {
  String namemenu = name.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(),

      body: Center(
        child: DropdownButton<String>(
          value: namemenu,
          icon: const Icon(Icons.arrow_downward),
          elevation: 0,
          style: const TextStyle(
            color: Colors.red, fontSize: 30,
          ),

          onChanged: (String? data){
            setState(() {
              namemenu = data!;
            });
          },
          items: name.map<DropdownMenuItem<String>>((String value){
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),

    );
  }
}
