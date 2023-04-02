import 'package:flutter/material.dart';

class DrawerSayfa3 extends StatefulWidget {
  const DrawerSayfa3({Key? key}) : super(key: key);

  @override
  State<DrawerSayfa3> createState() => _DrawerSayfa3State();
}

class _DrawerSayfa3State extends State<DrawerSayfa3> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Drawer Sayfa Üç',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
