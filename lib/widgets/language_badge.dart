import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class LanguageBadge extends StatelessWidget {
  final String language;
  final Color color;
  final String flag;

  const LanguageBadge({
    super.key,
    required this.language,
    required this.color,
    required this.flag,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: color.withOpacity(0.15),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: color, width: 1.5),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(flag, style: const TextStyle(fontSize: 16)),
          const SizedBox(width: 4),
          Text(
            language,
            style: TextStyle(
              color: color,
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}

class WordCard extends StatelessWidget {
  final String french;
  final String english;
  final String spanish;
  final String? exampleFr;
  final String? exampleEn;
  final String? exampleEs;

  const WordCard({
    super.key,
    required this.french,
    required this.english,
    required this.spanish,
    this.exampleFr,
    this.exampleEn,
    this.exampleEs,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _LangRow(
              flag: '🇫🇷',
              color: AppTheme.french,
              label: 'FR',
              text: french,
            ),
            const Divider(height: 20),
            _LangRow(
              flag: '🇬🇧',
              color: AppTheme.english,
              label: 'EN',
              text: english,
            ),
            const SizedBox(height: 8),
            _LangRow(
              flag: '🇪🇸',
              color: AppTheme.spanish,
              label: 'ES',
              text: spanish,
            ),
            if (exampleFr != null) ...[
              const Divider(height: 20),
              _ExampleSection(
                frExample: exampleFr!,
                enExample: exampleEn,
                esExample: exampleEs,
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class _LangRow extends StatelessWidget {
  final String flag;
  final Color color;
  final String label;
  final String text;

  const _LangRow({
    required this.flag,
    required this.color,
    required this.label,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(flag, style: const TextStyle(fontSize: 20)),
        const SizedBox(width: 8),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Text(
            label,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 11,
            ),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}

class _ExampleSection extends StatelessWidget {
  final String frExample;
  final String? enExample;
  final String? esExample;

  const _ExampleSection({
    required this.frExample,
    this.enExample,
    this.esExample,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Exemples :',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 13,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 6),
          Text('🇫🇷 $frExample', style: const TextStyle(fontSize: 13)),
          if (enExample != null) ...[
            const SizedBox(height: 4),
            Text('🇬🇧 $enExample', style: const TextStyle(fontSize: 13)),
          ],
          if (esExample != null) ...[
            const SizedBox(height: 4),
            Text('🇪🇸 $esExample', style: const TextStyle(fontSize: 13)),
          ],
        ],
      ),
    );
  }
}
