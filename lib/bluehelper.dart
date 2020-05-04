import 'package:flutter/services.dart';

class BlueToothHelper{
  static const MethodChannel methodChannel = MethodChannel('com.flutter.io/bluetooth');

  Function method;

  Future<String> openBlueTooth() async{
    dynamic future = await methodChannel.invokeMethod('openBlueTooth');
    return future;
  }

}