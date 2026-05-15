# 🌍 LinguaLearn - Application Flutter

Application Flutter pour apprendre **l'anglais** et **l'espagnol** en français.

## 📱 Fonctionnalités

### Catégories de vocabulaire
- 👋 **Salutations** — Bonjour, merci, au revoir...
- 🔢 **Nombres** — 0 à 1000, ordinaux
- 📅 **Jours, Mois, Saisons, Temps** — Lundi→Monday→Lunes
- 👨‍👩‍👧‍👦 **Famille** — père, mère, frère...
- 🎨 **Couleurs** — rouge, bleu, vert...
- 🐾 **Animaux** — chien, chat, lion...
- 🍎 **Nourriture** — pain, lait, pomme...
- 🫀 **Corps humain** — tête, bras, jambe...
- 🏠 **Maison** — chambre, cuisine, salon...
- 👕 **Vêtements** — t-shirt, pantalon, robe...
- ✈️ **Voyages** — aéroport, hôtel, billet...
- ✨ **Adjectifs** — grand, beau, heureux...
- 💬 **Phrases utiles** — restaurant, urgences, directions...
- 📝 **Conjugaisons** — 8 verbes essentiels (être, avoir, aller, faire, parler, vouloir, pouvoir, savoir)

### Fonctionnalités
- 🔍 **Recherche** dans chaque catégorie
- 🏷️ **Filtres par sous-catégorie** (ex: Restaurant, Urgences, Directions)
- 🧠 **Quiz interactif** — testez vos connaissances EN/ES
- 3 langues simultanées : Français 🇫🇷 + Anglais 🇬🇧 + Espagnol 🇪🇸
- Exemples de phrases dans les deux langues

## 🚀 Installation

### Prérequis
- Flutter SDK (>= 3.0.0)
- Android Studio ou VS Code avec extensions Flutter/Dart

### Lancer l'application

```bash
cd lingua_app
flutter pub get
flutter run
```

## 📁 Structure du projet

```
lingua_app/
├── lib/
│   ├── main.dart                    # Point d'entrée
│   ├── theme/
│   │   └── app_theme.dart           # Thème et couleurs
│   ├── models/
│   │   └── word_model.dart          # Modèles de données
│   ├── data/
│   │   ├── vocabulary_data.dart     # Vocabulaire (salutations, famille, couleurs...)
│   │   ├── numbers_data.dart        # Nombres 0-1000
│   │   ├── days_data.dart           # Jours, mois, saisons, temps
│   │   ├── phrases_data.dart        # Phrases utiles
│   │   └── conjugations_data.dart   # Conjugaisons des verbes
│   ├── screens/
│   │   ├── home_screen.dart         # Écran d'accueil avec grille
│   │   ├── category_screen.dart     # Liste de mots avec recherche
│   │   ├── conjugation_list_screen.dart  # Tableau de conjugaisons
│   │   └── quiz_screen.dart         # Quiz interactif
│   └── widgets/
│       └── language_badge.dart      # Cartes et badges de langue
└── pubspec.yaml
```

## 📊 Contenu

| Catégorie | Mots/Phrases |
|-----------|-------------|
| Salutations | 12 |
| Nombres | 36 |
| Jours & Temps | 37 |
| Famille | 16 |
| Couleurs | 14 |
| Animaux | 15 |
| Nourriture | 19 |
| Corps humain | 16 |
| Maison | 14 |
| Vêtements | 12 |
| Voyages | 14 |
| Adjectifs | 17 |
| Phrases utiles | 27 |
| Conjugaisons | 8 verbes × 3 temps |
