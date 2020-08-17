import 'package:flutter/material.dart';
import 'package:pictures_app/providers/greate_places.dart';
import 'package:pictures_app/screens/add_place_screen.dart';
import 'package:pictures_app/screens/places_list_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => GreatePlaces(),
      child: MaterialApp(
        title: 'Great Places',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          accentColor: Colors.amber,
        ),
        home: PlacesListScreen(),
        routes: {AddPlaceScreen.routeName: (ctx) => AddPlaceScreen()},
      ),
    );
  }
}
