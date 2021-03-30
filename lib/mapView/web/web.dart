import 'package:flutter/material.dart';
import 'dart:js' as js;

class MapView extends StatefulWidget {
  @override
  _MapViewState createState() => _MapViewState();
}

class _MapViewState extends State<MapView> {
  @override
  void initState() {
    js.context.callMethod("aa");
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("카카오 우편번호 서비스"),),
      body: Center(
        child: TextButton(
          child: Text("선택"),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
    );
  }
}