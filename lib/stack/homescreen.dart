import 'package:flutter/material.dart';
import 'task.dart';

class HomeScreen_Stack extends StatelessWidget {
  const HomeScreen_Stack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              right: 10,
              left: 10,
              bottom: 10,
              top: 10,
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: CircleAvatar(
                                radius: 24,
                                backgroundColor: Colors.black,
                                foregroundColor: Colors.blue,
                                child: Icon(Icons.apps),
                              ))),
                      Expanded(child: Text('Task Manager')),
                      Align(
                        alignment: Alignment.centerRight,
                        child: SizedBox(
                          height: 32,
                          width: 32,
                          child: Stack(
                            children: [
                              Icon(Icons.notification_add),
                              Positioned(
                                  right: 0,
                                  top: 0,
                                  child: CircleAvatar(
                                    radius: 5,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Welcome Back!',
                              style:
                                  TextStyle(fontSize: 24, color: Colors.blue),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Here's update today",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Spacer(),
                        CircleAvatar(
                          child: Icon(Icons.search),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    child: Container(
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                    child: Container(
                      color: Colors.white,
                    ),
                  ),
                  Expanded(
                      child: ListView.builder(
                          itemCount: tasks.length,
                          itemBuilder: (context, index) {
                            return Card(
                              child: Container(
                                height: 100,
                                color: Colors.yellow,
                                child: Center(
                                    child: Text(
                                  tasks[index].title.toString(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.blue),
                                )),
                              ),
                            );
                          }))
                ],
              ),
            ),
            Positioned(
              left: 0,
              right: 0, //if right is not zero it will be maximum
              bottom: 0,

              child: Container(
                height: 120,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  // Colors.white.withOpacity(0.75),
                  // Colors.white.withOpacity(0.7),
                  // Colors.white.withOpacity(0.6),
                  // Colors.white.withOpacity(0.5),
                  // Colors.white.withOpacity(0.2),
                      Colors.black,
                      Colors.white.withOpacity(0.1)
                ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),

              ),
            ),
          ],
        ),
      ),

    floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    floatingActionButton: FloatingActionButton.extended(

      onPressed: (){
        Navigator.pop(context);
      }, label: Text('Exit ',style: TextStyle(fontSize: 16),),
      icon: Icon(Icons.add_box),

    ),
    );
  }
}
