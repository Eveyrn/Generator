import 'package:cloud_firestore/cloud_firestore.dart';

class OutfitRepository {
  final _db = FirebaseFirestore.instance;

  Future<List<String>> _getItems(String collection) async {
    final snapshot = await _db.collection(collection).get();
    return snapshot.docs
        .map((doc) => doc['name'] as String)
        .toList();
  }

  Future<List<String>> getTops() => _getItems('tops');
  Future<List<String>> getBottoms() => _getItems('bottoms');
  Future<List<String>> getShoes() => _getItems('shoes');
  Future<List<String>> getExtras() => _getItems('extras');
  Future<List<String>> getMoods() => _getItems('moods');
}