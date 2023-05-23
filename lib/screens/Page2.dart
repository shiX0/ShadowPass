import 'package:flutter/material.dart';
import 'package:my_first_app/screens/Page3.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("page 2"),

      ),
      body: Center(
        child: Column(
          children: [
            Text("This is page 2"),
            ElevatedButton(onPressed: () {
              Navigator.of(context).pop();
            }, child: Text("back")),
            ElevatedButton(onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context)=>Page3())
              );
            }, child: Text("Be page 3"))
          ],
        ),
      ),
    );
  }
}
