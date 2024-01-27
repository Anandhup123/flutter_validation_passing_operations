import 'package:flutter/material.dart';

// ignore: must_be_immutable
class page3 extends StatelessWidget {
  String name, email, phone;
  page3({required this.name, required this.email, required this.phone});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed('page4');
              },
              icon: Icon(Icons.arrow_forward_ios_rounded))
        ],
        title: Title(
          color: Colors.black,
          child: Text("Value Passing"),
        ),
      ),
      body: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Hello $name",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.deepPurple),
                ),
                Text(
                  "$email is Your Email Id ",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w200,
                      color: const Color.fromARGB(255, 61, 37, 103)),
                ),
                Text(
                  "$phone is Your Phone Number",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w200,
                    color: const Color.fromARGB(255, 61, 37, 103),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
