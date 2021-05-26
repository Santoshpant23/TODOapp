import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "TODOapp",
    home: TODOApp(),
  ));
}

class TODOApp extends StatefulWidget {
  @override
  _TODOAppState createState() => _TODOAppState();
}

class _TODOAppState extends State<TODOApp> {
String value;

  var tODO = [ '' ];

  addTODO(String item) {
    setState(() {
      tODO.add(item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("TODOApp"),
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            addTODO(value);
          },
        ),
        body: ListView.builder(
          itemCount: tODO.length,
          itemBuilder: (context, index) {
          return index ==0? Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextFormField(
              decoration: InputDecoration(hintText: "Input Items"),
              onChanged: (val){
                
                  value=val;
                
              },
            ),
          ) : ListTile(
            leading: Icon(Icons.work),
            title: Text("${tODO[index]}"),
          );
          },
        ),
        );
  }
}
