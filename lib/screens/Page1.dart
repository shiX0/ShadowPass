
import 'package:flutter/material.dart';

import 'Page2.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("page 1"),

      ),
      body: Center(
        child: Column(
          children: [
            Text("This is page 1"),
            ElevatedButton(onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context)=>Page2())
              );
            }, child: Text("Be page 2"))

          ],
        ),
      ),
    );
  }
}
