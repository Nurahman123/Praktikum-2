import 'package:flutter/material.dart';

class DetailScreens extends StatefulWidget {
  const DetailScreens({Key? key}) : super(key: key);

  @override
  _DetailScreensState createState() => _DetailScreensState();
}

class _DetailScreensState extends State<DetailScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: const Text('Halaman Detail'),
      ),
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: EdgeInsets.only(left: 5, right: 5, top: 30),
            child: Text('Detail Page'),
          ),
        ),
      ),
    );
  }
}
