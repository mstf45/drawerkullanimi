import 'package:flutter/material.dart';

class DrawerSayfa1 extends StatefulWidget {
  const DrawerSayfa1({Key? key}) : super(key: key);

  @override
  State<DrawerSayfa1> createState() => _DrawerSayfa1State();
}

class _DrawerSayfa1State extends State<DrawerSayfa1> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Drawer Sayfa Bir'),
    );
  }
}
