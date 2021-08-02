import 'package:flutter/material.dart';
import 'package:jobs_app/containers/bottom_nav.dart';
import 'package:jobs_app/containers/root_screen.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _createAppBar(),
      body: RootScreen(),
      bottomNavigationBar: BottomNav(),
    );
  }

  AppBar _createAppBar() {
    return AppBar(
      title: Text('Jobs App'),
    );
  }
}
