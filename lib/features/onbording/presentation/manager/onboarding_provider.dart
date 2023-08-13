import 'package:flutter/cupertino.dart';

class OnboardingProvider extends ChangeNotifier{
  String language = "en";
  void Changelanguage(String lang){
    language = lang;
    notifyListeners();
  }

  void setLang(String lang) {
    this.language = lang;
    notifyListeners();
  }
}