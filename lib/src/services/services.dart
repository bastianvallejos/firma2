import 'package:flutter/material.dart';
import 'package:loginfirmad/src/models/firma_digital_model.dart';

class FirmaDigitalServices extends ChangeNotifier {
  final String _urlbase = "flutter-loginvalidator-default-rtdb.firebaseio.com";

  final List<FirmaDigitalData> firmaData = [];
}
