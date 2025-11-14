import 'package:flutter/material.dart';
import 'package:auto11410131/generated/l10n/app_localizations.dart';
import 'package:auto11410131/screens/self_introduction_screen.dart';
import 'package:auto11410131/screens/learning_journey_screen.dart';
import 'package:auto11410131/screens/study_plan_screen.dart';
import 'package:auto11410131/screens/professional_direction_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale _locale = const Locale('zh'); // Default language

  void setLocale(Locale value) {
    setState(() {
      _locale = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      locale: _locale,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: MyHomePage(onLocaleChange: setLocale),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final Function(Locale) onLocaleChange;
  const MyHomePage({super.key, required this.onLocaleChange});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final tabs=[
    const SelfIntroductionScreen(),
    const LearningJourneyScreen(),
    const StudyPlanScreen(),
    const ProfessionalDirectionScreen(),
  ];

  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.appBarTitle),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: <Widget>[
          PopupMenuButton<Locale>(
            onSelected: (Locale locale) {
              widget.onLocaleChange(locale);
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<Locale>>[
              const PopupMenuItem<Locale>(
                value: Locale('zh'),
                child: Text('中文'),
              ),
              const PopupMenuItem<Locale>(
                value: Locale('en'),
                child: Text('English'),
              ),
              const PopupMenuItem<Locale>(
                value: Locale('ja'),
                child: Text('日本語'),
              ),
            ],
            icon: const Icon(Icons.language),
          ),
        ],
      ),
      body: tabs[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
                             type: BottomNavigationBarType.fixed,
                             backgroundColor: Colors.blue,
                             selectedItemColor: Colors.white,
                             selectedFontSize: 18,
                             unselectedFontSize: 14,
                             iconSize: 30,
                             currentIndex: currentIndex,
                             items: [
                               BottomNavigationBarItem(icon: const Icon(Icons.mail), label: AppLocalizations.of(context)!.tabSelfIntroduction),
                               BottomNavigationBarItem(icon: const Icon(Icons.school), label: AppLocalizations.of(context)!.tabLearningJourney),
                               BottomNavigationBarItem(icon: const Icon(Icons.scale_outlined), label: AppLocalizations.of(context)!.tabStudyPlan),
                               BottomNavigationBarItem(icon: const Icon(Icons.engineering), label: AppLocalizations.of(context)!.tabProfessionalDirection),
                             ],
                             onTap: (index) {
                               setState(() {
                                 currentIndex=index;
                               });
                             },
                           ),
    );
  }
}
