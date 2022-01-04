import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Buscar extends StatelessWidget {
  const Buscar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Buscar',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SizedBox(
              height: 50,
              child: TextField(
                keyboardType: const TextInputType.numberWithOptions(),
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search_rounded),
                  hintText: 'DNI',
                  isDense: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                    ),
                  ),
                  fillColor: const Color(0xFFe0e0e2),
                  filled: true,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
