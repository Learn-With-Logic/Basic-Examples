import 'package:flutter/material.dart';

class HomeScreen_Dropdown extends StatefulWidget {
  const HomeScreen_Dropdown({Key? key}) : super(key: key);

  @override
  State<HomeScreen_Dropdown> createState() => _HomeScreen_DropdownState();
}

class _HomeScreen_DropdownState extends State<HomeScreen_Dropdown> {
  Map<String,dynamic>? selecteditem;


  List<Map<String,dynamic>> items = [{
    'name':'Red',
    'color':Colors.red,
  },

    {
      'name':'Green',
      'color':Colors.green,
    },

    {
      'name':'Blue',
      'color':Colors.blue,
    },
    {
      'name':'Orange',
      'color':Colors.orange,
    },
  ];

  @override
  Widget build(BuildContext context) {
    print(selecteditem.toString());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: selecteditem==null?Colors.blue:selecteditem!['color'],
        //title:  selecteditem==null?Text('Select Pls'):Text('U have seelected ${selecteditem['name']}'),
      title: selecteditem==null?Text('Select'):Text(selecteditem!['name'],)

      ),
      body: getbody(),
    );
  }






  Widget getbody() {
    return Center(
      child: DropdownButton(
        hint: Text('Select Color'),
        value: selecteditem,
        items: items.map((e) => DropdownMenuItem(
            value: e,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text(e['name']),
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  color: e['color'],
                  borderRadius: BorderRadius.circular(40),

                ),
              )
            ],),
        )).toList(),
        onChanged: (value) {
          setState(() {
            selecteditem = value as Map<String,dynamic>;

          });
        },
      ),
    );
  }
}
