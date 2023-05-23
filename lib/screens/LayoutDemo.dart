import 'package:flutter/material.dart';

class LayoutDemo extends StatefulWidget {
  const LayoutDemo({Key? key}) : super(key: key);

  @override
  State<LayoutDemo> createState() => _LayoutDemoState();
}

class _LayoutDemoState extends State<LayoutDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderWidget(),
            Text("Aashista karki"),
            Text("Description"),

            StoryWidget(),
            GridView.count(
              crossAxisCount: 3,
            shrinkWrap: true,
            crossAxisSpacing: 5,
            mainAxisSpacing: 10,
            children: [
              Image.network("https://pngimg.com/uploads/cat/cat_PNG50496.png",

              ),
              Image.network("https://pngimg.com/uploads/cat/cat_PNG50496.png",

              ),
              Image.network("https://pngimg.com/uploads/cat/cat_PNG50496.png",

              ),
              Image.network("https://pngimg.com/uploads/cat/cat_PNG50496.png",

              ),
              Image.network("https://pngimg.com/uploads/cat/cat_PNG50496.png",

              ),
              Image.network("https://pngimg.com/uploads/cat/cat_PNG50496.png",

              ),
              Image.network("https://pngimg.com/uploads/cat/cat_PNG50496.png",

              ),


            ],
            )
          ],
        ),
      ),
    );
  }
}

class StoryWidget extends StatelessWidget {
  const StoryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage('http://pngimg.com/uploads/cat/cat_PNG50447.png'
          ),
            ),
          CircleAvatar(
            backgroundImage: NetworkImage('http://pngimg.com/uploads/cat/cat_PNG50447.png'
            ),
          ),CircleAvatar(
            backgroundImage: NetworkImage('http://pngimg.com/uploads/cat/cat_PNG50447.png'
            ),
          ),CircleAvatar(
            backgroundImage: NetworkImage('http://pngimg.com/uploads/cat/cat_PNG50447.png'
            ),
          ),CircleAvatar(
            backgroundImage: NetworkImage('http://pngimg.com/uploads/cat/cat_PNG50447.png'
            ),
          ),CircleAvatar(
            backgroundImage: NetworkImage('http://pngimg.com/uploads/cat/cat_PNG50447.png'
            ),
          ),CircleAvatar(
            backgroundImage: NetworkImage('http://pngimg.com/uploads/cat/cat_PNG50447.png'
            ),
          ),CircleAvatar(
            backgroundImage: NetworkImage('http://pngimg.com/uploads/cat/cat_PNG50447.png'
            ),
          ),CircleAvatar(
            backgroundImage: NetworkImage('http://pngimg.com/uploads/cat/cat_PNG50447.png'
            ),
          ),CircleAvatar(
            backgroundImage: NetworkImage('http://pngimg.com/uploads/cat/cat_PNG50447.png'
            ),
          ),CircleAvatar(
            backgroundImage: NetworkImage('http://pngimg.com/uploads/cat/cat_PNG50447.png'
            ),
          ),
        ],
      ),
    );
  }
}

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(
            'http://pngimg.com/uploads/cat/cat_PNG50447.png',
          ),
        ),
        Column(
          children: [
            Text('100'),
            Text('Post'),
          ],
        ),
        Column(
          children: [
            Text("20"),
            Text("Follower"),
          ],
        ),
        Column(
          children: [
            Text("120"),
            Text("Following"),
          ],
        ),
      ],
    );
  }
}
