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

  bool isLightTheme = true;
  bool dondur = true;

  void _toggleTheme() {
    setState(() {
      isLightTheme = !isLightTheme;
    });
  }

  bool gorunum = true;
  void _RoundedIcon() {
    setState(() {
      gorunum = !gorunum;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: isLightTheme
          ? ThemeData.light().copyWith(
              appBarTheme: const AppBarTheme(
                backgroundColor: Colors.black87,
                iconTheme: IconThemeData(
                  color: Colors.white,
                ),
                titleTextStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            )
          : ThemeData.dark().copyWith(
              appBarTheme: const AppBarTheme(
                backgroundColor: Colors.white,
                iconTheme: IconThemeData(
                  color: Colors.black,
                ),
                titleTextStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                ),
              ),
            ),
      home: Scaffold(
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
                decoration: BoxDecoration(
                  color: isLightTheme ? Colors.white : Colors.blue,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor:
                              isLightTheme ? Colors.blue : Colors.white,
                          child: const Text(
                            'MÖ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            _toggleTheme();
                          },
                          child: Icon(
                            isLightTheme ? Icons.sunny : Icons.shield_moon,
                            color: isLightTheme ? Colors.black : Colors.white,
                          ),
                        ),
                      ],
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: const Text('Mustafa Özcan'),
                      subtitle: const Text('+90 (123) 456 78 90'),
                      trailing: GestureDetector(
                        onTap: () {
                          _RoundedIcon();
                          setState(() {
                            visibility = !visibility;
                          });
                        },
                        child: Icon(
                          gorunum
                              ? Icons.keyboard_arrow_down
                              : Icons.keyboard_arrow_up,
                        ),
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
                      leading: CircleAvatar(
                        backgroundColor:
                            isLightTheme ? Colors.blue : Colors.white,
                        child: const Text(
                          'MÖ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      title: const Text('Mustafa Özcan'),
                      onTap: () {
                        setState(() {});
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.add),
                      title: const Text('Hesap Ekle'),
                      onTap: () {
                        setState(() {});
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
                  Navigator.of(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.call),
                title: const Text('Aramalar'),
                onTap: () {
                  setState(() {
                    secilenIndexs = 2;
                  });
                  Navigator.canPop(context);
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
      ),
    );
  }
}
