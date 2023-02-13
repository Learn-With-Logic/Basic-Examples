import 'package:flutter/material.dart';

class SimpleDialogWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
           showSimpleDialog(context);
        },
        child: Text('Simple Dialog'));
  }

  void showSimpleDialog(BuildContext context) {

    showDialog(context: context,
        builder: (context)=>SimpleDialog(
          title: Text('Simple Dialog'),

          children: [
            SimpleDialogOption(child: Text('Red'),onPressed: (){},),
            SimpleDialogOption(child: Text('Green'),onPressed: (){},),
            SimpleDialogOption(child: Text('Blue'),onPressed: (){},),
            TextButton(onPressed: (){Navigator.of(context).pop();
            }, child: Text('Submit')),



          ],
        ));





  }
}
