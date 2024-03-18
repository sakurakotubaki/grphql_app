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