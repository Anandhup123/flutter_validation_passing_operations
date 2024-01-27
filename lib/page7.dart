// import 'package:flutter/material.dart';
// import 'package:flutter_session/flutter_session.dart';

// class page7 extends StatefulWidget {
//   page7({super.key});

//   @override
//   State<page7> createState() => _page7State();
// }

// class _page7State extends State<page7> {
//   TextEditingController name = TextEditingController();

//   TextEditingController email = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Title(
//           color: Colors.black,
//           child: Text("Session Code"),
//         ),
//       ),
//       body: SafeArea(
//           child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(20),
//             child: TextField(
//               controller: name,
//               decoration: InputDecoration(
//                 labelText: "Enter username",
//                 border: OutlineInputBorder(),
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(20),
//             child: TextField(
//               controller: email,
//               decoration: InputDecoration(
//                 labelText: "Enter Email",
//                 border: OutlineInputBorder(),
//               ),
//             ),
//           ),
//           ElevatedButton(
//             onPressed: () async {
//               String nameToSend = name.text;
//               await FlutterSession().set("uid", nameToSend);
//               Navigator.of(context).pushNamed("page8");
//             },
//             child: Text("Submit"),
//           )
//         ],
//       )),
//     );
//   }
// }
