import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  final formkey = GlobalKey<FormState>();
  TextEditingController mobile = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed('page1');
              },
              icon: Icon(Icons.arrow_forward_rounded))
        ],
      ),
      body: SafeArea(
          child: Container(
              child: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "Here to Get",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
              ),
              Text(
                "Welcomed..!",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.purple,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              TextFormField(
                maxLength: 25,
                decoration: InputDecoration(
                  labelText: "Enter your name",
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'please enter a Username';
                  } else {
                    return null;
                  }
                },
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: mobile,
                maxLength: 10,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Enter your Phone No.",
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Invalid Phone Number ';
                  } else if (mobile.text.length != 10) {
                    return "Phone Number Should be 10 digits";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {
                      if (formkey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                              content: Text("Form Submitted Successfully")),
                        );
                      }
                    },
                    child: Text("Login")),
              )
            ],
          ),
        ),
      ))),
    );
  }
}
