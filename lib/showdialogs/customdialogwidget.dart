import 'package:flutter/material.dart';

class CustomDialogWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          showCustomDialog(context);
        },
        child: Text('CustomDialog'));
  }

  void showCustomDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) =>Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          
          child: Container(
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Are u Sure to Exit?",style: TextStyle(
                    fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold
                  ),),
                  SizedBox(height: 20.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    TextButton(onPressed: (){
                      Navigator.of(context).pop();
                    }, child: Text('Yes')),
                    TextButton(onPressed: (){
                      return;
                    }, child: Text('Cancel'))
              ],),
                ],
              ),
            ),
          ),
        ));

  }
}
