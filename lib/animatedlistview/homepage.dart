import 'package:flutter/material.dart';



class HomePage_Animatedlistview extends StatefulWidget {
  const HomePage_Animatedlistview({Key? key}) : super(key: key);

  @override
  _HomePage_AnimatedlistviewState createState() => _HomePage_AnimatedlistviewState();
}

class _HomePage_AnimatedlistviewState extends State<HomePage_Animatedlistview> {

  final _items = ['A','B','C'];
  final GlobalKey<AnimatedListState> _key = GlobalKey();
  void _addItem() {
    _items.insert(0, "Item ${_items.length + 1}");
    // _key.currentState!.insertItem(0, duration: const Duration(seconds: 1));
  }
  void _removeItem(int index) {
    _key.currentState!.removeItem(index, (_, animation) {
      return SizeTransition(
        sizeFactor: animation,
        child: const Card(
          margin: EdgeInsets.all(10),
          elevation: 10,
          color: Colors.purple,
          child: ListTile(
            contentPadding: EdgeInsets.all(15),
            title: Text("Goodbye", style: TextStyle(fontSize: 24)),
          ),
        ),
      );
      ;
    }, duration: const Duration(seconds: 1));

    _items.removeAt(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kindacode.com'),
        actions: [IconButton(onPressed: (){
          setState(() {

          });
        }, icon: Icon(Icons.delete))],
      ),
      body: AnimatedList(
        key: _key,
        initialItemCount: _items.length,
        padding: const EdgeInsets.all(10),
        itemBuilder: (_, index, animation) {
          return SizeTransition(
            //key: UniqueKey(),
            sizeFactor: animation,
            child: Card(
              margin: const EdgeInsets.all(10),
              elevation: 10,
              color: Colors.orange,
              child: ListTile(
                contentPadding: const EdgeInsets.all(15),
                title:
                Text(_items[index], style: const TextStyle(fontSize: 24)),
                trailing: IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () => _removeItem(index),
                ),
              ),
            ),
          );
        },
      ),
      // floatingActionButton: FloatingActionButton(
      //     onPressed: _addItem, child: const Icon(Icons.add)),
    );
  }
}