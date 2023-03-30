import 'package:flutter/material.dart';
import 'saffalar/Sayfa 1.dart';
import 'saffalar/Sayfa 2.dart';
import 'saffalar/Sayfa 3.dart';

class DrawerKuallanimi extends StatefulWidget {
  const DrawerKuallanimi({Key? key}) : super(key: key);

  @override
  State<DrawerKuallanimi> createState() => _DrawerKuallanimiState();
}

class _DrawerKuallanimiState extends State<DrawerKuallanimi>
    with SingleTickerProviderStateMixin {
  bool visibility = false;

  var sayfaListesi = [
    const DrawerSayfa1(),
    const DrawerSayfa2(),
    const DrawerSayfa3()
  ];

  int secilenIndexs = 0;
  bool gorunum = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer Kullanımı'),
        centerTitle: true,
      ),
      body: sayfaListesi[secilenIndexs],
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blueAccent.shade400),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      CircleAvatar(
                        child: Text('MÖ'),
                      ),
                      Icon(
                        Icons.sunny,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: const Text('Mustafa Özcan'),
                    subtitle: const Text('+90 (123) 456 78 90'),
                    trailing: GestureDetector(
                      onTap: () {
                        setState(() {
                          visibility = !visibility;
                        });
                      },
                      child: const Icon(Icons.keyboard_arrow_down, size: 30),
                    ),
                  ),
                ],
              ),
            ),
            Visibility(
              visible: visibility,
              child: Column(
                children: [
                  ListTile(
                    leading: const CircleAvatar(
                      child: Text('MÖ'),
                    ),
                    title: const Text('Mustafa Özcan'),
                    onTap: () {
                      setState(() {
                        secilenIndexs = 0;
                      });
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.add),
                    title: const Text('Hesap Ekle'),
                    onTap: () {
                      setState(() {
                        secilenIndexs = 0;
                      });
                      Navigator.pop(context);
                    },
                  ),
                  const Divider(),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.group),
              title: const Text('Yeni Grup'),
              onTap: () {
                setState(() {
                  secilenIndexs = 0;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Kişiler'),
              onTap: () {
                setState(() {
                  secilenIndexs = 1;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.call),
              title: const Text('Aramalar'),
              onTap: () {
                setState(() {
                  secilenIndexs = 2;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.location_history),
              title: const Text('Yakındaki Kişiler'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.save),
              title: const Text('Kayıtlı Mesajlar'),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.person_add_alt_1_rounded),
              title: const Text('Arkadaşlarını Davet Et'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.help_outline_rounded),
              title: const Text('Telegram Özellikleri'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
