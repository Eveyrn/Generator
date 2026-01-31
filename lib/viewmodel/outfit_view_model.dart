import 'package:flutter/material.dart';
import '../model/outfit_model.dart';
import '../service/outfit_generator.dart';


class OutfitViewModel extends ChangeNotifier {
final OutfitGenerator _generator = OutfitGenerator();


OutfitModel? _outfit;


OutfitModel? get outfit => _outfit;


void generateOutfit() {
_outfit = _generator.generate();
notifyListeners();
}
}