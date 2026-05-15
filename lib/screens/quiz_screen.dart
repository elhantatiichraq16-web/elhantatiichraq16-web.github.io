import 'dart:math';
import 'package:flutter/material.dart';
import '../models/word_model.dart';
import '../data/vocabulary_data.dart';
import '../data/numbers_data.dart';
import '../data/days_data.dart';
import '../theme/app_theme.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  final Random _random = Random();
  late List<WordEntry> _allWords;
  late WordEntry _currentWord;
  late Language _targetLang;
  late List<String> _options;
  int _score = 0;
  int _total = 0;
  String? _selectedAnswer;
  bool _answered = false;

  @override
  void initState() {
    super.initState();
    _allWords = [
      ...greetingsData,
      ...familyData,
      ...colorsData,
      ...animalsData,
      ...foodData,
      ...bodyData,
      ...houseData,
      ...numbersData.take(20).toList(),
      ...daysData,
    ];
    _nextQuestion();
  }

  void _nextQuestion() {
    _currentWord = _allWords[_random.nextInt(_allWords.length)];
    _targetLang = _random.nextBool() ? Language.english : Language.spanish;
    _options = _buildOptions();
    _selectedAnswer = null;
    _answered = false;
  }

  List<String> _buildOptions() {
    final correctAnswer = _targetLang == Language.english
        ? _currentWord.english
        : _currentWord.spanish;

    final wrongOptions = <String>{};
    while (wrongOptions.length < 3) {
      final randomWord = _allWords[_random.nextInt(_allWords.length)];
      final option = _targetLang == Language.english
          ? randomWord.english
          : randomWord.spanish;
      if (option != correctAnswer) {
        wrongOptions.add(option);
      }
    }

    final options = [correctAnswer, ...wrongOptions];
    options.shuffle(_random);
    return options;
  }

  String get _correctAnswer => _targetLang == Language.english
      ? _currentWord.english
      : _currentWord.spanish;

  void _answer(String choice) {
    if (_answered) return;
    setState(() {
      _selectedAnswer = choice;
      _answered = true;
      _total++;
      if (choice == _correctAnswer) _score++;
    });
  }

  void _next() {
    setState(() => _nextQuestion());
  }

  @override
  Widget build(BuildContext context) {
    final langLabel = _targetLang == Language.english ? '🇬🇧 Anglais' : '🇪🇸 Espagnol';
    final pct = _total == 0 ? 0.0 : _score / _total;

    return Scaffold(
      appBar: AppBar(
        title: const Text('🧠 Quiz', style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Text(
              '$_score / $_total',
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            LinearProgressIndicator(
              value: pct,
              backgroundColor: Colors.grey.shade200,
              valueColor: AlwaysStoppedAnimation<Color>(
                pct > 0.7 ? AppTheme.secondary : AppTheme.primary,
              ),
              minHeight: 8,
              borderRadius: BorderRadius.circular(4),
            ),
            const SizedBox(height: 24),
            _QuestionCard(
              french: _currentWord.french,
              targetLang: langLabel,
            ),
            const SizedBox(height: 24),
            ...(_options.map((opt) => _OptionButton(
                  option: opt,
                  isSelected: _selectedAnswer == opt,
                  isCorrect: _answered && opt == _correctAnswer,
                  isWrong: _answered && _selectedAnswer == opt && opt != _correctAnswer,
                  onTap: () => _answer(opt),
                ))),
            if (_answered) ...[
              const SizedBox(height: 20),
              _AnswerFeedback(
                isCorrect: _selectedAnswer == _correctAnswer,
                correctAnswer: _correctAnswer,
              ),
              const SizedBox(height: 12),
              ElevatedButton(
                onPressed: _next,
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                ),
                child: const Text('Question suivante →', style: TextStyle(fontSize: 16)),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class _QuestionCard extends StatelessWidget {
  final String french;
  final String targetLang;

  const _QuestionCard({required this.french, required this.targetLang});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppTheme.primary,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Text(
            'Comment dit-on en $targetLang ?',
            style: const TextStyle(color: Colors.white70, fontSize: 14),
          ),
          const SizedBox(height: 12),
          Text(
            '🇫🇷 $french',
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class _OptionButton extends StatelessWidget {
  final String option;
  final bool isSelected;
  final bool isCorrect;
  final bool isWrong;
  final VoidCallback onTap;

  const _OptionButton({
    required this.option,
    required this.isSelected,
    required this.isCorrect,
    required this.isWrong,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    Color bgColor = Colors.white;
    Color borderColor = Colors.grey.shade300;
    Color textColor = Colors.black87;

    if (isCorrect) {
      bgColor = const Color(0xFFE8F5E9);
      borderColor = AppTheme.secondary;
      textColor = AppTheme.secondary;
    } else if (isWrong) {
      bgColor = const Color(0xFFFFEBEE);
      borderColor = Colors.red;
      textColor = Colors.red;
    }

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: borderColor, width: 2),
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                option,
                style: TextStyle(fontSize: 15, color: textColor, fontWeight: FontWeight.w500),
              ),
            ),
            if (isCorrect) const Icon(Icons.check_circle, color: AppTheme.secondary),
            if (isWrong) const Icon(Icons.cancel, color: Colors.red),
          ],
        ),
      ),
    );
  }
}

class _AnswerFeedback extends StatelessWidget {
  final bool isCorrect;
  final String correctAnswer;

  const _AnswerFeedback({required this.isCorrect, required this.correctAnswer});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: isCorrect
            ? const Color(0xFFE8F5E9)
            : const Color(0xFFFFEBEE),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        isCorrect
            ? '✅ Bravo ! Bonne réponse !'
            : '❌ La bonne réponse était : $correctAnswer',
        style: TextStyle(
          color: isCorrect ? AppTheme.secondary : Colors.red,
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
