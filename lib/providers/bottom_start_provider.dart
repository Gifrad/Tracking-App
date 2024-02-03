import 'package:flutter/foundation.dart';

class ButtomStartProvider extends ChangeNotifier {
  bool _isStart = false;
  bool get isStart => _isStart;

  void toggleStart() {
    _isStart = !_isStart;
    notifyListeners();
  }
}
