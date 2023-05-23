import 'package:flutter/material.dart';
import 'package:my_first_app/screens/Dashboard.dart';
import 'package:my_first_app/screens/InputDemo.dart';
import 'package:my_first_app/screens/LayoutDemo.dart';
import 'package:my_first_app/screens/Adminsignup.dart';
import 'package:my_first_app/screens/PageViewDemo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
      ),
      home: Adminsignup(),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(
                height:300,
                width:100,
                "https://lh6.googleusercontent.com/proxy/qy_3qZ-n4qXRhYuOEpX-gSFuXYob1-l20bro7fhAtjol3AwTtxsnGUBzThfbZHr55yFdzCLSvTMLrxswYY8a54hbHjQmKDYcXy501bzXTU2sgJmF8Zqz9UaHGj3i6UE244i35AdZ3Y9B9dSSj9jERitn1bG3b8tEgL89rX47YNm9=s0-d"
            ),



            Row(
              mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.network(
            height:200,
              width:180,
              "https://lh6.googleusercontent.com/proxy/qy_3qZ-n4qXRhYuOEpX-gSFuXYob1-l20bro7fhAtjol3AwTtxsnGUBzThfbZHr55yFdzCLSvTMLrxswYY8a54hbHjQmKDYcXy501bzXTU2sgJmF8Zqz9UaHGj3i6UE244i35AdZ3Y9B9dSSj9jERitn1bG3b8tEgL89rX47YNm9=s0-d"
          ),
          Row(children: [
            Expanded(child: Text("text")),
            Column(
              children: [
                Text(
                  "Text",
                  style: TextStyle(color: Colors.red,fontSize: 30),
                )
              ],
            )
          ],),
          Container(
            child: Column(
              children: [
                Text("title"),
                Text("Sub title")
              ],
            ),
          ),



          ]

          ),
            Row( children:[
              Image.network(
                  height:50,
                  width:50,
                  "https://lh6.googleusercontent.com/proxy/qy_3qZ-n4qXRhYuOEpX-gSFuXYob1-l20bro7fhAtjol3AwTtxsnGUBzThfbZHr55yFdzCLSvTMLrxswYY8a54hbHjQmKDYcXy501bzXTU2sgJmF8Zqz9UaHGj3i6UE244i35AdZ3Y9B9dSSj9jERitn1bG3b8tEgL89rX47YNm9=s0-d"
              ),
              Image.network(
                  height:50,
                  width:50,
                  "https://lh6.googleusercontent.com/proxy/qy_3qZ-n4qXRhYuOEpX-gSFuXYob1-l20bro7fhAtjol3AwTtxsnGUBzThfbZHr55yFdzCLSvTMLrxswYY8a54hbHjQmKDYcXy501bzXTU2sgJmF8Zqz9UaHGj3i6UE244i35AdZ3Y9B9dSSj9jERitn1bG3b8tEgL89rX47YNm9=s0-d"
              ),
              Image.network(
                  height:50,
                  width:50,
                  "https://lh6.googleusercontent.com/proxy/qy_3qZ-n4qXRhYuOEpX-gSFuXYob1-l20bro7fhAtjol3AwTtxsnGUBzThfbZHr55yFdzCLSvTMLrxswYY8a54hbHjQmKDYcXy501bzXTU2sgJmF8Zqz9UaHGj3i6UE244i35AdZ3Y9B9dSSj9jERitn1bG3b8tEgL89rX47YNm9=s0-d"
              ),



            ],

            // const Text(
            //   'You have pushed the button this many times:',
            // ),
            // Text(
            //   '$_counter',
            //   style: Theme.of(context).textTheme.headlineMedium,
            // ),
            // StatelessDemo(),
//             Container(
//               // padding: EdgeInsets.zero,
//               // padding: EdgeInsets.only(top:10,left:20),
//               // padding: EdgeInsets.all(20),
//               //  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
//               padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
//               margin: EdgeInsets.all(40),
//               height: 100,
//               width: 300,
//               decoration: BoxDecoration(
//                 color: Colors.green,
//                     borderRadius: BorderRadius.circular(20)
//               ),
//               child: Text("Container",style: TextStyle(fontSize: 30),),
//
//
//             ),
//             Row(
//               children: [
//                 Text("I am in row 1"),
//                 Text("I am in row 2"),
//                 Text("I am in row 3"),
//               ],
//             ),
//             Column(
//               children: [
//                 Text("I am in column 1"),
//                 Text("I am in column 2"),
//                 Text("I am in column 3"),

            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
class StatelessDemo extends StatelessWidget {
  StatelessDemo({Key? key}) : super(key: key);
  int i=0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("$i"),
        ElevatedButton(onPressed:(){
          i++;
        },
        child: Text("ADD"))
      ],
    );
  }
}

class StatefulDemo extends StatefulWidget {
  const StatefulDemo ({Key? key}) : super(key: key);

  @override
  State<StatefulDemo> createState() => _StatefulDemoState();
}

class _StatefulDemoState extends State<StatefulDemo> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


