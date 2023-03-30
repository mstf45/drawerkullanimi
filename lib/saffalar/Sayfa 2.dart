import 'package:flutter/material.dart';

class DrawerSayfa2 extends StatefulWidget {
  const DrawerSayfa2({Key? key}) : super(key: key);

  @override
  State<DrawerSayfa2> createState() => _DrawerSayfa2State();
}

class _DrawerSayfa2State extends State<DrawerSayfa2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Drawer Sayfa İki'),
      ),
    );
  }
}
