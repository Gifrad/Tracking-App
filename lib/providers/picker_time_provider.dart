import 'package:flutter/material.dart';

class PickerTimeProvider extends ChangeNotifier {
  String _picked = '';
  String get picked => _picked;

  Future<String> picker(context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2101),
    );
    notifyListeners();

    _picked =
        '${picked!.year} ${picked.month} ${picked.day} ${picked.minute}:${picked.second}';
    return _picked;
  }
}
