import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/model/traffic_light.dart';

class SelectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text('Selection')),
        body: Consumer<TrafficLight>(
          builder: (context, model, child) => Container(
                color: model.color,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('You have chosen:', style: TextStyle(fontSize: 20)),
                      const SizedBox(height: 8),
                      Text('${model.name}', style: TextStyle(fontSize: 40)),
                    ],
                  ),
                ),
              ),
        ),
      );
}
