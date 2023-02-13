import 'package:flutter/material.dart';

class RedPage extends StatefulWidget {
  @override
  State<RedPage> createState() => _RedPageState();
}

class _RedPageState extends State<RedPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{

        final shouldpop=await showMyDialog();

        return shouldpop?? false;

      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('This is red page'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Center(
              child: GestureDetector(
                  onTap: ()async {
                    final shouldpop=await showMyDialog();

                    if(shouldpop==true)
                      {
                       Navigator.of(context).pop();
                      }
                    else
                      {

                      }



                  },
                  child: Container(child: Text('Move Back'))),
            ),
          ],
        )
      ),
    );
  }

  Future<bool?>showMyDialog<bool>() {

    return showDialog<bool>(
        context: context,
        builder: (context)=>AlertDialog(
          title: Text("Go to Back?"),
          actions: [
            TextButton(onPressed: (){
              Navigator.pop(context,false);
            }, child: Text('Cancel')),
            TextButton(onPressed: (){
              Navigator.pop(context,true);
            }, child: Text('Yes')),

          ],


        ));
  }
}
