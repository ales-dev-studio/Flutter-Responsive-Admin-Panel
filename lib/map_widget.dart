import 'dart:developer';

import 'package:countries_world_map/countries_world_map.dart';
import 'package:countries_world_map/data/maps/world_map.dart';
import 'package:flutter/material.dart';

class MapWidget extends StatelessWidget {
  const MapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      width: MediaQuery.of(context).size.width,
      child: SimpleMap(
        countryBorder: CountryBorder(color: Colors.grey),
        instructions: SMapWorld.instructionsMercator,
        callback: (id, name, tabDetails) {
          log((id + name).toString());
        },
        colors: SMapWorldColors(
          rU: Colors.deepPurpleAccent,
          uS: Colors.deepPurpleAccent,
          cA:  Colors.deepPurpleAccent,
        ).toMap(),
      ),
    );
  }
}
