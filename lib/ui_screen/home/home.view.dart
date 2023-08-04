import 'dart:math';

import 'package:cobaflut/ui_screen/home/home.ctrl.dart';
// import 'package:cobaflut/ui_screen/home/widgets/_index.dart';
import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../satu/satu.dart';
import 'home.data.dart';
import 'widgets/_index.dart';
// import 'widgets/container1.dart';
// import 'widgets/container2.dart';
// import 'widgets/container3.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  HomeData get _dt => rxHomeData.state;
  HomeCtrl get _ct => HomeCtrl();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OnBuilder.all(
              listenTo: _dt.nilaiAcak,
              onWaiting: () => const CircularProgressIndicator(),
              onError: (error, refreshError) => const Text('error'),
              onData: (data) => Text(
                data.toString(),
                textScaleFactor: 2,
              ),
            ),
            const Text('text'),
            Text(
              Random().nextInt(100).toString(),
              textScaleFactor: 2,
            ),
            OnReactive(
              () => Text(
                _dt.counter.state.toString(),
                textScaleFactor: 2,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => _ct.tambah(),
                  child: const Text(
                    "Tambah",
                  ),
                ),
                ElevatedButton(
                  onPressed: () => _ct.kurang(),
                  child: const Text(
                    "Kurang",
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                final route = MaterialPageRoute(
                  builder: (context) {
                    return const Satu();
                  },
                );
                Navigator.push(context, route);
              },
              child: const Text(
                "Satu",
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                _ct.coba();
              },
              child: const Text(
                "Coba",
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () => _ct.ubahNilaiAcak(),
              child: const Text(
                "Ubah",
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container1(),
                SizedBox(
                  width: 10,
                ),
                Container2(),
                SizedBox(
                  width: 10,
                ),
                Container3(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
