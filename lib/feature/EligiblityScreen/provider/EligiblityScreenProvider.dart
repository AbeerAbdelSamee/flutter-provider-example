import 'package:flutter/material.dart';

class EligiblityScreenProvider extends ChangeNotifier {
  String _eligiblityMessage = "";
  late bool _isEligible;

  void checkEligiblty(int age) {
    if (age >= 18)
      eligibleForLicense();
    else
      notEligibleForLicense();
  }

  void eligibleForLicense() {
    _eligiblityMessage = "You are eligible to apply for Driving License";
    _isEligible = true;
    notifyListeners();
  }

  void notEligibleForLicense() {
    _eligiblityMessage = "You are not eligible to apply for Driving License";
    _isEligible = false;
    notifyListeners();
  }

  // getter for eligiblity message
  String get eligiblityMessage => _eligiblityMessage;
  // getter for elgibility flag
  bool get isEligible => _isEligible;
}
