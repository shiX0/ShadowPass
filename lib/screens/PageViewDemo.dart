import 'package:flutter/material.dart';

import 'TabBarDemo.dart';

class PageViewDemo extends StatefulWidget {
  const PageViewDemo({Key? key}) : super(key: key);

  @override
  State<PageViewDemo> createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {
  int navIdx=0;
  PageController pageController=PageController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: pageController,
          children: [
            Image.network("https://pngimg.com/uploads/cat/cat_PNG50496.png"),
            TabBarDemo(),
            Text("Settings",style: TextStyle(fontSize: 40),),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navIdx,
        onTap: (idx){
          setState(() {
            navIdx=idx;
          });
          pageController.jumpToPage(idx);
        },

        backgroundColor: Colors.green,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.yellow,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings"),
        ],
      ),
    );
  }
}

