import 'package:flutter/material.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _mail = prefs.getString('ff_mail') ?? _mail;
    });
    _safeInit(() {
      _memberId = prefs.getString('ff_memberId') ?? _memberId;
    });
    _safeInit(() {
      _isLogined = prefs.getBool('ff_isLogined') ?? _isLogined;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  dynamic _kickoffStatus = jsonDecode('{\"status\":\"kick off\"}');
  dynamic get kickoffStatus => _kickoffStatus;
  set kickoffStatus(dynamic _value) {
    _kickoffStatus = _value;
  }

  dynamic _endStatus = jsonDecode('{\"status\":\"end\"}');
  dynamic get endStatus => _endStatus;
  set endStatus(dynamic _value) {
    _endStatus = _value;
  }

  dynamic _predicted = jsonDecode('{\"predicted\":\"predicted\"}');
  dynamic get predicted => _predicted;
  set predicted(dynamic _value) {
    _predicted = _value;
  }

  List<dynamic> _loginStatus = [
    jsonDecode('{\"success\":\"Login successful\"}'),
    jsonDecode('{\"errorNotFound\":\"EMAIL_NOT_FOUND\"}'),
    jsonDecode('{\"errorPassword\":\"INVALID_PASSWORD\"}')
  ];
  List<dynamic> get loginStatus => _loginStatus;
  set loginStatus(List<dynamic> _value) {
    _loginStatus = _value;
  }

  void addToLoginStatus(dynamic _value) {
    _loginStatus.add(_value);
  }

  void removeFromLoginStatus(dynamic _value) {
    _loginStatus.remove(_value);
  }

  void removeAtIndexFromLoginStatus(int _index) {
    _loginStatus.removeAt(_index);
  }

  void updateLoginStatusAtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _loginStatus[_index] = updateFn(_loginStatus[_index]);
  }

  void insertAtIndexInLoginStatus(int _index, dynamic _value) {
    _loginStatus.insert(_index, _value);
  }

  dynamic _nullValue = jsonDecode('{\"null\":\"null\"}');
  dynamic get nullValue => _nullValue;
  set nullValue(dynamic _value) {
    _nullValue = _value;
  }

  String _mail = '';
  String get mail => _mail;
  set mail(String _value) {
    _mail = _value;
    prefs.setString('ff_mail', _value);
  }

  String _memberId = '';
  String get memberId => _memberId;
  set memberId(String _value) {
    _memberId = _value;
    prefs.setString('ff_memberId', _value);
  }

  bool _isLogined = false;
  bool get isLogined => _isLogined;
  set isLogined(bool _value) {
    _isLogined = _value;
    prefs.setBool('ff_isLogined', _value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
