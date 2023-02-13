import 'package:flutter/material.dart';

class AlertDialogWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          showAlertDialog(context);
        },
        child: Text('Alert Dialog'));
  }

  void showAlertDialog(BuildContext context) {

    showDialog(
      barrierDismissible: false,
        context: context,
        builder: (context)=>AlertDialog(

          title: Text('Alert Dialog'),
          content: TextField(),
          actions: [TextButton(onPressed: (){
            Navigator.of(context).pop();
          }, child: Text('submit'))],
        ));



  }
}
