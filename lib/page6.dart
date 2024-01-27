import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class page6 extends StatefulWidget {
  const page6({super.key});

  @override
  State<page6> createState() => _page6State();
}

class _page6State extends State<page6> {
  bool? check = true, check1 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Title(
          color: Colors.black,
          child: Text("Checkbox"),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed('page7');
              },
              icon: Icon(Icons.arrow_forward_ios_rounded))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  activeColor: Colors.blue,
                  checkColor: Colors.white,
                  title: Text("Allow Notifications"),
                  subtitle: Text("Turn On or Off Notifications"),
                  value: check,
                  onChanged: (val) {
                    setState(
                      () {
                        check = val;
                      },
                    );
                  },
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: CheckboxListTile(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    //      controlAffinity: ListTileControlAffinity.leading,
                    tileColor: CupertinoColors.inactiveGray,
                    activeColor: Colors.red,
                    checkColor: Colors.black,
                    title: Text("Allow Permissions"),
                    subtitle: Text("Turn On or Off Mic Permission"),
                    value: check1,
                    onChanged: (val) {
                      setState(() {
                        check1 = val;
                      });
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
