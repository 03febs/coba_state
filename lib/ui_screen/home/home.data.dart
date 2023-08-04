import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

final rxHomeData = RM.inject<HomeData>(() => HomeData());

class HomeData {
  final counter = 12.inj();

  final hitung = RM.inject<int>(() => 10);

  final nilaiAcak = RM.injectFuture<int>(
    () => Future.value(123),
    sideEffects: SideEffects.onData(
      (data) {
        debugPrint(data.toString());
      },
    ),
  );
}
