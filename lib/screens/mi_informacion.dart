import 'package:flutter/material.dart';
import 'package:hp_frontend/widgets/information_card.dart';

class MiInformacion extends StatelessWidget {
  const MiInformacion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Mi información',
          style: TextStyle(color: Colors.black),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
      ),
      body: InformationCard(),
    );
  }
}
