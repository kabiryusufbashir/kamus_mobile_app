import 'dart:convert';
import 'package:flutter/services.dart';

class Words {
  int id;
  String wordEnglish;
  String wordHausa;
  String meaning;
  String tilo;
  String jami;
  String singular;
  String plural;
  String similarWordOne;
  String similarWordTwo;
  String similarWordThree;

  Words({
    this.id,
    this.wordEnglish,
    this.wordHausa,
    this.meaning,
    this.tilo,
    this.jami,
    this.singular,
    this.plural,
    this.similarWordOne,
    this.similarWordTwo,
    this.similarWordThree
  });

  factory Words.fromJson(Map<String, dynamic> parsedJson) {
    return Words(
        wordEnglish: parsedJson['wordEnglish'] as String,
        id: parsedJson['id'],
        wordHausa: parsedJson['wordHausa'] as String,
        meaning: parsedJson['meaning'] as String,
        tilo: parsedJson['tilo'] as String,
        jami: parsedJson['jami'] as String,
        singular: parsedJson['singular'] as String,
        plural: parsedJson['plural'] as String,
        similarWordOne: parsedJson['similar_word_one'] as String,
        similarWordTwo: parsedJson['similar_word_two'] as String,
        similarWordThree: parsedJson['similar_word_three'] as String,
    );
  }
}

class WordsViewModel {
  static List<Words> words;

  static Future loadWords() async {
    try {
      words = new List<Words>();
      String jsonString = await rootBundle.loadString("assets/json/words.json");
      Map parsedJson = json.decode(jsonString);
      var categoryJson = parsedJson['words'] as List;
      
      for (int i = 0; i < categoryJson.length; i++) {
        words.add(new Words.fromJson(categoryJson[i]));
      }
      
    } catch (e) {
      print(e);
    }
  }
}