import 'package:flutter/material.dart';

class HomeScreen_SliverAppbar extends StatefulWidget {
  @override
  State<HomeScreen_SliverAppbar> createState() =>
      _HomeScreen_SliverAppbarState();
}

class _HomeScreen_SliverAppbarState extends State<HomeScreen_SliverAppbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: NestedScrollView(
        //floatHeaderSlivers: true,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) =>
            [
          SliverAppBar(
            actions: [
              Icon(Icons.back_hand),
            ],
            floating: true,
            //snap: true,
            expandedHeight: 200.0,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Sliver Demo'),
              background: Image.asset(
                "lib/images/aymaan.jpeg",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],

        body: showList(),
      ),
    );
  }

  showList() {
    return ListView.separated(
        itemBuilder: (context, index) {
          return Card(
            shadowColor: Colors.red,
            child: Container(
              color: Colors.white70,
              child: ListTile(
                title: Text("Item " + index.toString()),
                subtitle: Text("No Detail"),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 2.0,
          );
        },
        itemCount: 50);
  }
}
