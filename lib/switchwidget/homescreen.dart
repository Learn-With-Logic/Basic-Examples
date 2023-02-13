import 'package:flutter/material.dart';

class HomeScreen_Switch extends StatefulWidget {
  @override
  State<HomeScreen_Switch> createState() => _HomeScreen_SwitchState();
}

class _HomeScreen_SwitchState extends State<HomeScreen_Switch> {

  bool switchred=true;
  bool switchgreen=false;
  bool switchblue=false;

  int red=255;
  int green=0;
  int blue=0;

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      backgroundColor:Color.fromRGBO(red, green, blue, 1.0),
      appBar: AppBar(
        title: Text('Switch Demo'),
        centerTitle: true,
      ),
      body: Center(
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          elevation: 20.0,
          child: Container(
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
              
            ),

            child: Column(
              
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Transform.scale(
                scale: 2,
                child: Switch(
                    value:switchred ,
                    onChanged: (value){
                      switchred=!switchred;

                      setState(() {
                        setcolor();
                      });



                    }),
              ),
              SizedBox(height: 30.0,),
              Transform.scale(
                scale: 2,

                child: Switch.adaptive(
                    thumbColor: MaterialStateProperty.all(Colors.orange),
                    trackColor: MaterialStateProperty.all(Colors.green),
                    splashRadius: 20.0,
                    // activeColor: Colors.orange,
                    //   activeTrackColor: Colors.pink,
                    //   inactiveTrackColor: Colors.red

                    value:switchgreen ,
                    onChanged: (value){
                      this.switchgreen=!this.switchgreen;
                      setState(() {
                        setcolor();
                      });



                    }),
              ),
                SizedBox(height: 30.0,),
                Transform.scale(
                  scale: 2,
                  child: SizedBox(
                    width: 70,
                    child: Switch(
                      // activeThumbImage: AssetImage(;;),
                      //   inactiveThumbImage: AssetImage(;;;),

                        value:switchblue ,
                        onChanged: (value){
                          this.switchblue=!this.switchblue;
                          setState(() {
                            setcolor();

                          });



                        }),
                  ),
                ),
            ],),

          ),
        ),
      ),
    );
  }

  void setcolor() {

    switchred==true?red=255:red=0;
    switchgreen==true?green=255:green=0;
    switchblue==true?blue=255:blue=0;




  }
}
