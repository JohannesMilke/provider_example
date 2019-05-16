import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/page/traffic_light_page.dart';

import 'model/traffic_light.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final String appTitle = 'ProviderExample';
  final TrafficLight trafficLight = TrafficLight();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => trafficLight,
      child: MaterialApp(
        title: appTitle,
        theme: ThemeData(
          primaryColor: Colors.deepOrange,
        ),
        home: TrafficLightPage(),
      ),
    );
  }
}
