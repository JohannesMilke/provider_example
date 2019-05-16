import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/model/traffic_light.dart';
import 'package:provider_example/page/selection_page.dart';

class TrafficLightPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Traffic Lights')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TrafficLightButton(name: 'Red', color: Colors.red),
            const SizedBox(height: 8),
            TrafficLightButton(name: 'Yellow', color: Colors.yellow),
            const SizedBox(height: 8),
            TrafficLightButton(name: 'Green', color: Colors.green),
          ],
        ),
      ),
    );
  }
}

class TrafficLightButton extends StatelessWidget {
  final Color color;
  final String name;

  const TrafficLightButton({
    @required this.color,
    @required this.name,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final trafficLight = Provider.of<TrafficLight>(context);
    return RaisedButton(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      child: Text(
        name,
        style: TextStyle(color: Colors.black.withOpacity(0.7), fontSize: 24),
      ),
      color: color,
      onPressed: () {
        trafficLight.name = name;
        trafficLight.color = color;
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SelectionPage()),
        );
      },
    );
  }
}
