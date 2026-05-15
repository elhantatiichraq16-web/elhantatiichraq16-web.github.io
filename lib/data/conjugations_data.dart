import '../models/word_model.dart';

const List<ConjugationEntry> conjugationsData = [
  // ÊTRE / TO BE / SER
  ConjugationEntry(
    verb_fr: 'Être',
    verb_en: 'To be',
    verb_es: 'Ser / Estar',
    tenses: {
      'Présent (FR) / Present (EN) / Presente (ES)': {
        'Je / I / Yo': 'suis / am / soy',
        'Tu / You / Tú': 'es / are / eres',
        'Il/Elle / He/She / Él/Ella': 'est / is / es',
        'Nous / We / Nosotros': 'sommes / are / somos',
        'Vous / You / Vosotros': 'êtes / are / sois',
        'Ils/Elles / They / Ellos': 'sont / are / son',
      },
      'Passé composé (FR) / Past (EN) / Pasado (ES)': {
        'Je / I / Yo': 'ai été / was / fui',
        'Tu / You / Tú': 'as été / were / fuiste',
        'Il/Elle / He/She / Él/Ella': 'a été / was / fue',
        'Nous / We / Nosotros': 'avons été / were / fuimos',
        'Vous / You / Vosotros': 'avez été / were / fuisteis',
        'Ils/Elles / They / Ellos': 'ont été / were / fueron',
      },
      'Futur (FR) / Future (EN) / Futuro (ES)': {
        'Je / I / Yo': 'serai / will be / seré',
        'Tu / You / Tú': 'seras / will be / serás',
        'Il/Elle / He/She / Él/Ella': 'sera / will be / será',
        'Nous / We / Nosotros': 'serons / will be / seremos',
        'Vous / You / Vosotros': 'serez / will be / seréis',
        'Ils/Elles / They / Ellos': 'seront / will be / serán',
      },
    },
  ),
  // AVOIR / TO HAVE / TENER
  ConjugationEntry(
    verb_fr: 'Avoir',
    verb_en: 'To have',
    verb_es: 'Tener',
    tenses: {
      'Présent (FR) / Present (EN) / Presente (ES)': {
        'Je / I / Yo': 'ai / have / tengo',
        'Tu / You / Tú': 'as / have / tienes',
        'Il/Elle / He/She / Él/Ella': 'a / has / tiene',
        'Nous / We / Nosotros': 'avons / have / tenemos',
        'Vous / You / Vosotros': 'avez / have / tenéis',
        'Ils/Elles / They / Ellos': 'ont / have / tienen',
      },
      'Passé composé (FR) / Past (EN) / Pasado (ES)': {
        'Je / I / Yo': 'ai eu / had / tuve',
        'Tu / You / Tú': 'as eu / had / tuviste',
        'Il/Elle / He/She / Él/Ella': 'a eu / had / tuvo',
        'Nous / We / Nosotros': 'avons eu / had / tuvimos',
        'Vous / You / Vosotros': 'avez eu / had / tuvisteis',
        'Ils/Elles / They / Ellos': 'ont eu / had / tuvieron',
      },
      'Futur (FR) / Future (EN) / Futuro (ES)': {
        'Je / I / Yo': 'aurai / will have / tendré',
        'Tu / You / Tú': 'auras / will have / tendrás',
        'Il/Elle / He/She / Él/Ella': 'aura / will have / tendrá',
        'Nous / We / Nosotros': 'aurons / will have / tendremos',
        'Vous / You / Vosotros': 'aurez / will have / tendréis',
        'Ils/Elles / They / Ellos': 'auront / will have / tendrán',
      },
    },
  ),
  // ALLER / TO GO / IR
  ConjugationEntry(
    verb_fr: 'Aller',
    verb_en: 'To go',
    verb_es: 'Ir',
    tenses: {
      'Présent (FR) / Present (EN) / Presente (ES)': {
        'Je / I / Yo': 'vais / go / voy',
        'Tu / You / Tú': 'vas / go / vas',
        'Il/Elle / He/She / Él/Ella': 'va / goes / va',
        'Nous / We / Nosotros': 'allons / go / vamos',
        'Vous / You / Vosotros': 'allez / go / vais',
        'Ils/Elles / They / Ellos': 'vont / go / van',
      },
      'Passé composé (FR) / Past (EN) / Pasado (ES)': {
        'Je / I / Yo': 'suis allé(e) / went / fui',
        'Tu / You / Tú': 'es allé(e) / went / fuiste',
        'Il/Elle / He/She / Él/Ella': 'est allé(e) / went / fue',
        'Nous / We / Nosotros': 'sommes allés / went / fuimos',
        'Vous / You / Vosotros': 'êtes allés / went / fuisteis',
        'Ils/Elles / They / Ellos': 'sont allés / went / fueron',
      },
      'Futur (FR) / Future (EN) / Futuro (ES)': {
        'Je / I / Yo': 'irai / will go / iré',
        'Tu / You / Tú': 'iras / will go / irás',
        'Il/Elle / He/She / Él/Ella': 'ira / will go / irá',
        'Nous / We / Nosotros': 'irons / will go / iremos',
        'Vous / You / Vosotros': 'irez / will go / iréis',
        'Ils/Elles / They / Ellos': 'iront / will go / irán',
      },
    },
  ),
  // FAIRE / TO DO / HACER
  ConjugationEntry(
    verb_fr: 'Faire',
    verb_en: 'To do / To make',
    verb_es: 'Hacer',
    tenses: {
      'Présent (FR) / Present (EN) / Presente (ES)': {
        'Je / I / Yo': 'fais / do / hago',
        'Tu / You / Tú': 'fais / do / haces',
        'Il/Elle / He/She / Él/Ella': 'fait / does / hace',
        'Nous / We / Nosotros': 'faisons / do / hacemos',
        'Vous / You / Vosotros': 'faites / do / hacéis',
        'Ils/Elles / They / Ellos': 'font / do / hacen',
      },
      'Passé composé (FR) / Past (EN) / Pasado (ES)': {
        'Je / I / Yo': 'ai fait / did / hice',
        'Tu / You / Tú': 'as fait / did / hiciste',
        'Il/Elle / He/She / Él/Ella': 'a fait / did / hizo',
        'Nous / We / Nosotros': 'avons fait / did / hicimos',
        'Vous / You / Vosotros': 'avez fait / did / hicisteis',
        'Ils/Elles / They / Ellos': 'ont fait / did / hicieron',
      },
      'Futur (FR) / Future (EN) / Futuro (ES)': {
        'Je / I / Yo': 'ferai / will do / haré',
        'Tu / You / Tú': 'feras / will do / harás',
        'Il/Elle / He/She / Él/Ella': 'fera / will do / hará',
        'Nous / We / Nosotros': 'ferons / will do / haremos',
        'Vous / You / Vosotros': 'ferez / will do / haréis',
        'Ils/Elles / They / Ellos': 'feront / will do / harán',
      },
    },
  ),
  // PARLER / TO SPEAK / HABLAR
  ConjugationEntry(
    verb_fr: 'Parler',
    verb_en: 'To speak',
    verb_es: 'Hablar',
    tenses: {
      'Présent (FR) / Present (EN) / Presente (ES)': {
        'Je / I / Yo': 'parle / speak / hablo',
        'Tu / You / Tú': 'parles / speak / hablas',
        'Il/Elle / He/She / Él/Ella': 'parle / speaks / habla',
        'Nous / We / Nosotros': 'parlons / speak / hablamos',
        'Vous / You / Vosotros': 'parlez / speak / habláis',
        'Ils/Elles / They / Ellos': 'parlent / speak / hablan',
      },
      'Passé composé (FR) / Past (EN) / Pasado (ES)': {
        'Je / I / Yo': 'ai parlé / spoke / hablé',
        'Tu / You / Tú': 'as parlé / spoke / hablaste',
        'Il/Elle / He/She / Él/Ella': 'a parlé / spoke / habló',
        'Nous / We / Nosotros': 'avons parlé / spoke / hablamos',
        'Vous / You / Vosotros': 'avez parlé / spoke / hablasteis',
        'Ils/Elles / They / Ellos': 'ont parlé / spoke / hablaron',
      },
      'Futur (FR) / Future (EN) / Futuro (ES)': {
        'Je / I / Yo': 'parlerai / will speak / hablaré',
        'Tu / You / Tú': 'parleras / will speak / hablarás',
        'Il/Elle / He/She / Él/Ella': 'parlera / will speak / hablará',
        'Nous / We / Nosotros': 'parlerons / will speak / hablaremos',
        'Vous / You / Vosotros': 'parlerez / will speak / hablaréis',
        'Ils/Elles / They / Ellos': 'parleront / will speak / hablarán',
      },
    },
  ),
  // VOULOIR / TO WANT / QUERER
  ConjugationEntry(
    verb_fr: 'Vouloir',
    verb_en: 'To want',
    verb_es: 'Querer',
    tenses: {
      'Présent (FR) / Present (EN) / Presente (ES)': {
        'Je / I / Yo': 'veux / want / quiero',
        'Tu / You / Tú': 'veux / want / quieres',
        'Il/Elle / He/She / Él/Ella': 'veut / wants / quiere',
        'Nous / We / Nosotros': 'voulons / want / queremos',
        'Vous / You / Vosotros': 'voulez / want / queréis',
        'Ils/Elles / They / Ellos': 'veulent / want / quieren',
      },
    },
  ),
  // POUVOIR / CAN / PODER
  ConjugationEntry(
    verb_fr: 'Pouvoir',
    verb_en: 'Can / To be able to',
    verb_es: 'Poder',
    tenses: {
      'Présent (FR) / Present (EN) / Presente (ES)': {
        'Je / I / Yo': 'peux / can / puedo',
        'Tu / You / Tú': 'peux / can / puedes',
        'Il/Elle / He/She / Él/Ella': 'peut / can / puede',
        'Nous / We / Nosotros': 'pouvons / can / podemos',
        'Vous / You / Vosotros': 'pouvez / can / podéis',
        'Ils/Elles / They / Ellos': 'peuvent / can / pueden',
      },
    },
  ),
  // SAVOIR / TO KNOW / SABER
  ConjugationEntry(
    verb_fr: 'Savoir',
    verb_en: 'To know',
    verb_es: 'Saber',
    tenses: {
      'Présent (FR) / Present (EN) / Presente (ES)': {
        'Je / I / Yo': 'sais / know / sé',
        'Tu / You / Tú': 'sais / know / sabes',
        'Il/Elle / He/She / Él/Ella': 'sait / knows / sabe',
        'Nous / We / Nosotros': 'savons / know / sabemos',
        'Vous / You / Vosotros': 'savez / know / sabéis',
        'Ils/Elles / They / Ellos': 'savent / know / saben',
      },
    },
  ),
];
