import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void displayBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
            child: new Wrap(
              children: <Widget>[
                ListTile(
                    leading: new Icon(Icons.share),
                    title: new Text('share'),
                    onTap: () => {}),
                ListTile(
                  leading: new Icon(Icons.copy),
                  title: new Text('copy'),
                  onTap: () => {},
                ),
                ListTile(
                  leading: new Icon(Icons.edit),
                  title: new Text('edit'),
                  onTap: () => {},
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text("Bottom sheet"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              displayBottomSheet(context);
            },
            child: const Text('BottomSheet')),
      ),
    );
  }
}
