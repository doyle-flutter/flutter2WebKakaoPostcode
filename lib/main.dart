import 'package:flutter/material.dart';
import 'package:eventsf/mapFunc/mapFunc.dart' as MapF;
import 'package:eventsf/mapView/mapView.dart' as MapV;

Future<void> main() async{
  return runApp(
    MaterialApp(
      initialRoute: "/",
      onGenerateRoute: (RouteSettings path){
        if(path.name == "/k"){
          return MaterialPageRoute(
            settings: RouteSettings(
              name: '/k'
            ),
            builder: (BuildContext context) => MapV.MapView()
          );
        }
        return MaterialPageRoute(
          settings: RouteSettings(
            name: '/'
          ),
          builder: (BuildContext context) => MapF.MapFunc()
        );
      },
    )
  );
}
