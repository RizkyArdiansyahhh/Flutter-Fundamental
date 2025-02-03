import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> with WidgetsBindingObserver {
  int counter = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);

    if (state == AppLifecycleState.inactive) {
      print("Inactive");
    }
    if (state == AppLifecycleState.paused) {
      print("Paused");
    }
    if (state == AppLifecycleState.resumed) {
      print("Resumed");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text("Aplication"),
            backgroundColor: Colors.greenAccent,
          ),
          body: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(color: Colors.greenAccent),
                    child: Image(
                      image: NetworkImage(
                          "https://tse1.mm.bing.net/th?id=OIP.vgiHJUdnoUMg4-SPk7AV-AHaKb&pid=Api&P=0&h=220"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Center(
                    child: Text(
                      counter.toString(),
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment(.9, 0.9),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      counter++;
                    });
                  },
                  child: Text("Count"),
                ),
              )
            ],
          )),
    );
  }
}
