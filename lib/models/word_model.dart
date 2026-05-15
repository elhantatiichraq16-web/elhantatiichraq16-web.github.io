class WordEntry {
  final String french;
  final String english;
  final String spanish;
  final String? example_fr;
  final String? example_en;
  final String? example_es;
  final String? category;

  const WordEntry({
    required this.french,
    required this.english,
    required this.spanish,
    this.example_fr,
    this.example_en,
    this.example_es,
    this.category,
  });
}

class ConjugationEntry {
  final String verb_fr;
  final String verb_en;
  final String verb_es;
  final Map<String, Map<String, String>> tenses; // tense -> pronoun -> conjugation

  const ConjugationEntry({
    required this.verb_fr,
    required this.verb_en,
    required this.verb_es,
    required this.tenses,
  });
}

class Category {
  final String id;
  final String nameFr;
  final String icon;
  final int color;

  const Category({
    required this.id,
    required this.nameFr,
    required this.icon,
    required this.color,
  });
}

enum Language { english, spanish }
