import 'dart:math';

import 'package:flutter/material.dart';

import 'home.data.dart';

class HomeCtrl {
  // HomeData get _dt => HomeData();
  HomeData get _dt => rxHomeData.state;

  void tambah() {
    _dt.counter.state = _dt.counter.state + 1;
    debugPrint(_dt.counter.state.toString());
  }

  void kurang() {
    _dt.counter.state = _dt.counter.state - 1;
    debugPrint(_dt.counter.state.toString());
  }

  Future<void> coba() async {
    debugPrint('e');
    await Future.delayed(const Duration(seconds: 3));
    debugPrint('f');
  }

  Future<int> acak() async {
    debugPrint('bbbbb');
    await Future.delayed(const Duration(seconds: 3));
    debugPrint('ccccc');
    return Random().nextInt(100);
  }

  void ubahNilaiAcak() {
    debugPrint('aaaaa');
    _dt.nilaiAcak.stateAsync = acak();
  }
}
