import 'package:eventsf/mapView/mapView.dart' as MapV;
import 'package:flutter/material.dart';
import 'dart:js' as js;

class MapFunc extends StatefulWidget {
  @override
  _MapFuncState createState() => _MapFuncState();
}

class _MapFuncState extends State<MapFunc> {
  String? addressName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("카카오 우편번호 서비스 : ${addressName ?? '검색해주세요'}"),),
      body: Container(
        child: Center(
          child: ElevatedButton(
            child: Text("주소 검색"),
            onPressed: () async{
              await Navigator.of(context).push(
                MaterialPageRoute(
                  settings: RouteSettings(
                    name: '/k'
                  ),
                  builder: (BuildContext context) => MapV.MapView()
                )
              );
              js.JsObject obj = js.JsObject.fromBrowserObject(js.context['add']);
              setState(() {
                this.addressName = obj['data'].toString();
              });
            },
          ),
        ),
      ),
    );
  }
}
