import 'package:flutter/material.dart';
import '../models/word_model.dart';
import '../widgets/language_badge.dart';

class CategoryScreen extends StatefulWidget {
  final String title;
  final String icon;
  final Color color;
  final List<WordEntry> words;

  const CategoryScreen({
    super.key,
    required this.title,
    required this.icon,
    required this.color,
    required this.words,
  });

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  String _search = '';
  String? _selectedCategory;

  List<String> get _categories {
    final cats = widget.words
        .where((w) => w.category != null)
        .map((w) => w.category!)
        .toSet()
        .toList();
    return cats;
  }

  List<WordEntry> get _filtered {
    return widget.words.where((w) {
      final matchSearch = _search.isEmpty ||
          w.french.toLowerCase().contains(_search.toLowerCase()) ||
          w.english.toLowerCase().contains(_search.toLowerCase()) ||
          w.spanish.toLowerCase().contains(_search.toLowerCase());
      final matchCat =
          _selectedCategory == null || w.category == _selectedCategory;
      return matchSearch && matchCat;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: widget.color,
        title: Text(
          '${widget.icon} ${widget.title}',
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          _SearchBar(onChanged: (v) => setState(() => _search = v)),
          if (_categories.isNotEmpty)
            _CategoryFilterBar(
              categories: _categories,
              selected: _selectedCategory,
              onSelect: (c) => setState(() {
                _selectedCategory = _selectedCategory == c ? null : c;
              }),
            ),
          Expanded(
            child: _filtered.isEmpty
                ? const Center(
                    child: Text(
                      'Aucun résultat',
                      style: TextStyle(color: Colors.grey),
                    ),
                  )
                : ListView.builder(
                    padding: const EdgeInsets.only(bottom: 16),
                    itemCount: _filtered.length,
                    itemBuilder: (context, index) {
                      final w = _filtered[index];
                      return WordCard(
                        french: w.french,
                        english: w.english,
                        spanish: w.spanish,
                        exampleFr: w.example_fr,
                        exampleEn: w.example_en,
                        exampleEs: w.example_es,
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}

class _SearchBar extends StatelessWidget {
  final ValueChanged<String> onChanged;

  const _SearchBar({required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: 'Chercher un mot...',
          prefixIcon: const Icon(Icons.search),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: 0),
        ),
      ),
    );
  }
}

class _CategoryFilterBar extends StatelessWidget {
  final List<String> categories;
  final String? selected;
  final ValueChanged<String> onSelect;

  const _CategoryFilterBar({
    required this.categories,
    required this.selected,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        itemCount: categories.length,
        separatorBuilder: (_, __) => const SizedBox(width: 8),
        itemBuilder: (context, i) {
          final cat = categories[i];
          final isSelected = cat == selected;
          return GestureDetector(
            onTap: () => onSelect(cat),
            child: Chip(
              label: Text(cat, style: const TextStyle(fontSize: 12)),
              backgroundColor: isSelected
                  ? Theme.of(context).colorScheme.primary
                  : Colors.grey.shade200,
              labelStyle: TextStyle(
                color: isSelected ? Colors.white : Colors.black87,
              ),
            ),
          );
        },
      ),
    );
  }
}
