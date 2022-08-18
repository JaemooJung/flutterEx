import 'package:flutter/material.dart';

class PocketonDetails extends StatelessWidget {
  const PocketonDetails({Key? key, required this.imageURL, required this.pokemonName, required this.pokemonLevel}) : super(key: key);

  final String imageURL;
  final String pokemonName;
  final int pokemonLevel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Poketmon Details'),
      ),
      body: Center(
        child: Text('Hello World'),
      ),
    );
  }
}
