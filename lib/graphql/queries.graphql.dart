import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$GetCharacters {
  factory Variables$Query$GetCharacters({
    required int page,
    required String name,
  }) =>
      Variables$Query$GetCharacters._({
        r'page': page,
        r'name': name,
      });

  Variables$Query$GetCharacters._(this._$data);

  factory Variables$Query$GetCharacters.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$page = data['page'];
    result$data['page'] = (l$page as int);
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    return Variables$Query$GetCharacters._(result$data);
  }

  Map<String, dynamic> _$data;

  int get page => (_$data['page'] as int);

  String get name => (_$data['name'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$page = page;
    result$data['page'] = l$page;
    final l$name = name;
    result$data['name'] = l$name;
    return result$data;
  }

  CopyWith$Variables$Query$GetCharacters<Variables$Query$GetCharacters>
      get copyWith => CopyWith$Variables$Query$GetCharacters(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetCharacters) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$page = page;
    final lOther$page = other.page;
    if (l$page != lOther$page) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$page = page;
    final l$name = name;
    return Object.hashAll([
      l$page,
      l$name,
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetCharacters<TRes> {
  factory CopyWith$Variables$Query$GetCharacters(
    Variables$Query$GetCharacters instance,
    TRes Function(Variables$Query$GetCharacters) then,
  ) = _CopyWithImpl$Variables$Query$GetCharacters;

  factory CopyWith$Variables$Query$GetCharacters.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetCharacters;

  TRes call({
    int? page,
    String? name,
  });
}

class _CopyWithImpl$Variables$Query$GetCharacters<TRes>
    implements CopyWith$Variables$Query$GetCharacters<TRes> {
  _CopyWithImpl$Variables$Query$GetCharacters(
    this._instance,
    this._then,
  );

  final Variables$Query$GetCharacters _instance;

  final TRes Function(Variables$Query$GetCharacters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? page = _undefined,
    Object? name = _undefined,
  }) =>
      _then(Variables$Query$GetCharacters._({
        ..._instance._$data,
        if (page != _undefined && page != null) 'page': (page as int),
        if (name != _undefined && name != null) 'name': (name as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetCharacters<TRes>
    implements CopyWith$Variables$Query$GetCharacters<TRes> {
  _CopyWithStubImpl$Variables$Query$GetCharacters(this._res);

  TRes _res;

  call({
    int? page,
    String? name,
  }) =>
      _res;
}

class Query$GetCharacters {
  Query$GetCharacters({
    this.characters,
    this.$__typename = 'Query',
  });

  factory Query$GetCharacters.fromJson(Map<String, dynamic> json) {
    final l$characters = json['characters'];
    final l$$__typename = json['__typename'];
    return Query$GetCharacters(
      characters: l$characters == null
          ? null
          : Query$GetCharacters$characters.fromJson(
              (l$characters as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetCharacters$characters? characters;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$characters = characters;
    _resultData['characters'] = l$characters?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$characters = characters;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$characters,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetCharacters) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$characters = characters;
    final lOther$characters = other.characters;
    if (l$characters != lOther$characters) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetCharacters on Query$GetCharacters {
  CopyWith$Query$GetCharacters<Query$GetCharacters> get copyWith =>
      CopyWith$Query$GetCharacters(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetCharacters<TRes> {
  factory CopyWith$Query$GetCharacters(
    Query$GetCharacters instance,
    TRes Function(Query$GetCharacters) then,
  ) = _CopyWithImpl$Query$GetCharacters;

  factory CopyWith$Query$GetCharacters.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCharacters;

  TRes call({
    Query$GetCharacters$characters? characters,
    String? $__typename,
  });
  CopyWith$Query$GetCharacters$characters<TRes> get characters;
}

class _CopyWithImpl$Query$GetCharacters<TRes>
    implements CopyWith$Query$GetCharacters<TRes> {
  _CopyWithImpl$Query$GetCharacters(
    this._instance,
    this._then,
  );

  final Query$GetCharacters _instance;

  final TRes Function(Query$GetCharacters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? characters = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetCharacters(
        characters: characters == _undefined
            ? _instance.characters
            : (characters as Query$GetCharacters$characters?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetCharacters$characters<TRes> get characters {
    final local$characters = _instance.characters;
    return local$characters == null
        ? CopyWith$Query$GetCharacters$characters.stub(_then(_instance))
        : CopyWith$Query$GetCharacters$characters(
            local$characters, (e) => call(characters: e));
  }
}

class _CopyWithStubImpl$Query$GetCharacters<TRes>
    implements CopyWith$Query$GetCharacters<TRes> {
  _CopyWithStubImpl$Query$GetCharacters(this._res);

  TRes _res;

  call({
    Query$GetCharacters$characters? characters,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetCharacters$characters<TRes> get characters =>
      CopyWith$Query$GetCharacters$characters.stub(_res);
}

const documentNodeQueryGetCharacters = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetCharacters'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'page')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'name')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'characters'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'page'),
            value: VariableNode(name: NameNode(value: 'page')),
          ),
          ArgumentNode(
            name: NameNode(value: 'filter'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'name'),
                value: VariableNode(name: NameNode(value: 'name')),
              )
            ]),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'results'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'image'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$GetCharacters _parserFn$Query$GetCharacters(Map<String, dynamic> data) =>
    Query$GetCharacters.fromJson(data);
typedef OnQueryComplete$Query$GetCharacters = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetCharacters?,
);

class Options$Query$GetCharacters
    extends graphql.QueryOptions<Query$GetCharacters> {
  Options$Query$GetCharacters({
    String? operationName,
    required Variables$Query$GetCharacters variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetCharacters? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetCharacters? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$GetCharacters(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetCharacters,
          parserFn: _parserFn$Query$GetCharacters,
        );

  final OnQueryComplete$Query$GetCharacters? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetCharacters
    extends graphql.WatchQueryOptions<Query$GetCharacters> {
  WatchOptions$Query$GetCharacters({
    String? operationName,
    required Variables$Query$GetCharacters variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetCharacters? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryGetCharacters,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetCharacters,
        );
}

class FetchMoreOptions$Query$GetCharacters extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetCharacters({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetCharacters variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetCharacters,
        );
}

extension ClientExtension$Query$GetCharacters on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetCharacters>> query$GetCharacters(
          Options$Query$GetCharacters options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$GetCharacters> watchQuery$GetCharacters(
          WatchOptions$Query$GetCharacters options) =>
      this.watchQuery(options);
  void writeQuery$GetCharacters({
    required Query$GetCharacters data,
    required Variables$Query$GetCharacters variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetCharacters),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetCharacters? readQuery$GetCharacters({
    required Variables$Query$GetCharacters variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryGetCharacters),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetCharacters.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetCharacters> useQuery$GetCharacters(
        Options$Query$GetCharacters options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$GetCharacters> useWatchQuery$GetCharacters(
        WatchOptions$Query$GetCharacters options) =>
    graphql_flutter.useWatchQuery(options);

class Query$GetCharacters$Widget
    extends graphql_flutter.Query<Query$GetCharacters> {
  Query$GetCharacters$Widget({
    widgets.Key? key,
    required Options$Query$GetCharacters options,
    required graphql_flutter.QueryBuilder<Query$GetCharacters> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$GetCharacters$characters {
  Query$GetCharacters$characters({
    this.results,
    this.$__typename = 'Characters',
  });

  factory Query$GetCharacters$characters.fromJson(Map<String, dynamic> json) {
    final l$results = json['results'];
    final l$$__typename = json['__typename'];
    return Query$GetCharacters$characters(
      results: (l$results as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$GetCharacters$characters$results.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetCharacters$characters$results?>? results;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$results = results;
    _resultData['results'] = l$results?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$results = results;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$results == null ? null : Object.hashAll(l$results.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetCharacters$characters) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$results = results;
    final lOther$results = other.results;
    if (l$results != null && lOther$results != null) {
      if (l$results.length != lOther$results.length) {
        return false;
      }
      for (int i = 0; i < l$results.length; i++) {
        final l$results$entry = l$results[i];
        final lOther$results$entry = lOther$results[i];
        if (l$results$entry != lOther$results$entry) {
          return false;
        }
      }
    } else if (l$results != lOther$results) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetCharacters$characters
    on Query$GetCharacters$characters {
  CopyWith$Query$GetCharacters$characters<Query$GetCharacters$characters>
      get copyWith => CopyWith$Query$GetCharacters$characters(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetCharacters$characters<TRes> {
  factory CopyWith$Query$GetCharacters$characters(
    Query$GetCharacters$characters instance,
    TRes Function(Query$GetCharacters$characters) then,
  ) = _CopyWithImpl$Query$GetCharacters$characters;

  factory CopyWith$Query$GetCharacters$characters.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCharacters$characters;

  TRes call({
    List<Query$GetCharacters$characters$results?>? results,
    String? $__typename,
  });
  TRes results(
      Iterable<Query$GetCharacters$characters$results?>? Function(
              Iterable<
                  CopyWith$Query$GetCharacters$characters$results<
                      Query$GetCharacters$characters$results>?>?)
          _fn);
}

class _CopyWithImpl$Query$GetCharacters$characters<TRes>
    implements CopyWith$Query$GetCharacters$characters<TRes> {
  _CopyWithImpl$Query$GetCharacters$characters(
    this._instance,
    this._then,
  );

  final Query$GetCharacters$characters _instance;

  final TRes Function(Query$GetCharacters$characters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? results = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetCharacters$characters(
        results: results == _undefined
            ? _instance.results
            : (results as List<Query$GetCharacters$characters$results?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes results(
          Iterable<Query$GetCharacters$characters$results?>? Function(
                  Iterable<
                      CopyWith$Query$GetCharacters$characters$results<
                          Query$GetCharacters$characters$results>?>?)
              _fn) =>
      call(
          results: _fn(_instance.results?.map((e) => e == null
              ? null
              : CopyWith$Query$GetCharacters$characters$results(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$GetCharacters$characters<TRes>
    implements CopyWith$Query$GetCharacters$characters<TRes> {
  _CopyWithStubImpl$Query$GetCharacters$characters(this._res);

  TRes _res;

  call({
    List<Query$GetCharacters$characters$results?>? results,
    String? $__typename,
  }) =>
      _res;

  results(_fn) => _res;
}

class Query$GetCharacters$characters$results {
  Query$GetCharacters$characters$results({
    required this.id,
    this.name,
    this.image,
    this.$__typename = 'Character',
  });

  factory Query$GetCharacters$characters$results.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$image = json['image'];
    final l$$__typename = json['__typename'];
    return Query$GetCharacters$characters$results(
      id: (l$id as String),
      name: (l$name as String?),
      image: (l$image as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? name;

  final String? image;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$image = image;
    _resultData['image'] = l$image;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$image = image;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$image,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetCharacters$characters$results) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetCharacters$characters$results
    on Query$GetCharacters$characters$results {
  CopyWith$Query$GetCharacters$characters$results<
          Query$GetCharacters$characters$results>
      get copyWith => CopyWith$Query$GetCharacters$characters$results(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetCharacters$characters$results<TRes> {
  factory CopyWith$Query$GetCharacters$characters$results(
    Query$GetCharacters$characters$results instance,
    TRes Function(Query$GetCharacters$characters$results) then,
  ) = _CopyWithImpl$Query$GetCharacters$characters$results;

  factory CopyWith$Query$GetCharacters$characters$results.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCharacters$characters$results;

  TRes call({
    String? id,
    String? name,
    String? image,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetCharacters$characters$results<TRes>
    implements CopyWith$Query$GetCharacters$characters$results<TRes> {
  _CopyWithImpl$Query$GetCharacters$characters$results(
    this._instance,
    this._then,
  );

  final Query$GetCharacters$characters$results _instance;

  final TRes Function(Query$GetCharacters$characters$results) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? image = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetCharacters$characters$results(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined ? _instance.name : (name as String?),
        image: image == _undefined ? _instance.image : (image as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetCharacters$characters$results<TRes>
    implements CopyWith$Query$GetCharacters$characters$results<TRes> {
  _CopyWithStubImpl$Query$GetCharacters$characters$results(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? image,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetLocations {
  Query$GetLocations({
    this.locations,
    this.$__typename = 'Query',
  });

  factory Query$GetLocations.fromJson(Map<String, dynamic> json) {
    final l$locations = json['locations'];
    final l$$__typename = json['__typename'];
    return Query$GetLocations(
      locations: l$locations == null
          ? null
          : Query$GetLocations$locations.fromJson(
              (l$locations as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetLocations$locations? locations;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$locations = locations;
    _resultData['locations'] = l$locations?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$locations = locations;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$locations,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetLocations) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$locations = locations;
    final lOther$locations = other.locations;
    if (l$locations != lOther$locations) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetLocations on Query$GetLocations {
  CopyWith$Query$GetLocations<Query$GetLocations> get copyWith =>
      CopyWith$Query$GetLocations(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetLocations<TRes> {
  factory CopyWith$Query$GetLocations(
    Query$GetLocations instance,
    TRes Function(Query$GetLocations) then,
  ) = _CopyWithImpl$Query$GetLocations;

  factory CopyWith$Query$GetLocations.stub(TRes res) =
      _CopyWithStubImpl$Query$GetLocations;

  TRes call({
    Query$GetLocations$locations? locations,
    String? $__typename,
  });
  CopyWith$Query$GetLocations$locations<TRes> get locations;
}

class _CopyWithImpl$Query$GetLocations<TRes>
    implements CopyWith$Query$GetLocations<TRes> {
  _CopyWithImpl$Query$GetLocations(
    this._instance,
    this._then,
  );

  final Query$GetLocations _instance;

  final TRes Function(Query$GetLocations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? locations = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetLocations(
        locations: locations == _undefined
            ? _instance.locations
            : (locations as Query$GetLocations$locations?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetLocations$locations<TRes> get locations {
    final local$locations = _instance.locations;
    return local$locations == null
        ? CopyWith$Query$GetLocations$locations.stub(_then(_instance))
        : CopyWith$Query$GetLocations$locations(
            local$locations, (e) => call(locations: e));
  }
}

class _CopyWithStubImpl$Query$GetLocations<TRes>
    implements CopyWith$Query$GetLocations<TRes> {
  _CopyWithStubImpl$Query$GetLocations(this._res);

  TRes _res;

  call({
    Query$GetLocations$locations? locations,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetLocations$locations<TRes> get locations =>
      CopyWith$Query$GetLocations$locations.stub(_res);
}

const documentNodeQueryGetLocations = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetLocations'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'locations'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'page'),
            value: IntValueNode(value: '1'),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'results'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'type'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$GetLocations _parserFn$Query$GetLocations(Map<String, dynamic> data) =>
    Query$GetLocations.fromJson(data);
typedef OnQueryComplete$Query$GetLocations = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetLocations?,
);

class Options$Query$GetLocations
    extends graphql.QueryOptions<Query$GetLocations> {
  Options$Query$GetLocations({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetLocations? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetLocations? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$GetLocations(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetLocations,
          parserFn: _parserFn$Query$GetLocations,
        );

  final OnQueryComplete$Query$GetLocations? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetLocations
    extends graphql.WatchQueryOptions<Query$GetLocations> {
  WatchOptions$Query$GetLocations({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetLocations? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryGetLocations,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetLocations,
        );
}

class FetchMoreOptions$Query$GetLocations extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetLocations(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryGetLocations,
        );
}

extension ClientExtension$Query$GetLocations on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetLocations>> query$GetLocations(
          [Options$Query$GetLocations? options]) async =>
      await this.query(options ?? Options$Query$GetLocations());
  graphql.ObservableQuery<Query$GetLocations> watchQuery$GetLocations(
          [WatchOptions$Query$GetLocations? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetLocations());
  void writeQuery$GetLocations({
    required Query$GetLocations data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryGetLocations)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetLocations? readQuery$GetLocations({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetLocations)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetLocations.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetLocations> useQuery$GetLocations(
        [Options$Query$GetLocations? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$GetLocations());
graphql.ObservableQuery<Query$GetLocations> useWatchQuery$GetLocations(
        [WatchOptions$Query$GetLocations? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$GetLocations());

class Query$GetLocations$Widget
    extends graphql_flutter.Query<Query$GetLocations> {
  Query$GetLocations$Widget({
    widgets.Key? key,
    Options$Query$GetLocations? options,
    required graphql_flutter.QueryBuilder<Query$GetLocations> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetLocations(),
          builder: builder,
        );
}

class Query$GetLocations$locations {
  Query$GetLocations$locations({
    this.results,
    this.$__typename = 'Locations',
  });

  factory Query$GetLocations$locations.fromJson(Map<String, dynamic> json) {
    final l$results = json['results'];
    final l$$__typename = json['__typename'];
    return Query$GetLocations$locations(
      results: (l$results as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$GetLocations$locations$results.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetLocations$locations$results?>? results;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$results = results;
    _resultData['results'] = l$results?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$results = results;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$results == null ? null : Object.hashAll(l$results.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetLocations$locations) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$results = results;
    final lOther$results = other.results;
    if (l$results != null && lOther$results != null) {
      if (l$results.length != lOther$results.length) {
        return false;
      }
      for (int i = 0; i < l$results.length; i++) {
        final l$results$entry = l$results[i];
        final lOther$results$entry = lOther$results[i];
        if (l$results$entry != lOther$results$entry) {
          return false;
        }
      }
    } else if (l$results != lOther$results) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetLocations$locations
    on Query$GetLocations$locations {
  CopyWith$Query$GetLocations$locations<Query$GetLocations$locations>
      get copyWith => CopyWith$Query$GetLocations$locations(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetLocations$locations<TRes> {
  factory CopyWith$Query$GetLocations$locations(
    Query$GetLocations$locations instance,
    TRes Function(Query$GetLocations$locations) then,
  ) = _CopyWithImpl$Query$GetLocations$locations;

  factory CopyWith$Query$GetLocations$locations.stub(TRes res) =
      _CopyWithStubImpl$Query$GetLocations$locations;

  TRes call({
    List<Query$GetLocations$locations$results?>? results,
    String? $__typename,
  });
  TRes results(
      Iterable<Query$GetLocations$locations$results?>? Function(
              Iterable<
                  CopyWith$Query$GetLocations$locations$results<
                      Query$GetLocations$locations$results>?>?)
          _fn);
}

class _CopyWithImpl$Query$GetLocations$locations<TRes>
    implements CopyWith$Query$GetLocations$locations<TRes> {
  _CopyWithImpl$Query$GetLocations$locations(
    this._instance,
    this._then,
  );

  final Query$GetLocations$locations _instance;

  final TRes Function(Query$GetLocations$locations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? results = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetLocations$locations(
        results: results == _undefined
            ? _instance.results
            : (results as List<Query$GetLocations$locations$results?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes results(
          Iterable<Query$GetLocations$locations$results?>? Function(
                  Iterable<
                      CopyWith$Query$GetLocations$locations$results<
                          Query$GetLocations$locations$results>?>?)
              _fn) =>
      call(
          results: _fn(_instance.results?.map((e) => e == null
              ? null
              : CopyWith$Query$GetLocations$locations$results(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$GetLocations$locations<TRes>
    implements CopyWith$Query$GetLocations$locations<TRes> {
  _CopyWithStubImpl$Query$GetLocations$locations(this._res);

  TRes _res;

  call({
    List<Query$GetLocations$locations$results?>? results,
    String? $__typename,
  }) =>
      _res;

  results(_fn) => _res;
}

class Query$GetLocations$locations$results {
  Query$GetLocations$locations$results({
    required this.id,
    this.name,
    this.type,
    this.$__typename = 'Location',
  });

  factory Query$GetLocations$locations$results.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$type = json['type'];
    final l$$__typename = json['__typename'];
    return Query$GetLocations$locations$results(
      id: (l$id as String),
      name: (l$name as String?),
      type: (l$type as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? name;

  final String? type;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$type = type;
    _resultData['type'] = l$type;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$type = type;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$type,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetLocations$locations$results) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetLocations$locations$results
    on Query$GetLocations$locations$results {
  CopyWith$Query$GetLocations$locations$results<
          Query$GetLocations$locations$results>
      get copyWith => CopyWith$Query$GetLocations$locations$results(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetLocations$locations$results<TRes> {
  factory CopyWith$Query$GetLocations$locations$results(
    Query$GetLocations$locations$results instance,
    TRes Function(Query$GetLocations$locations$results) then,
  ) = _CopyWithImpl$Query$GetLocations$locations$results;

  factory CopyWith$Query$GetLocations$locations$results.stub(TRes res) =
      _CopyWithStubImpl$Query$GetLocations$locations$results;

  TRes call({
    String? id,
    String? name,
    String? type,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetLocations$locations$results<TRes>
    implements CopyWith$Query$GetLocations$locations$results<TRes> {
  _CopyWithImpl$Query$GetLocations$locations$results(
    this._instance,
    this._then,
  );

  final Query$GetLocations$locations$results _instance;

  final TRes Function(Query$GetLocations$locations$results) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? type = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetLocations$locations$results(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined ? _instance.name : (name as String?),
        type: type == _undefined ? _instance.type : (type as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetLocations$locations$results<TRes>
    implements CopyWith$Query$GetLocations$locations$results<TRes> {
  _CopyWithStubImpl$Query$GetLocations$locations$results(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? type,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetEpisodes {
  Query$GetEpisodes({
    this.episodes,
    this.$__typename = 'Query',
  });

  factory Query$GetEpisodes.fromJson(Map<String, dynamic> json) {
    final l$episodes = json['episodes'];
    final l$$__typename = json['__typename'];
    return Query$GetEpisodes(
      episodes: l$episodes == null
          ? null
          : Query$GetEpisodes$episodes.fromJson(
              (l$episodes as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetEpisodes$episodes? episodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$episodes = episodes;
    _resultData['episodes'] = l$episodes?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$episodes = episodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$episodes,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetEpisodes) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$episodes = episodes;
    final lOther$episodes = other.episodes;
    if (l$episodes != lOther$episodes) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetEpisodes on Query$GetEpisodes {
  CopyWith$Query$GetEpisodes<Query$GetEpisodes> get copyWith =>
      CopyWith$Query$GetEpisodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetEpisodes<TRes> {
  factory CopyWith$Query$GetEpisodes(
    Query$GetEpisodes instance,
    TRes Function(Query$GetEpisodes) then,
  ) = _CopyWithImpl$Query$GetEpisodes;

  factory CopyWith$Query$GetEpisodes.stub(TRes res) =
      _CopyWithStubImpl$Query$GetEpisodes;

  TRes call({
    Query$GetEpisodes$episodes? episodes,
    String? $__typename,
  });
  CopyWith$Query$GetEpisodes$episodes<TRes> get episodes;
}

class _CopyWithImpl$Query$GetEpisodes<TRes>
    implements CopyWith$Query$GetEpisodes<TRes> {
  _CopyWithImpl$Query$GetEpisodes(
    this._instance,
    this._then,
  );

  final Query$GetEpisodes _instance;

  final TRes Function(Query$GetEpisodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? episodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetEpisodes(
        episodes: episodes == _undefined
            ? _instance.episodes
            : (episodes as Query$GetEpisodes$episodes?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetEpisodes$episodes<TRes> get episodes {
    final local$episodes = _instance.episodes;
    return local$episodes == null
        ? CopyWith$Query$GetEpisodes$episodes.stub(_then(_instance))
        : CopyWith$Query$GetEpisodes$episodes(
            local$episodes, (e) => call(episodes: e));
  }
}

class _CopyWithStubImpl$Query$GetEpisodes<TRes>
    implements CopyWith$Query$GetEpisodes<TRes> {
  _CopyWithStubImpl$Query$GetEpisodes(this._res);

  TRes _res;

  call({
    Query$GetEpisodes$episodes? episodes,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetEpisodes$episodes<TRes> get episodes =>
      CopyWith$Query$GetEpisodes$episodes.stub(_res);
}

const documentNodeQueryGetEpisodes = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetEpisodes'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'episodes'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'page'),
            value: IntValueNode(value: '1'),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'results'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'episode'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$GetEpisodes _parserFn$Query$GetEpisodes(Map<String, dynamic> data) =>
    Query$GetEpisodes.fromJson(data);
typedef OnQueryComplete$Query$GetEpisodes = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetEpisodes?,
);

class Options$Query$GetEpisodes
    extends graphql.QueryOptions<Query$GetEpisodes> {
  Options$Query$GetEpisodes({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetEpisodes? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetEpisodes? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$GetEpisodes(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetEpisodes,
          parserFn: _parserFn$Query$GetEpisodes,
        );

  final OnQueryComplete$Query$GetEpisodes? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetEpisodes
    extends graphql.WatchQueryOptions<Query$GetEpisodes> {
  WatchOptions$Query$GetEpisodes({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetEpisodes? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryGetEpisodes,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetEpisodes,
        );
}

class FetchMoreOptions$Query$GetEpisodes extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetEpisodes({required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryGetEpisodes,
        );
}

extension ClientExtension$Query$GetEpisodes on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetEpisodes>> query$GetEpisodes(
          [Options$Query$GetEpisodes? options]) async =>
      await this.query(options ?? Options$Query$GetEpisodes());
  graphql.ObservableQuery<Query$GetEpisodes> watchQuery$GetEpisodes(
          [WatchOptions$Query$GetEpisodes? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetEpisodes());
  void writeQuery$GetEpisodes({
    required Query$GetEpisodes data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryGetEpisodes)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetEpisodes? readQuery$GetEpisodes({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryGetEpisodes)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetEpisodes.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetEpisodes> useQuery$GetEpisodes(
        [Options$Query$GetEpisodes? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$GetEpisodes());
graphql.ObservableQuery<Query$GetEpisodes> useWatchQuery$GetEpisodes(
        [WatchOptions$Query$GetEpisodes? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$GetEpisodes());

class Query$GetEpisodes$Widget
    extends graphql_flutter.Query<Query$GetEpisodes> {
  Query$GetEpisodes$Widget({
    widgets.Key? key,
    Options$Query$GetEpisodes? options,
    required graphql_flutter.QueryBuilder<Query$GetEpisodes> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetEpisodes(),
          builder: builder,
        );
}

class Query$GetEpisodes$episodes {
  Query$GetEpisodes$episodes({
    this.results,
    this.$__typename = 'Episodes',
  });

  factory Query$GetEpisodes$episodes.fromJson(Map<String, dynamic> json) {
    final l$results = json['results'];
    final l$$__typename = json['__typename'];
    return Query$GetEpisodes$episodes(
      results: (l$results as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$GetEpisodes$episodes$results.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetEpisodes$episodes$results?>? results;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$results = results;
    _resultData['results'] = l$results?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$results = results;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$results == null ? null : Object.hashAll(l$results.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetEpisodes$episodes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$results = results;
    final lOther$results = other.results;
    if (l$results != null && lOther$results != null) {
      if (l$results.length != lOther$results.length) {
        return false;
      }
      for (int i = 0; i < l$results.length; i++) {
        final l$results$entry = l$results[i];
        final lOther$results$entry = lOther$results[i];
        if (l$results$entry != lOther$results$entry) {
          return false;
        }
      }
    } else if (l$results != lOther$results) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetEpisodes$episodes
    on Query$GetEpisodes$episodes {
  CopyWith$Query$GetEpisodes$episodes<Query$GetEpisodes$episodes>
      get copyWith => CopyWith$Query$GetEpisodes$episodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetEpisodes$episodes<TRes> {
  factory CopyWith$Query$GetEpisodes$episodes(
    Query$GetEpisodes$episodes instance,
    TRes Function(Query$GetEpisodes$episodes) then,
  ) = _CopyWithImpl$Query$GetEpisodes$episodes;

  factory CopyWith$Query$GetEpisodes$episodes.stub(TRes res) =
      _CopyWithStubImpl$Query$GetEpisodes$episodes;

  TRes call({
    List<Query$GetEpisodes$episodes$results?>? results,
    String? $__typename,
  });
  TRes results(
      Iterable<Query$GetEpisodes$episodes$results?>? Function(
              Iterable<
                  CopyWith$Query$GetEpisodes$episodes$results<
                      Query$GetEpisodes$episodes$results>?>?)
          _fn);
}

class _CopyWithImpl$Query$GetEpisodes$episodes<TRes>
    implements CopyWith$Query$GetEpisodes$episodes<TRes> {
  _CopyWithImpl$Query$GetEpisodes$episodes(
    this._instance,
    this._then,
  );

  final Query$GetEpisodes$episodes _instance;

  final TRes Function(Query$GetEpisodes$episodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? results = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetEpisodes$episodes(
        results: results == _undefined
            ? _instance.results
            : (results as List<Query$GetEpisodes$episodes$results?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes results(
          Iterable<Query$GetEpisodes$episodes$results?>? Function(
                  Iterable<
                      CopyWith$Query$GetEpisodes$episodes$results<
                          Query$GetEpisodes$episodes$results>?>?)
              _fn) =>
      call(
          results: _fn(_instance.results?.map((e) => e == null
              ? null
              : CopyWith$Query$GetEpisodes$episodes$results(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$GetEpisodes$episodes<TRes>
    implements CopyWith$Query$GetEpisodes$episodes<TRes> {
  _CopyWithStubImpl$Query$GetEpisodes$episodes(this._res);

  TRes _res;

  call({
    List<Query$GetEpisodes$episodes$results?>? results,
    String? $__typename,
  }) =>
      _res;

  results(_fn) => _res;
}

class Query$GetEpisodes$episodes$results {
  Query$GetEpisodes$episodes$results({
    required this.id,
    this.name,
    this.episode,
    this.$__typename = 'Episode',
  });

  factory Query$GetEpisodes$episodes$results.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$episode = json['episode'];
    final l$$__typename = json['__typename'];
    return Query$GetEpisodes$episodes$results(
      id: (l$id as String),
      name: (l$name as String?),
      episode: (l$episode as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? name;

  final String? episode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$episode = episode;
    _resultData['episode'] = l$episode;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$episode = episode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$episode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetEpisodes$episodes$results) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$episode = episode;
    final lOther$episode = other.episode;
    if (l$episode != lOther$episode) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetEpisodes$episodes$results
    on Query$GetEpisodes$episodes$results {
  CopyWith$Query$GetEpisodes$episodes$results<
          Query$GetEpisodes$episodes$results>
      get copyWith => CopyWith$Query$GetEpisodes$episodes$results(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetEpisodes$episodes$results<TRes> {
  factory CopyWith$Query$GetEpisodes$episodes$results(
    Query$GetEpisodes$episodes$results instance,
    TRes Function(Query$GetEpisodes$episodes$results) then,
  ) = _CopyWithImpl$Query$GetEpisodes$episodes$results;

  factory CopyWith$Query$GetEpisodes$episodes$results.stub(TRes res) =
      _CopyWithStubImpl$Query$GetEpisodes$episodes$results;

  TRes call({
    String? id,
    String? name,
    String? episode,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetEpisodes$episodes$results<TRes>
    implements CopyWith$Query$GetEpisodes$episodes$results<TRes> {
  _CopyWithImpl$Query$GetEpisodes$episodes$results(
    this._instance,
    this._then,
  );

  final Query$GetEpisodes$episodes$results _instance;

  final TRes Function(Query$GetEpisodes$episodes$results) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? episode = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetEpisodes$episodes$results(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined ? _instance.name : (name as String?),
        episode:
            episode == _undefined ? _instance.episode : (episode as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetEpisodes$episodes$results<TRes>
    implements CopyWith$Query$GetEpisodes$episodes$results<TRes> {
  _CopyWithStubImpl$Query$GetEpisodes$episodes$results(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? episode,
    String? $__typename,
  }) =>
      _res;
}
