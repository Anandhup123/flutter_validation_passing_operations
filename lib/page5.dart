import 'package:flutter/material.dart';

class page5 extends StatefulWidget {
  const page5({super.key});

  @override
  State<page5> createState() => _page5State();
}

class _page5State extends State<page5> {
  String? gender, status;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed('page6');
              },
              icon: Icon(Icons.arrow_forward_ios_rounded))
        ],
        title: Title(
          color: Colors.black,
          child: Text("RadioButton"),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Text("Radio Button Example"),
                RadioListTile(
                  title: Text("Male"),
                  value: "Male",
                  groupValue: gender,
                  onChanged: (String? value) {
                    setState(() {
                      gender = value;
                    });
                  },
                ),
                RadioListTile(
                  title: Text("Female"),
                  value: "Female",
                  groupValue: gender,
                  onChanged: (String? value) {
                    setState(() {
                      gender = value;
                    });
                  },
                ),
                RadioListTile(
                  title: Text("Others"),
                  value: "Others",
                  groupValue: gender,
                  onChanged: (String? value) {
                    setState(() {
                      gender = value;
                    });
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Text("Marital Status"),
                RadioListTile(
                    title: Text("Single"),
                    value: "Single",
                    groupValue: status,
                    onChanged: (String? value) {
                      setState(() {
                        status = value;
                      });
                    }),
                RadioListTile(
                    title: Text("Married"),
                    value: "Married",
                    groupValue: status,
                    onChanged: (String? value) {
                      setState(() {
                        status = value;
                      });
                    }),
              ],
            ),
          )
        ],
      ),
    );
  }
}
