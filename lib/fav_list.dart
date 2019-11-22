import 'package:flutter/material.dart';

import 'main.dart';

void main() => runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FavList(),
    )
);

class FavList extends StatefulWidget {
  @override
  _FavListState createState() => _FavListState();
}

class _FavListState extends State<FavList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favourite Quotes"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            elevation: 4,
            child: ListTile(
              title: Text(Quotes.favQuotes[index]),
              trailing: IconButton(icon: Icon(Icons.delete), onPressed: () {
                setState(() {
                  Quotes.favQuotes.remove(Quotes.favQuotes[index]);
                });
              },),
            ),
          );
        },
        itemCount: Quotes.favQuotes.length,),
    );
  }
}
