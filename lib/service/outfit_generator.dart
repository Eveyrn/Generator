  import 'dart:math';
import '../model/outfit_model.dart';


class OutfitGenerator {
final _random = Random();


final _tops = [
'Oversize hoodie with holes',
'Grandma sweater',
'T‑shirt with random anime print',
'Office shirt (but ironic)',
'Crop top from 2016',
];


final _bottoms = [
'Pajama pants',
'Cargo pants with 100 pockets',
'Skirt over jeans',
'Jeans that saw everything',
'Sport shorts in winter',
];


final _shoes = [
'Chunky boots',
'Sneakers older than you',
'Slippers (confidence required)',
'Platform shoes',
'Whatever is near the door',
];


final _extras = [
'Sunglasses at night',
'Backpack full of nothing',
'Chains. More chains.',
'One dramatic ring',
'Headphones with no music',
];


final _moods = [
'Main character energy',
'Chaos but aesthetic',
'I don’t care but I do',
'Art student core',
'Accidentally iconic',
];


OutfitModel generate() {
return OutfitModel(
top: _tops[_random.nextInt(_tops.length)],
bottom: _bottoms[_random.nextInt(_bottoms.length)],
shoes: _shoes[_random.nextInt(_shoes.length)],
extra: _extras[_random.nextInt(_extras.length)],
mood: _moods[_random.nextInt(_moods.length)],
);
}
}