import 'dart:math';

import 'package:flutter/material.dart';

import '../tiga/tiga.dart';

class Dua extends StatefulWidget {
  const Dua({super.key});

  @override
  State<Dua> createState() => _DuaState();
}

class _DuaState extends State<Dua> {
  var x = 0;
  @override
  Widget build(BuildContext context) {
    // var y = Random().nextInt(100);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          Random().nextInt(100).toString(),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              Random().nextInt(100).toString(),
              textScaleFactor: 2,
            ),
            Text(
              x.toString(),
              textScaleFactor: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      x = x + 1;
                      debugPrint(
                        x.toString(),
                      );
                    });
                  },
                  child: const Text(
                    "Tambah",
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                ElevatedButton(
                  onPressed: () {
                    x = x - 1;
                    debugPrint(
                      x.toString(),
                    );
                  },
                  child: const Text(
                    "Kurang",
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                final route = MaterialPageRoute(
                  builder: (context) {
                    return const Tiga();
                  },
                );
                Navigator.push(context, route);
              },
              child: const Text(
                "Add",
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                "Back",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
