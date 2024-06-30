// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Page under construction!`
  String get building {
    return Intl.message(
      'Page under construction!',
      name: 'building',
      desc: '',
      args: [],
    );
  }

  /// `About me`
  String get aboutMe {
    return Intl.message(
      'About me',
      name: 'aboutMe',
      desc: '',
      args: [],
    );
  }

  /// `Hello, my name is Nayron Gabriel, I am {years} years old, and I am a Brazilian software developer with a passion for technology. With almost 3 years of experience, I have acquired solid skills in Dart, Flutter, Java, and Spring Boot. Currently, I am expanding my knowledge in native Android development. I believe technology has the power to transform the world, and I actively seek challenges that allow me to contribute to this advancement. I am always eager to learn and explore opportunities for growth. Let's build the future together!`
  String aboutMeDescription(Object years) {
    return Intl.message(
      'Hello, my name is Nayron Gabriel, I am $years years old, and I am a Brazilian software developer with a passion for technology. With almost 3 years of experience, I have acquired solid skills in Dart, Flutter, Java, and Spring Boot. Currently, I am expanding my knowledge in native Android development. I believe technology has the power to transform the world, and I actively seek challenges that allow me to contribute to this advancement. I am always eager to learn and explore opportunities for growth. Let\'s build the future together!',
      name: 'aboutMeDescription',
      desc: '',
      args: [years],
    );
  }

  /// `Hi there!`
  String get hiText {
    return Intl.message(
      'Hi there!',
      name: 'hiText',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to my portfolio!`
  String get welcomeText {
    return Intl.message(
      'Welcome to my portfolio!',
      name: 'welcomeText',
      desc: '',
      args: [],
    );
  }

  /// `My skills`
  String get mySkills {
    return Intl.message(
      'My skills',
      name: 'mySkills',
      desc: '',
      args: [],
    );
  }

  /// `Flutter`
  String get flutterCard {
    return Intl.message(
      'Flutter',
      name: 'flutterCard',
      desc: '',
      args: [],
    );
  }

  /// `Flutter is Google’s UI toolkit for building beautiful, natively compiled applications for mobile, web, and desktop from a single codebase.`
  String get flutterCardDescription {
    return Intl.message(
      'Flutter is Google’s UI toolkit for building beautiful, natively compiled applications for mobile, web, and desktop from a single codebase.',
      name: 'flutterCardDescription',
      desc: '',
      args: [],
    );
  }

  /// `Java`
  String get javaCard {
    return Intl.message(
      'Java',
      name: 'javaCard',
      desc: '',
      args: [],
    );
  }

  /// `Java is a general-purpose, class-based, object-oriented programming language designed for having lesser implementation dependencies. It is a concurrent language and a compiled language. It is a statically typed and reflective language.`
  String get javaCardDescription {
    return Intl.message(
      'Java is a general-purpose, class-based, object-oriented programming language designed for having lesser implementation dependencies. It is a concurrent language and a compiled language. It is a statically typed and reflective language.',
      name: 'javaCardDescription',
      desc: '',
      args: [],
    );
  }

  /// `Spring Boot`
  String get springCard {
    return Intl.message(
      'Spring Boot',
      name: 'springCard',
      desc: '',
      args: [],
    );
  }

  /// `Spring is an open-source application framework and inversion of control container for the Java platform. The Spring Framework provides a comprehensive infrastructure for developing Java applications.`
  String get springCardDescription {
    return Intl.message(
      'Spring is an open-source application framework and inversion of control container for the Java platform. The Spring Framework provides a comprehensive infrastructure for developing Java applications.',
      name: 'springCardDescription',
      desc: '',
      args: [],
    );
  }

  /// `PostgreSQL`
  String get postgresCard {
    return Intl.message(
      'PostgreSQL',
      name: 'postgresCard',
      desc: '',
      args: [],
    );
  }

  /// `Postgres (also known as PostgreSQL) is an open-source object-relational database management system (RDBMS) that emphasizes extensibility and standards compliance. It is one of the most popular RDBMSs in the world, and is used by millions of users and organizations.`
  String get postgresCardDescription {
    return Intl.message(
      'Postgres (also known as PostgreSQL) is an open-source object-relational database management system (RDBMS) that emphasizes extensibility and standards compliance. It is one of the most popular RDBMSs in the world, and is used by millions of users and organizations.',
      name: 'postgresCardDescription',
      desc: '',
      args: [],
    );
  }

  /// `Dorminhoco`
  String get dorminhocoTitle {
    return Intl.message(
      'Dorminhoco',
      name: 'dorminhocoTitle',
      desc: '',
      args: [],
    );
  }

  /// `This app is perfect for people who like to fall asleep listening to music. With Sleep Tight, you can set a timer that automatically turns off the music and Bluetooth on your phone, so you can have a good night's sleep without worrying about having to turn off the device manually.`
  String get dorminhocoDescription {
    return Intl.message(
      'This app is perfect for people who like to fall asleep listening to music. With Sleep Tight, you can set a timer that automatically turns off the music and Bluetooth on your phone, so you can have a good night\'s sleep without worrying about having to turn off the device manually.',
      name: 'dorminhocoDescription',
      desc: '',
      args: [],
    );
  }

  /// `CineView`
  String get cineviewTitle {
    return Intl.message(
      'CineView',
      name: 'cineviewTitle',
      desc: '',
      args: [],
    );
  }

  /// `Cineview is an app that allows you to view movie information quickly and easily. `
  String get cineviewDescription {
    return Intl.message(
      'Cineview is an app that allows you to view movie information quickly and easily. ',
      name: 'cineviewDescription',
      desc: '',
      args: [],
    );
  }

  /// `About me`
  String get sideAboutMe {
    return Intl.message(
      'About me',
      name: 'sideAboutMe',
      desc: '',
      args: [],
    );
  }

  /// `Projects`
  String get sideProjects {
    return Intl.message(
      'Projects',
      name: 'sideProjects',
      desc: '',
      args: [],
    );
  }

  /// `My Skills`
  String get sideSkills {
    return Intl.message(
      'My Skills',
      name: 'sideSkills',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'pt'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
