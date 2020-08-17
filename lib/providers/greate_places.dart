import 'package:flutter/foundation.dart';
import 'package:pictures_app/models/place.dart';

class GreatePlaces with ChangeNotifier {
  List<Place> _items = [];

  List<Place> get items {
    return [..._items];
  }
}
