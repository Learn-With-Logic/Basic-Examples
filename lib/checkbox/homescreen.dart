import 'package:flutter/material.dart';
import 'checkboxstate.dart';
import 'checkboxstatelist.dart';


class HomeScreen_CheckBox extends StatefulWidget {
 @override
  State<HomeScreen_CheckBox> createState() => _HomeScreen_CheckBoxState();
}
class _HomeScreen_CheckBoxState extends State<HomeScreen_CheckBox> {
   bool value=true;


  @override
  Widget build(BuildContext context) {
    print(value);
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.logout))],
      ),
      body: Column(
        children: [
          //createCheckedbox(notifications[0]),
          //createCheckedbox(notifications[1]),
         // createCheckedbox(notifications[2]),
          //...notifications.map(createCheckedbox).toList(),
        ...CheckBoxStateList.list.map((e) {
            return createCheckedbox(e);
          }
          ).toList(),
        ],
      ),
    );
  }

  createCheckedbox(CheckBoxState chk) {
    return CheckboxListTile(
        controlAffinity: ListTileControlAffinity.leading,
        title: Text(chk.title,style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
        //use transform.scale for better look wrap with transform.scale
        activeColor: Colors.red,
        value: chk.value,
        //shape: CircleBorder(),
        //splashRadius: 20.0,

        onChanged: (value){
          setState(() {
            chk.value=value!;

          });

        });
  }
}
