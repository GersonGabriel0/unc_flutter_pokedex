// Comando para fazer as importações necessarias
import 'dart:async';
import 'package:http/http.dart' as http;

// definição da classe do PokeAPI
class PokeAPI {
  //Função para obter os dados do Pokemons da API
  static Future<http.Response> getPokemon() =>
      http.get(Uri.parse("https://pokeapi.co/api/v2/pokemon?limit=1200"));

  //Função para obter os dados do tipos de Pokemons
  static Future<http.Response> getType() =>
      http.get(Uri.parse("https://pokeapi.co/api/v2/type"));

  //Função para obter os dados das habilidades dos Pokemons
  static Future<http.Response> getAbility() =>
      http.get(Uri.parse("https://pokeapi.co/api/v2/ability?limit=400"));

  //Função para obter os dados das Movimentações dos Pokemons
  static Future<http.Response> getMove() =>
      http.get(Uri.parse("https://pokeapi.co/api/v2/move?limit=900"));

  //Função para obter os dados dos items da API de Pokemon
  static Future<http.Response> getItem() =>
      http.get(Uri.parse("https://pokeapi.co/api/v2/item?limit=1700"));
}
