import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Main Page"),
          backgroundColor: Colors.greenAccent,
        ),
        body: (MediaQuery.of(context).orientation == Orientation.portrait)
            ? Column(
                children: generateContainer(),
              )
            : Row(
                children: generateContainer(),
              ));
  }
}

List<Widget> generateContainer() {
  return <Widget>[
    Container(height: 100, width: 100, color: Colors.purple),
    Container(height: 100, width: 100, color: Colors.amberAccent),
    Container(height: 100, width: 100, color: Colors.red),
  ];
}
