import 'package:flutter/material.dart';
import '../data/conjugations_data.dart';
import '../models/word_model.dart';
import '../theme/app_theme.dart';

class ConjugationListScreen extends StatelessWidget {
  const ConjugationListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF8D6E63),
        title: const Text(
          '📝 Conjugaisons',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: conjugationsData.length,
        itemBuilder: (context, index) {
          final verb = conjugationsData[index];
          return _VerbCard(verb: verb);
        },
      ),
    );
  }
}

class _VerbCard extends StatefulWidget {
  final ConjugationEntry verb;

  const _VerbCard({required this.verb});

  @override
  State<_VerbCard> createState() => _VerbCardState();
}

class _VerbCardState extends State<_VerbCard> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: Column(
        children: [
          ListTile(
            leading: Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: const Color(0xFF8D6E63),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Icon(Icons.text_fields, color: Colors.white),
            ),
            title: Text(
              widget.verb.verb_fr,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('🇬🇧 ${widget.verb.verb_en}',
                    style: const TextStyle(color: AppTheme.english)),
                Text('🇪🇸 ${widget.verb.verb_es}',
                    style: const TextStyle(color: AppTheme.spanish)),
              ],
            ),
            trailing: IconButton(
              icon: Icon(_expanded ? Icons.expand_less : Icons.expand_more),
              onPressed: () => setState(() => _expanded = !_expanded),
            ),
            isThreeLine: true,
          ),
          if (_expanded)
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              child: Column(
                children: widget.verb.tenses.entries.map((tenseEntry) {
                  return _TenseTable(
                    tenseName: tenseEntry.key,
                    conjugations: tenseEntry.value,
                  );
                }).toList(),
              ),
            ),
        ],
      ),
    );
  }
}

class _TenseTable extends StatelessWidget {
  final String tenseName;
  final Map<String, String> conjugations;

  const _TenseTable({
    required this.tenseName,
    required this.conjugations,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 12),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: const Color(0xFF8D6E63).withOpacity(0.15),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            tenseName,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 13,
              color: Color(0xFF6D4C41),
            ),
          ),
        ),
        const SizedBox(height: 8),
        ...conjugations.entries.map((e) => _ConjugationRow(
              pronoun: e.key,
              conjugation: e.value,
            )),
      ],
    );
  }
}

class _ConjugationRow extends StatelessWidget {
  final String pronoun;
  final String conjugation;

  const _ConjugationRow({
    required this.pronoun,
    required this.conjugation,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Text(
              pronoun,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 13,
                color: Colors.grey,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              conjugation,
              style: const TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
