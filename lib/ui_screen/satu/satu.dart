import 'package:flutter/material.dart';
import 'package:states_rebuilder/scr/state_management/listeners/on_reactive.dart';

import '../dua/dua.dart';
import '../home/home.data.dart';

class Satu extends StatelessWidget {
  const Satu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Satu'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OnReactive(
              () => Text(
                HomeData().counter.state.toString(),
                textScaleFactor: 2,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    HomeData().counter.state = HomeData().counter.state + 1;
                    debugPrint(
                      HomeData().counter.state.toString(),
                    );
                  },
                  child: const Text(
                    "Tambah",
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    HomeData().counter.state = HomeData().counter.state - 1;
                    debugPrint(
                      HomeData().counter.state.toString(),
                    );
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
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                final route = MaterialPageRoute(
                  builder: (context) {
                    return const Dua();
                  },
                );
                Navigator.push(context, route);
              },
              child: const Text(
                "Add",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
