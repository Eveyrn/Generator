import 'dart:math';
import '../model/outfit_model.dart';
import '../repository/outfit_repository.dart';

class OutfitGenerator {
  final _random = Random();
  final _repository = OutfitRepository();

  Future<OutfitModel> generate() async {
    final tops = await _repository.getTops();
    final bottoms = await _repository.getBottoms();
    final shoes = await _repository.getShoes();
    final extras = await _repository.getExtras();
    final moods = await _repository.getMoods();

    return OutfitModel(
      top: tops[_random.nextInt(tops.length)],
      bottom: bottoms[_random.nextInt(bottoms.length)],
      shoes: shoes[_random.nextInt(shoes.length)],
      extra: extras[_random.nextInt(extras.length)],
      mood: moods[_random.nextInt(moods.length)],
    );
  }
}