import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import 'category_screen.dart';
import 'conjugation_list_screen.dart';
import 'quiz_screen.dart';
import '../data/vocabulary_data.dart';
import '../data/numbers_data.dart';
import '../data/days_data.dart';
import '../data/phrases_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '🌍 LinguaLearn',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.quiz),
            tooltip: 'Quiz',
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const QuizScreen()),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _WelcomeBanner(),
            const SizedBox(height: 20),
            const Text(
              'Catégories',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            _CategoryGrid(),
          ],
        ),
      ),
    );
  }
}

class _WelcomeBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [AppTheme.primary, Color(0xFF42A5F5)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Apprenez 3 langues !',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Français 🇫🇷 • Anglais 🇬🇧 • Espagnol 🇪🇸',
            style: TextStyle(color: Colors.white70, fontSize: 15),
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              _StatChip(label: 'Mots', count: '200+'),
              const SizedBox(width: 8),
              _StatChip(label: 'Phrases', count: '50+'),
              const SizedBox(width: 8),
              _StatChip(label: 'Verbes', count: '8'),
            ],
          ),
        ],
      ),
    );
  }
}

class _StatChip extends StatelessWidget {
  final String label;
  final String count;

  const _StatChip({required this.label, required this.count});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white24,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        '$count $label',
        style: const TextStyle(color: Colors.white, fontSize: 12),
      ),
    );
  }
}

class _CategoryGrid extends StatelessWidget {
  final List<_CategoryItem> categories = const [
    _CategoryItem(
      title: 'Salutations',
      icon: '👋',
      color: Color(0xFF42A5F5),
      subtitle: '12 expressions',
      type: CategoryType.greetings,
    ),
    _CategoryItem(
      title: 'Nombres',
      icon: '🔢',
      color: Color(0xFF66BB6A),
      subtitle: '36 nombres',
      type: CategoryType.numbers,
    ),
    _CategoryItem(
      title: 'Jours & Mois',
      icon: '📅',
      color: Color(0xFFAB47BC),
      subtitle: 'Jours, mois, saisons',
      type: CategoryType.days,
    ),
    _CategoryItem(
      title: 'Famille',
      icon: '👨‍👩‍👧‍👦',
      color: Color(0xFFEF5350),
      subtitle: '16 mots',
      type: CategoryType.family,
    ),
    _CategoryItem(
      title: 'Couleurs',
      icon: '🎨',
      color: Color(0xFFFF7043),
      subtitle: '14 couleurs',
      type: CategoryType.colors,
    ),
    _CategoryItem(
      title: 'Animaux',
      icon: '🐾',
      color: Color(0xFF26A69A),
      subtitle: '15 animaux',
      type: CategoryType.animals,
    ),
    _CategoryItem(
      title: 'Nourriture',
      icon: '🍎',
      color: Color(0xFFFFA726),
      subtitle: '19 aliments',
      type: CategoryType.food,
    ),
    _CategoryItem(
      title: 'Corps humain',
      icon: '🫀',
      color: Color(0xFFEC407A),
      subtitle: '16 parties',
      type: CategoryType.body,
    ),
    _CategoryItem(
      title: 'Maison',
      icon: '🏠',
      color: Color(0xFF7E57C2),
      subtitle: '14 mots',
      type: CategoryType.house,
    ),
    _CategoryItem(
      title: 'Vêtements',
      icon: '👕',
      color: Color(0xFF29B6F6),
      subtitle: '12 vêtements',
      type: CategoryType.clothes,
    ),
    _CategoryItem(
      title: 'Voyages',
      icon: '✈️',
      color: Color(0xFF26C6DA),
      subtitle: '14 mots',
      type: CategoryType.travel,
    ),
    _CategoryItem(
      title: 'Adjectifs',
      icon: '✨',
      color: Color(0xFFD4E157),
      subtitle: '17 adjectifs',
      type: CategoryType.adjectives,
    ),
    _CategoryItem(
      title: 'Phrases utiles',
      icon: '💬',
      color: Color(0xFF5C6BC0),
      subtitle: '27 phrases',
      type: CategoryType.phrases,
    ),
    _CategoryItem(
      title: 'Conjugaisons',
      icon: '📝',
      color: Color(0xFF8D6E63),
      subtitle: '8 verbes essentiels',
      type: CategoryType.conjugations,
    ),
  ];

  const _CategoryGrid();

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 1.2,
      ),
      itemCount: categories.length,
      itemBuilder: (context, index) {
        final cat = categories[index];
        return _CategoryCard(item: cat);
      },
    );
  }
}

enum CategoryType {
  greetings,
  numbers,
  days,
  family,
  colors,
  animals,
  food,
  body,
  house,
  clothes,
  travel,
  adjectives,
  phrases,
  conjugations,
}

class _CategoryItem {
  final String title;
  final String icon;
  final Color color;
  final String subtitle;
  final CategoryType type;

  const _CategoryItem({
    required this.title,
    required this.icon,
    required this.color,
    required this.subtitle,
    required this.type,
  });
}

class _CategoryCard extends StatelessWidget {
  final _CategoryItem item;

  const _CategoryCard({required this.item});

  void _navigate(BuildContext context) {
    if (item.type == CategoryType.conjugations) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => const ConjugationListScreen()),
      );
      return;
    }

    final data = _getDataForType(item.type);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => CategoryScreen(
          title: item.title,
          icon: item.icon,
          color: item.color,
          words: data,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _navigate(context),
      child: Container(
        decoration: BoxDecoration(
          color: item.color,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: item.color.withOpacity(0.4),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(item.icon, style: const TextStyle(fontSize: 32)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    item.subtitle,
                    style: const TextStyle(color: Colors.white70, fontSize: 12),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List _getDataForType(CategoryType type) {
  switch (type) {
    case CategoryType.greetings:
      return greetingsData;
    case CategoryType.numbers:
      return numbersData;
    case CategoryType.days:
      return [...daysData, ...monthsData, ...seasonsData, ...timeData];
    case CategoryType.family:
      return familyData;
    case CategoryType.colors:
      return colorsData;
    case CategoryType.animals:
      return animalsData;
    case CategoryType.food:
      return foodData;
    case CategoryType.body:
      return bodyData;
    case CategoryType.house:
      return houseData;
    case CategoryType.clothes:
      return clothesData;
    case CategoryType.travel:
      return travelData;
    case CategoryType.adjectives:
      return adjectivesData;
    case CategoryType.phrases:
      return phrasesData;
    default:
      return [];
  }
}
