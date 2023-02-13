// import 'package:flutter/material.dart';
//
//
// class ChipScrollbar extends StatelessWidget {
//
//   final Color scrollbarcolor;
//   final int scrollbarheight;
//   final VoidCallback ontap;
//   final String chiptext;
//
//   ChipScrollbar({required this.ontap,required this.chiptext,required this.scrollbarcolor,required this.scrollbarheight});
//
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         Container(
//           color: scrollbarcolor,
//           height: scrollbarheight,
//           child: Center(
//             child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 itemCount: 20,
//                 itemBuilder: (context,index){
//
//                   return Center(child: GestureDetector(
//                     onTap: ontap,
//                     child: Container(
//                         margin: EdgeInsets.symmetric(horizontal: 10),
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(20),
//                           color: selectedindex==index?Colors.orangeAccent:Colors.blue,
//
//                         ),
//                         child: Padding(
//                           padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 5),
//                           child: Text('Logic:$index',style: TextStyle(fontSize: 20),),
//                         )),
//                   ));
//                 }),
//           ),
//         ),
//         Positioned(
//           top: 0,
//           left: 0,
//           child: Container(
//             width: 50,
//             height: 100,
//             decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                     colors: [
//                       Colors.white.withOpacity(1),
//                       Colors.white.withOpacity(0.50),
//                       Colors.white.withOpacity(0.30),
//                       Colors.white.withOpacity(0.20),
//                       Colors.white.withOpacity(0.10),
//
//                     ],
//                     begin: Alignment.centerLeft,
//                     end: Alignment.centerRight
//                 )
//             ),
//           ),
//         ),
//         Positioned(
//           top: 0,
//           right: 0,
//           child: Container(
//             width: 30,
//             height: 100,
//             decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                     colors: [
//                       Colors.white.withOpacity(0.20),
//                       Colors.white.withOpacity(0.40),
//                       Colors.white.withOpacity(0.60),
//                       Colors.white.withOpacity(0.80),
//                       Colors.white.withOpacity(0.90),
//                       Colors.white.withOpacity(1),
//                     ],
//                     begin: Alignment.centerLeft,
//                     end: Alignment.centerRight
//                 )
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
