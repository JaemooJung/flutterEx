import 'package:flutter/material.dart';

class PocketonDetails extends StatelessWidget {
  const PocketonDetails({Key? key, required this.imageURL, required this.pokemonName, required this.pokemonLevel}) : super(key: key);

  final String imageURL;
  final String pokemonName;
  final int pokemonLevel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Center(
            child: CircleAvatar(
              backgroundImage: NetworkImage(imageURL),
              radius: 100.0,
            ),
          ),
          const Divider(
            thickness: 2,
          ),
          const Text("name"),
          Text(pokemonName),
          const Text("level"),
          Text(pokemonLevel.toString()),
          const Text("Body Blow"),
          const Text("Electric shock"),
          const Text("Attack"),
        ],
      ),
    );
  }
}
