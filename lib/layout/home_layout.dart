import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeLayout extends StatelessWidget {
static const String routeName="layout";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ToDo"),
      ),
    );
  }
}
