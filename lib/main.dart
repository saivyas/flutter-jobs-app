import 'package:flutter/material.dart';
import 'package:jobs_app/redux_app.dart';
import 'package:jobs_app/store/store.dart';

void main() {
  final store = createStore();
  runApp(ReduxApp(store: store));
}
