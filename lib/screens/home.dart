import 'package:flutter/material.dart';
import 'package:hp_frontend/screens/mi_informacion.dart';

import 'buscar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = [
    Container(),
    Container(),
    const MiInformacion(),
    const Buscar(),
  ];
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,
          currentIndex: _selectedIndex,
          onTap: (value) {
            setState(() {
              _selectedIndex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.checklist_rounded,
              ),
              label: 'Internaciones',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.groups_rounded,
              ),
              label: 'Pacientes',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Mi información',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Buscar',
            ),
          ],
        ),
      ),
    );
  }
}
