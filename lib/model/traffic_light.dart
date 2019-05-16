import 'package:flutter/widgets.dart';

class TrafficLight with ChangeNotifier {
  String _name;
  Color _color;

  String get name => _name;

  set name(String newName) {
    _name = newName;
    notifyListeners();
  }

  Color get color => _color;

  set color(Color newColor) {
    _color = newColor;
    notifyListeners();
  }

  @override
  void dispose() {
    // clean up things

    super.dispose();
  }
}
