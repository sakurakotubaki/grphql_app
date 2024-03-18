# graphql_app
FlutterでGraphQLを使う。

[参考にしたサイト](https://qiita.com/HirotakaKouso/items/468c43f727118e315761)

## 🔧使用したパッケージ
今回は、GraphQLのクエリをハードコーディングしないように、自動生成のパッケージを使う。

https://pub.dev/packages/graphql_flutter

https://pub.dev/packages/graphql_codegen

https://pub.dev/packages/build_runner

## 📁 GraphQLのスキーマを定義する
スキーマを定義するファイルを作成する。
```
query GetCharacters($page: Int!, $name: String!) {
    characters(page: $page, filter: { name: $name }) {
        results {
            id
            name
            image
        }
    }
}

query GetLocations {
    locations(page: 1) {
        results {
            id
            name
            type
        }
    }
}

query GetEpisodes {
    episodes(page: 1) {
        results {
            id
            name
            episode
        }
    }
}

```

```
type Query {
    characters(page: Int!, filter: FilterCharacter): Characters
    locations(page: Int!): Locations
    episodes(page: Int!): Episodes
}

type Character {
    id: ID!
    name: String
    image: String
}

type Location {
    id: ID!
    name: String
    type: String
}

type Episode {
    id: ID!
    name: String
    episode: String
}

type Characters {
    results: [Character]
}

type Locations {
    results: [Location]
}

type Episodes {
    results: [Episode]
}

input FilterCharacter {
    name: String
}
```

build.yamlを作成する。
```yaml
targets:
  $default:
    builders:
      graphql_codegen:
        options:
          scopes:
            - lib/graphql/**
          clients:
            - graphql
            - graphql_flutter

```

詳細ページに値を渡すモデルを作成する。
```dart
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
```

値を受け取る詳細ページ。画像とテキストを表示する。
```dart
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
```

APIにPOSTするファイルを作成する。ListをonTapすると、招待ページへ画面遷移する。
```dart
import 'package:flutter/material.dart';
import 'package:graphql_app/charcter.dart';
import 'package:graphql_app/charcter_detail_view.dart';
import 'package:graphql_app/graphql/queries.graphql.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final HttpLink httpLink = HttpLink('https://rickandmortyapi.com/graphql');

    final client = ValueNotifier<GraphQLClient>(
      GraphQLClient(
        cache: GraphQLCache(),
        link: httpLink,
      ),
    );
    return  GraphQLProvider(
      client: client,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const CharacterList(),
      ),
    );
  }
}

class CharacterList extends StatefulWidget {
  const CharacterList({super.key});

  @override
  _CharacterListState createState() => _CharacterListState();
}

class _CharacterListState extends State<CharacterList> {
  String searchText = '';
  int index = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rick and Morty Characters'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Search',
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) {
                      setState(() {
                        searchText = value;
                      });
                    },
                  ),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  if (index > 1) {
                    setState(() {
                      index--;
                    });
                  }
                },
              ),
              IconButton(
                icon: const Icon(Icons.arrow_forward),
                onPressed: () {
                  setState(() {
                    index++;
                  });
                },
              ),
            ],
          ),
          Expanded(
            child: Query$GetCharacters$Widget(
              options: Options$Query$GetCharacters(
                variables: Variables$Query$GetCharacters(
                  page: index,
                  name: searchText,
                ),
              ),
              builder: (
                QueryResult result, {
                VoidCallback? refetch,
                FetchMore? fetchMore,
              }) {
                if (result.isLoading) {
                  return const Center(child: CircularProgressIndicator());
                }

                if (result.hasException) {
                  return Text(result.exception.toString());
                }
                final data = result.data;
                if (data == null) {
                  return const Text('データがありません');
                }

                final charactersResponse =
                    Query$GetCharacters.fromJson(data).characters;
                final characters = charactersResponse!.results; 

                return ListView.builder(
                  itemCount: characters!.length,
                  itemBuilder: (context, index) {
                    final character = characters[index];

                    return ListTile(
                      onTap: () {
                        final arg = Character.fromJson(characters[index]!);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CharacterDetailView(
                              character: arg,
                            ),
                          ),
                        );              
                      },
                      title: Text(character!.name ?? ''),
                      leading: Image.network(character.image ?? ''),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
```