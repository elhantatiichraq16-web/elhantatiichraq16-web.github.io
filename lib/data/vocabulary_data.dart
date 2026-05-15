import '../models/word_model.dart';

// ---- SALUTATIONS ----
const List<WordEntry> greetingsData = [
  WordEntry(
    french: 'Bonjour',
    english: 'Hello / Good morning',
    spanish: 'Hola / Buenos días',
    example_fr: 'Bonjour, comment allez-vous ?',
    example_en: 'Hello, how are you?',
    example_es: '¡Hola, cómo estás?',
  ),
  WordEntry(
    french: 'Bonsoir',
    english: 'Good evening',
    spanish: 'Buenas noches',
    example_fr: 'Bonsoir, bonne nuit !',
    example_en: 'Good evening, good night!',
    example_es: '¡Buenas noches!',
  ),
  WordEntry(
    french: 'Au revoir',
    english: 'Goodbye',
    spanish: 'Adiós',
    example_fr: 'Au revoir, à bientôt !',
    example_en: 'Goodbye, see you soon!',
    example_es: '¡Adiós, hasta pronto!',
  ),
  WordEntry(
    french: 'Merci',
    english: 'Thank you',
    spanish: 'Gracias',
    example_fr: 'Merci beaucoup !',
    example_en: 'Thank you very much!',
    example_es: '¡Muchas gracias!',
  ),
  WordEntry(
    french: 'S\'il vous plaît',
    english: 'Please',
    spanish: 'Por favor',
    example_fr: 'Un café, s\'il vous plaît.',
    example_en: 'A coffee, please.',
    example_es: 'Un café, por favor.',
  ),
  WordEntry(
    french: 'Excusez-moi',
    english: 'Excuse me',
    spanish: 'Disculpe',
    example_fr: 'Excusez-moi, où est la gare ?',
    example_en: 'Excuse me, where is the station?',
    example_es: 'Disculpe, ¿dónde está la estación?',
  ),
  WordEntry(
    french: 'Désolé(e)',
    english: 'Sorry',
    spanish: 'Lo siento',
    example_fr: 'Je suis désolé pour le retard.',
    example_en: 'I am sorry for the delay.',
    example_es: 'Lo siento por el retraso.',
  ),
  WordEntry(
    french: 'Oui',
    english: 'Yes',
    spanish: 'Sí',
  ),
  WordEntry(
    french: 'Non',
    english: 'No',
    spanish: 'No',
  ),
  WordEntry(
    french: 'Comment allez-vous ?',
    english: 'How are you?',
    spanish: '¿Cómo está usted?',
  ),
  WordEntry(
    french: 'Je vais bien',
    english: 'I am fine',
    spanish: 'Estoy bien',
  ),
  WordEntry(
    french: 'Enchanté(e)',
    english: 'Nice to meet you',
    spanish: 'Encantado/a',
  ),
];

// ---- FAMILLE ----
const List<WordEntry> familyData = [
  WordEntry(french: 'La famille', english: 'Family', spanish: 'La familia'),
  WordEntry(french: 'Le père', english: 'Father', spanish: 'El padre'),
  WordEntry(french: 'La mère', english: 'Mother', spanish: 'La madre'),
  WordEntry(french: 'Le fils', english: 'Son', spanish: 'El hijo'),
  WordEntry(french: 'La fille', english: 'Daughter', spanish: 'La hija'),
  WordEntry(french: 'Le frère', english: 'Brother', spanish: 'El hermano'),
  WordEntry(french: 'La sœur', english: 'Sister', spanish: 'La hermana'),
  WordEntry(french: 'Le grand-père', english: 'Grandfather', spanish: 'El abuelo'),
  WordEntry(french: 'La grand-mère', english: 'Grandmother', spanish: 'La abuela'),
  WordEntry(french: 'L\'oncle', english: 'Uncle', spanish: 'El tío'),
  WordEntry(french: 'La tante', english: 'Aunt', spanish: 'La tía'),
  WordEntry(french: 'Le cousin / La cousine', english: 'Cousin', spanish: 'El primo / La prima'),
  WordEntry(french: 'Le mari', english: 'Husband', spanish: 'El marido'),
  WordEntry(french: 'La femme / L\'épouse', english: 'Wife', spanish: 'La esposa'),
  WordEntry(french: 'L\'enfant', english: 'Child', spanish: 'El niño / La niña'),
  WordEntry(french: 'Les parents', english: 'Parents', spanish: 'Los padres'),
];

// ---- COULEURS ----
const List<WordEntry> colorsData = [
  WordEntry(french: 'Rouge', english: 'Red', spanish: 'Rojo'),
  WordEntry(french: 'Bleu(e)', english: 'Blue', spanish: 'Azul'),
  WordEntry(french: 'Vert(e)', english: 'Green', spanish: 'Verde'),
  WordEntry(french: 'Jaune', english: 'Yellow', spanish: 'Amarillo'),
  WordEntry(french: 'Orange', english: 'Orange', spanish: 'Naranja'),
  WordEntry(french: 'Violet(te)', english: 'Purple', spanish: 'Morado / Violeta'),
  WordEntry(french: 'Rose', english: 'Pink', spanish: 'Rosa'),
  WordEntry(french: 'Noir(e)', english: 'Black', spanish: 'Negro'),
  WordEntry(french: 'Blanc(he)', english: 'White', spanish: 'Blanco'),
  WordEntry(french: 'Gris(e)', english: 'Grey', spanish: 'Gris'),
  WordEntry(french: 'Marron', english: 'Brown', spanish: 'Marrón'),
  WordEntry(french: 'Beige', english: 'Beige', spanish: 'Beige'),
  WordEntry(french: 'Or', english: 'Gold', spanish: 'Dorado'),
  WordEntry(french: 'Argent', english: 'Silver', spanish: 'Plateado'),
];

// ---- ANIMAUX ----
const List<WordEntry> animalsData = [
  WordEntry(french: 'Le chien', english: 'Dog', spanish: 'El perro'),
  WordEntry(french: 'Le chat', english: 'Cat', spanish: 'El gato'),
  WordEntry(french: 'Le cheval', english: 'Horse', spanish: 'El caballo'),
  WordEntry(french: 'La vache', english: 'Cow', spanish: 'La vaca'),
  WordEntry(french: 'Le mouton', english: 'Sheep', spanish: 'La oveja'),
  WordEntry(french: 'Le cochon', english: 'Pig', spanish: 'El cerdo'),
  WordEntry(french: 'La poule', english: 'Hen / Chicken', spanish: 'La gallina'),
  WordEntry(french: 'Le lion', english: 'Lion', spanish: 'El león'),
  WordEntry(french: 'L\'éléphant', english: 'Elephant', spanish: 'El elefante'),
  WordEntry(french: 'Le singe', english: 'Monkey', spanish: 'El mono'),
  WordEntry(french: 'L\'oiseau', english: 'Bird', spanish: 'El pájaro'),
  WordEntry(french: 'Le poisson', english: 'Fish', spanish: 'El pez'),
  WordEntry(french: 'Le lapin', english: 'Rabbit', spanish: 'El conejo'),
  WordEntry(french: 'La tortue', english: 'Turtle', spanish: 'La tortuga'),
  WordEntry(french: 'Le serpent', english: 'Snake', spanish: 'La serpiente'),
];

// ---- NOURRITURE ----
const List<WordEntry> foodData = [
  WordEntry(french: 'Le pain', english: 'Bread', spanish: 'El pan'),
  WordEntry(french: 'Le lait', english: 'Milk', spanish: 'La leche'),
  WordEntry(french: 'L\'eau', english: 'Water', spanish: 'El agua'),
  WordEntry(french: 'Le café', english: 'Coffee', spanish: 'El café'),
  WordEntry(french: 'Le thé', english: 'Tea', spanish: 'El té'),
  WordEntry(french: 'Le jus', english: 'Juice', spanish: 'El jugo'),
  WordEntry(french: 'La pomme', english: 'Apple', spanish: 'La manzana'),
  WordEntry(french: 'La banane', english: 'Banana', spanish: 'El plátano'),
  WordEntry(french: 'L\'orange', english: 'Orange', spanish: 'La naranja'),
  WordEntry(french: 'La tomate', english: 'Tomato', spanish: 'El tomate'),
  WordEntry(french: 'La salade', english: 'Salad', spanish: 'La ensalada'),
  WordEntry(french: 'Le riz', english: 'Rice', spanish: 'El arroz'),
  WordEntry(french: 'La viande', english: 'Meat', spanish: 'La carne'),
  WordEntry(french: 'Le poulet', english: 'Chicken', spanish: 'El pollo'),
  WordEntry(french: 'Le fromage', english: 'Cheese', spanish: 'El queso'),
  WordEntry(french: 'L\'œuf', english: 'Egg', spanish: 'El huevo'),
  WordEntry(french: 'Le sucre', english: 'Sugar', spanish: 'El azúcar'),
  WordEntry(french: 'Le sel', english: 'Salt', spanish: 'La sal'),
  WordEntry(french: 'Le beurre', english: 'Butter', spanish: 'La mantequilla'),
];

// ---- CORPS HUMAIN ----
const List<WordEntry> bodyData = [
  WordEntry(french: 'La tête', english: 'Head', spanish: 'La cabeza'),
  WordEntry(french: 'L\'œil / Les yeux', english: 'Eye / Eyes', spanish: 'El ojo / Los ojos'),
  WordEntry(french: 'Le nez', english: 'Nose', spanish: 'La nariz'),
  WordEntry(french: 'La bouche', english: 'Mouth', spanish: 'La boca'),
  WordEntry(french: 'L\'oreille', english: 'Ear', spanish: 'La oreja'),
  WordEntry(french: 'Les cheveux', english: 'Hair', spanish: 'El cabello / El pelo'),
  WordEntry(french: 'Le cou', english: 'Neck', spanish: 'El cuello'),
  WordEntry(french: 'L\'épaule', english: 'Shoulder', spanish: 'El hombro'),
  WordEntry(french: 'Le bras', english: 'Arm', spanish: 'El brazo'),
  WordEntry(french: 'La main', english: 'Hand', spanish: 'La mano'),
  WordEntry(french: 'Le doigt', english: 'Finger', spanish: 'El dedo'),
  WordEntry(french: 'Le ventre', english: 'Belly / Stomach', spanish: 'El vientre'),
  WordEntry(french: 'La jambe', english: 'Leg', spanish: 'La pierna'),
  WordEntry(french: 'Le pied', english: 'Foot', spanish: 'El pie'),
  WordEntry(french: 'Le genou', english: 'Knee', spanish: 'La rodilla'),
  WordEntry(french: 'Le dos', english: 'Back', spanish: 'La espalda'),
];

// ---- MAISON ----
const List<WordEntry> houseData = [
  WordEntry(french: 'La maison', english: 'House', spanish: 'La casa'),
  WordEntry(french: 'La chambre', english: 'Bedroom', spanish: 'El dormitorio'),
  WordEntry(french: 'La cuisine', english: 'Kitchen', spanish: 'La cocina'),
  WordEntry(french: 'Le salon', english: 'Living room', spanish: 'El salón'),
  WordEntry(french: 'La salle de bain', english: 'Bathroom', spanish: 'El baño'),
  WordEntry(french: 'La porte', english: 'Door', spanish: 'La puerta'),
  WordEntry(french: 'La fenêtre', english: 'Window', spanish: 'La ventana'),
  WordEntry(french: 'Le lit', english: 'Bed', spanish: 'La cama'),
  WordEntry(french: 'La chaise', english: 'Chair', spanish: 'La silla'),
  WordEntry(french: 'La table', english: 'Table', spanish: 'La mesa'),
  WordEntry(french: 'Le canapé', english: 'Sofa / Couch', spanish: 'El sofá'),
  WordEntry(french: 'L\'armoire', english: 'Wardrobe', spanish: 'El armario'),
  WordEntry(french: 'L\'escalier', english: 'Stairs', spanish: 'Las escaleras'),
  WordEntry(french: 'Le jardin', english: 'Garden', spanish: 'El jardín'),
];

// ---- VETEMENTS ----
const List<WordEntry> clothesData = [
  WordEntry(french: 'Le t-shirt', english: 'T-shirt', spanish: 'La camiseta'),
  WordEntry(french: 'Le pantalon', english: 'Trousers / Pants', spanish: 'Los pantalones'),
  WordEntry(french: 'La robe', english: 'Dress', spanish: 'El vestido'),
  WordEntry(french: 'La jupe', english: 'Skirt', spanish: 'La falda'),
  WordEntry(french: 'La veste', english: 'Jacket', spanish: 'La chaqueta'),
  WordEntry(french: 'Le manteau', english: 'Coat', spanish: 'El abrigo'),
  WordEntry(french: 'Les chaussures', english: 'Shoes', spanish: 'Los zapatos'),
  WordEntry(french: 'Les chaussettes', english: 'Socks', spanish: 'Los calcetines'),
  WordEntry(french: 'Le chapeau', english: 'Hat', spanish: 'El sombrero'),
  WordEntry(french: 'L\'écharpe', english: 'Scarf', spanish: 'La bufanda'),
  WordEntry(french: 'Les gants', english: 'Gloves', spanish: 'Los guantes'),
  WordEntry(french: 'Le pull', english: 'Sweater', spanish: 'El jersey'),
];

// ---- VOYAGES ----
const List<WordEntry> travelData = [
  WordEntry(
    french: 'L\'aéroport',
    english: 'Airport',
    spanish: 'El aeropuerto',
    example_fr: 'L\'aéroport est loin du centre.',
    example_en: 'The airport is far from the center.',
    example_es: 'El aeropuerto está lejos del centro.',
  ),
  WordEntry(french: 'L\'avion', english: 'Airplane', spanish: 'El avión'),
  WordEntry(french: 'Le train', english: 'Train', spanish: 'El tren'),
  WordEntry(french: 'La voiture', english: 'Car', spanish: 'El coche / El carro'),
  WordEntry(french: 'Le bus', english: 'Bus', spanish: 'El autobús'),
  WordEntry(french: 'Le taxi', english: 'Taxi', spanish: 'El taxi'),
  WordEntry(french: 'L\'hôtel', english: 'Hotel', spanish: 'El hotel'),
  WordEntry(french: 'La chambre', english: 'Room', spanish: 'La habitación'),
  WordEntry(french: 'La clé', english: 'Key', spanish: 'La llave'),
  WordEntry(
    french: 'Où est...?',
    english: 'Where is...?',
    spanish: '¿Dónde está...?',
  ),
  WordEntry(
    french: 'Je voudrais réserver',
    english: 'I would like to book',
    spanish: 'Quisiera reservar',
  ),
  WordEntry(french: 'Le passeport', english: 'Passport', spanish: 'El pasaporte'),
  WordEntry(french: 'La valise', english: 'Suitcase', spanish: 'La maleta'),
  WordEntry(french: 'Le billet', english: 'Ticket', spanish: 'El billete / El boleto'),
];

// ---- ADJECTIFS ----
const List<WordEntry> adjectivesData = [
  WordEntry(french: 'Grand(e)', english: 'Big / Tall', spanish: 'Grande / Alto'),
  WordEntry(french: 'Petit(e)', english: 'Small / Short', spanish: 'Pequeño / Bajo'),
  WordEntry(french: 'Beau / Belle', english: 'Beautiful', spanish: 'Hermoso / Bonito'),
  WordEntry(french: 'Laid(e)', english: 'Ugly', spanish: 'Feo'),
  WordEntry(french: 'Bon(ne)', english: 'Good', spanish: 'Bueno'),
  WordEntry(french: 'Mauvais(e)', english: 'Bad', spanish: 'Malo'),
  WordEntry(french: 'Chaud(e)', english: 'Hot / Warm', spanish: 'Caliente / Caluroso'),
  WordEntry(french: 'Froid(e)', english: 'Cold', spanish: 'Frío'),
  WordEntry(french: 'Rapide', english: 'Fast / Quick', spanish: 'Rápido'),
  WordEntry(french: 'Lent(e)', english: 'Slow', spanish: 'Lento'),
  WordEntry(french: 'Fort(e)', english: 'Strong', spanish: 'Fuerte'),
  WordEntry(french: 'Faible', english: 'Weak', spanish: 'Débil'),
  WordEntry(french: 'Heureux / Heureuse', english: 'Happy', spanish: 'Feliz'),
  WordEntry(french: 'Triste', english: 'Sad', spanish: 'Triste'),
  WordEntry(french: 'Fatigué(e)', english: 'Tired', spanish: 'Cansado'),
  WordEntry(french: 'Nouveau / Nouvelle', english: 'New', spanish: 'Nuevo'),
  WordEntry(french: 'Vieux / Vieille', english: 'Old', spanish: 'Viejo'),
];
