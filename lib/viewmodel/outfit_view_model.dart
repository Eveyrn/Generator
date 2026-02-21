import 'package:flutter/material.dart';
import '../model/outfit_model.dart';
import '../service/outfit_generator.dart';

class OutfitViewModel extends ChangeNotifier {
  final OutfitGenerator _generator = OutfitGenerator();

  OutfitModel? _outfit;
  bool _isLoading = false;

  OutfitModel? get outfit => _outfit;
  bool get isLoading => _isLoading;

  Future<void> generateOutfit() async {
    _isLoading = true;
    notifyListeners();

    _outfit = await _generator.generate();

    _isLoading = false;
    notifyListeners();
  }
}