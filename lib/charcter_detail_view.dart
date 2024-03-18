import 'package:flutter/material.dart';
import 'package:graphql_app/charcter.dart';

class CharacterDetailView extends StatelessWidget {
  final Character character;

  CharacterDetailView({required this.character});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('詳細ページ'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(character.image!),
            Text('キャラクターの名前: ${character.name}'),
          ],
        ),
      ),
    );
  }
}