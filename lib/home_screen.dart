import 'package:flutter/material.dart';
import 'package:myapp/webview_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,

        backgroundColor: Color(0xff028CF3),
        leading: SizedBox(),
        title: Text("BeLive", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return WebViewScreen();
                    },
                  ),
                );
              },
              radius: 30,
              borderRadius: BorderRadius.circular(30),
              child: Container(
                height: 45,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(colors: [Color(0xff028CF3), Color(0xff2DE7AB)]),
                ),
                child: Center(child: Text('Join', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20))),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
