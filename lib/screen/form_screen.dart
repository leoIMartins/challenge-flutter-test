import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  var _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: TextFormField(
              key: Key('textField'),
              controller: _textController,
            ),
          ),
          ListTile(
            title: ElevatedButton(
              key: Key("button"),
              child: Text("Next"),
              onPressed: () {
                var route = MaterialPageRoute(
                  builder: (BuildContext context) =>
                      NextPage(value: _textController.text),
                );
                Navigator.of(context).push(route);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class NextPage extends StatefulWidget {
  final String value;

  const NextPage({required this.value});
  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Next Page"),
      ),
      body: Text("${widget.value}"),
    );
  }
}
