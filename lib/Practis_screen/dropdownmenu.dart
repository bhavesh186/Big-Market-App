import 'package:flutter/material.dart';

List<String> name = ['raj', 'ronak', 'ram'];

class DropDownMenu extends StatefulWidget {

  DropDownMenu({super.key});

  @override
  State<DropDownMenu> createState() => _DropDownMenuState();
}

class _DropDownMenuState extends State<DropDownMenu> {
  String namemenu = name.first;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(),

      body: Center(
          child: DropdownMenu<String>(initialSelection: name.first,
            dropdownMenuEntries: name.map<DropdownMenuEntry<String>>((String value){
              return DropdownMenuEntry<String>(
                value: value,
                label: value,
              );
            }).toList(),
          ),
      ),

    );
  }
}
