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
        crossAxisAlignment: CrossAxisAlignment.start,
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
          const Text(
            "Name",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          Text(
            pokemonName,
            style: const TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            "level",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          Text(
            'Lv.${pokemonLevel.toString()}',
            style: const TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row (
            children: const [
              Icon(Icons.check_circle_outline),
              Text("Body Blow"),
            ],
          ),
          Row (
            children: const [
              Icon(Icons.check_circle_outline),
              Text("Electric shock"),
            ],
          ),
          Row (
            children: const [
              Icon(Icons.check_circle_outline),
              Text("Attack"),
            ],
          ),
        ],
      ),
    );
  }
}
