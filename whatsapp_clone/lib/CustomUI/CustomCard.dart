// import 'dart:math';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:whatsapp_clone/Model/ChartModel.dart';
// import 'package:whatsapp_clone/Screens/IndividualPage.dart';
//
// class CustomCard extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         // Navigator.push(context, MaterialPageRoute(builder: (context) => IndividualPage(chatModel: chatModel)));
//       },
//       child: ListTile(
//         leading: CircleAvatar(
//           radius: 25,
//         //   child: chatModel.isGroup? Icon(Icons.group, color: Colors.white, size: 45,) : Icon(Icons.person, color: Colors.white, size: 45,),
//         //   backgroundColor: Colors.blueGrey,
//         // ),
//         title: Text(
//           chatModel.name,
//           style: TextStyle(
//             fontSize: 14,
//             color: Colors.white,
//         ),
//         ),
//         subtitle: Row(
//           children: [
//             Icon(Icons.done_all, color: Colors.grey, size: 17,),
//             Text(
//               chatModel.currentMessage,
//               style: TextStyle(
//                 fontSize: 13,
//                 color: Colors.grey,
//               ),
//             ),
//           ],
//         ),
//         trailing: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               chatModel.time,
//               style: TextStyle(
//                 color: Colors.grey,
//               ),
//             ),
//             Transform.rotate(
//                angle:30 * pi / 180,
//                child: Icon(Icons.push_pin, color: Colors.grey,)),
//           ],
//         ),
//
//       ),
//     );
//   }
// }
