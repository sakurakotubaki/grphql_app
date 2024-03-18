import 'package:graphql_app/graphql/queries.graphql.dart';

class Character {
  final String? name;
  final String? image;

  Character({this.name, this.image});

  factory Character.fromJson(Query$GetCharacters$characters$results json) {
    return Character(
      name: json.name,
      image: json.image,
    );
  }
}