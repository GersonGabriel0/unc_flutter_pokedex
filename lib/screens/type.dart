// importações Geral
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/api/pokeapi.dart';
import 'package:unc_flutter_pokedex/models/TypeModel.dart';
import 'package:unc_flutter_pokedex/widgets/type/pokemon_type_list.dart';

class HomeType extends StatefulWidget {
  const HomeType({Key? key}) : super(key: key);

  @override
  State<HomeType> createState() => _HomeTypeState();
}

class _HomeTypeState extends State<HomeType> {
  List<Type> type = List.empty();

  @override
  void initState() {
    super.initState();
    getTypeFromPokeApi();
  }

  void getTypeFromPokeApi() async {
    PokeAPI.getType().then((response) {
      // transformando os dados recebidos para o formato List
      List<Map<String, dynamic>> data =
          List.from(json.decode(response.body)['results']);
      // definindo valores para a lista de pokemons
      setState(() {
        type = data.asMap().entries.map<Type>((element) {
          element.value['id'] = element.key + 1;
          return Type.fromJson(element.value);
        }).toList();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tipos de Pokemon"),
      ),
      body: TypeList(type: type),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Share',
        child: const Icon(
          Icons.share_rounded,
        ),
      ),
    );
  }
}
