import 'dart:math';

import 'package:flutter/material.dart';

class Tiga extends StatefulWidget {
  const Tiga({super.key});

  @override
  State<Tiga> createState() => _TigaState();
}

class _TigaState extends State<Tiga> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                setState(() {});
              },
              icon: const Icon(Icons.loop))
        ],
        title: Text(
          Random().nextInt(100).toString(),
        ),
      ),
      body: const Center(
        child: MyColumn(),
      ),
    );
  }
}

class MyColumn extends StatefulWidget {
  const MyColumn({
    super.key,
  });

  @override
  State<MyColumn> createState() => _MyColumnState();
}

class _MyColumnState extends State<MyColumn> {
  var x = 0;

  @override
  Widget build(BuildContext context) {
    // const text = Text('hallo');
    const text = Text('hello');
    return Column(
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
                  debugPrint(x.toString());
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
                setState(() {
                  x = x - 1;
                  debugPrint(x.toString());
                });
              },
              child: const Text(
                "Kurang",
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text(
            "Back",
          ),
        ),
        text
      ],
    );
  }
}
