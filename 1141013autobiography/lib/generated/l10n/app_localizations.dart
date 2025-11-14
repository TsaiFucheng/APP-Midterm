import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('ja'),
    Locale('zh'),
  ];

  /// No description provided for @appBarTitle.
  ///
  /// In zh, this message translates to:
  /// **'我的自傳'**
  String get appBarTitle;

  /// No description provided for @tabSelfIntroduction.
  ///
  /// In zh, this message translates to:
  /// **'自我介紹'**
  String get tabSelfIntroduction;

  /// No description provided for @tabLearningJourney.
  ///
  /// In zh, this message translates to:
  /// **'學習歷程'**
  String get tabLearningJourney;

  /// No description provided for @tabStudyPlan.
  ///
  /// In zh, this message translates to:
  /// **'學習計畫'**
  String get tabStudyPlan;

  /// No description provided for @tabProfessionalDirection.
  ///
  /// In zh, this message translates to:
  /// **'專業方向'**
  String get tabProfessionalDirection;

  /// No description provided for @aboutMeTitle.
  ///
  /// In zh, this message translates to:
  /// **'關於我'**
  String get aboutMeTitle;

  /// No description provided for @contactEmailLabel.
  ///
  /// In zh, this message translates to:
  /// **'電子郵件'**
  String get contactEmailLabel;

  /// No description provided for @contactPhoneLabel.
  ///
  /// In zh, this message translates to:
  /// **'聯絡電話'**
  String get contactPhoneLabel;

  /// No description provided for @educationTitle.
  ///
  /// In zh, this message translates to:
  /// **'學歷背景'**
  String get educationTitle;

  /// No description provided for @skillsTitle.
  ///
  /// In zh, this message translates to:
  /// **'專業技能'**
  String get skillsTitle;

  /// No description provided for @skillsCategoryLang.
  ///
  /// In zh, this message translates to:
  /// **'程式語言'**
  String get skillsCategoryLang;

  /// No description provided for @skillsCategoryBackend.
  ///
  /// In zh, this message translates to:
  /// **'後端技術'**
  String get skillsCategoryBackend;

  /// No description provided for @skillsCategoryDB.
  ///
  /// In zh, this message translates to:
  /// **'資料庫'**
  String get skillsCategoryDB;

  /// No description provided for @skillsCategoryTools.
  ///
  /// In zh, this message translates to:
  /// **'工具'**
  String get skillsCategoryTools;

  /// No description provided for @projectTitle.
  ///
  /// In zh, this message translates to:
  /// **'重要專案經歷'**
  String get projectTitle;

  /// No description provided for @projectTechLabel.
  ///
  /// In zh, this message translates to:
  /// **'使用技術:'**
  String get projectTechLabel;

  /// No description provided for @awardsTitle.
  ///
  /// In zh, this message translates to:
  /// **'證照與獎項'**
  String get awardsTitle;

  /// No description provided for @planTitleOverall.
  ///
  /// In zh, this message translates to:
  /// **'總體目標'**
  String get planTitleOverall;

  /// No description provided for @planTitleShort.
  ///
  /// In zh, this message translates to:
  /// **'近程計畫 (大學期間)'**
  String get planTitleShort;

  /// No description provided for @planLabelCourses.
  ///
  /// In zh, this message translates to:
  /// **'課程學習'**
  String get planLabelCourses;

  /// No description provided for @planLabelTech.
  ///
  /// In zh, this message translates to:
  /// **'技術深化'**
  String get planLabelTech;

  /// No description provided for @planLabelExperience.
  ///
  /// In zh, this message translates to:
  /// **'實作經驗'**
  String get planLabelExperience;

  /// No description provided for @planTitleMid.
  ///
  /// In zh, this message translates to:
  /// **'中程計畫 (畢業後 3-5 年)'**
  String get planTitleMid;

  /// No description provided for @planTitleLong.
  ///
  /// In zh, this message translates to:
  /// **'遠程計畫 (長期目標)'**
  String get planTitleLong;

  /// No description provided for @directionTitle.
  ///
  /// In zh, this message translates to:
  /// **'我的專業方向'**
  String get directionTitle;

  /// No description provided for @directionSubtitle.
  ///
  /// In zh, this message translates to:
  /// **'人工智慧 (Artificial Intelligence)'**
  String get directionSubtitle;

  /// No description provided for @directionWhyTitle.
  ///
  /// In zh, this message translates to:
  /// **'為何選擇 AI？'**
  String get directionWhyTitle;

  /// No description provided for @directionInterestsTitle.
  ///
  /// In zh, this message translates to:
  /// **'感興趣的領域'**
  String get directionInterestsTitle;

  /// No description provided for @directionInterest1Title.
  ///
  /// In zh, this message translates to:
  /// **'自然語言處理 (NLP)'**
  String get directionInterest1Title;

  /// No description provided for @directionInterest2Title.
  ///
  /// In zh, this message translates to:
  /// **'電腦視覺 (Computer Vision)'**
  String get directionInterest2Title;

  /// No description provided for @directionInterest3Title.
  ///
  /// In zh, this message translates to:
  /// **'強化學習 (Reinforcement Learning)'**
  String get directionInterest3Title;

  /// No description provided for @directionOutlookTitle.
  ///
  /// In zh, this message translates to:
  /// **'未來展望'**
  String get directionOutlookTitle;

  /// No description provided for @profileName.
  ///
  /// In zh, this message translates to:
  /// **'蔡富城'**
  String get profileName;

  /// No description provided for @profileSchool.
  ///
  /// In zh, this message translates to:
  /// **'高雄科技大學 資訊工程系'**
  String get profileSchool;

  /// No description provided for @profileMotto.
  ///
  /// In zh, this message translates to:
  /// **'“行勝於言，力學篤行”'**
  String get profileMotto;

  /// No description provided for @aboutMeContent.
  ///
  /// In zh, this message translates to:
  /// **'我叫蔡富城，一位來自高雄市的學生，目前就讀於高雄科技大學資訊工程系。\n\n我的個性比較內斂，喜歡在投入一件事情前先仔細觀察與思考。當初會選擇資訊工程系，是因為喜歡玩遊戲。\n\n在課餘時間，我喜歡玩遊戲，這幫助我放鬆身心、獲得新的靈感。\n\n對於未來的規劃，我期許自己能成為一位研發工程師，並持續在人工智慧深耕。'**
  String get aboutMeContent;

  /// No description provided for @educationSchool1.
  ///
  /// In zh, this message translates to:
  /// **'高雄科技大學 (目前)'**
  String get educationSchool1;

  /// No description provided for @educationMajor1.
  ///
  /// In zh, this message translates to:
  /// **'資訊工程系'**
  String get educationMajor1;

  /// No description provided for @educationSchool2.
  ///
  /// In zh, this message translates to:
  /// **'樹德家商'**
  String get educationSchool2;

  /// No description provided for @educationMajor2.
  ///
  /// In zh, this message translates to:
  /// **'資料處理科'**
  String get educationMajor2;

  /// No description provided for @educationSchool3.
  ///
  /// In zh, this message translates to:
  /// **'右昌國中'**
  String get educationSchool3;

  /// No description provided for @projectName.
  ///
  /// In zh, this message translates to:
  /// **'中文斷詞模型'**
  String get projectName;

  /// No description provided for @projectDescription.
  ///
  /// In zh, this message translates to:
  /// **'訓練一個模型可以中文斷詞與詞性標記，準確率95%'**
  String get projectDescription;

  /// No description provided for @awardsContent.
  ///
  /// In zh, this message translates to:
  /// **'全國商業技藝競賽 - 程式設計第九名'**
  String get awardsContent;

  /// No description provided for @planContentOverall.
  ///
  /// In zh, this message translates to:
  /// **'在大學期間，我的主要目標是穩固地建立資訊工程的基礎知識，同時探索不同的專業領域，例如人工智慧、軟體開發等，找到自己真正熱愛的發展方向。'**
  String get planContentOverall;

  /// No description provided for @planContentCourses.
  ///
  /// In zh, this message translates to:
  /// **'我會專注於演算法、資料庫等科目，確保自己掌握關鍵理論。'**
  String get planContentCourses;

  /// No description provided for @planContentTech.
  ///
  /// In zh, this message translates to:
  /// **'除了學校課程，我計畫利用線上資源學習，並加強 Git 版本控制的實務操作。'**
  String get planContentTech;

  /// No description provided for @planContentExperience.
  ///
  /// In zh, this message translates to:
  /// **'我希望能完成一個專題，將所學知識應用於解決實際問題。'**
  String get planContentExperience;

  /// No description provided for @planContentMid.
  ///
  /// In zh, this message translates to:
  /// **'畢業後，我希望能順利找到AI 相關應用工程師的第一份工作，累積業界實務經驗，並了解團隊協作的模式。\n\n在工作中，我會持續學習新的技術，並考慮考取有興趣的證照相關的基礎證照，來證明自己的學習能力。'**
  String get planContentMid;

  /// No description provided for @planContentLong.
  ///
  /// In zh, this message translates to:
  /// **'我的長期目標是成為一位資深且可靠的軟體工程師，能夠獨立負責專案的核心部分。未來若有機會，也希望能分享自己的經驗，協助團隊中的新成員。'**
  String get planContentLong;

  /// No description provided for @directionWhyContent.
  ///
  /// In zh, this message translates to:
  /// **'最初的啟蒙來自於我對遊戲的熱愛。在遊戲中，我著迷於那些充滿智慧的 NPC 互動和各種能帶來挑戰的演算法。這份興趣引導我接觸了機器學習，並在完成「中文斷詞模型」的專案後，讓我深刻體會到 AI 在自然語言處理上的巨大潛力。將複雜問題拆解，並用程式碼和模型找出最佳解，這個過程帶給我巨大的成就感。'**
  String get directionWhyContent;

  /// No description provided for @directionInterest1Content.
  ///
  /// In zh, this message translates to:
  /// **'這是我的入門磚，我希望能在此基礎上，探索如情感分析、智能問答等更進階的應用。'**
  String get directionInterest1Content;

  /// No description provided for @directionInterest2Content.
  ///
  /// In zh, this message translates to:
  /// **'圖像辨識與分析是另一個充滿潛力的領域，無論在工業應用或生活娛樂上都有無限可能。'**
  String get directionInterest2Content;

  /// No description provided for @directionInterest3Content.
  ///
  /// In zh, this message translates to:
  /// **'作為許多遊戲 AI 的核心技術，我對其決策過程和演算法的演進充滿好奇。'**
  String get directionInterest3Content;

  /// No description provided for @directionOutlookContent.
  ///
  /// In zh, this message translates to:
  /// **'我期許自己能成為一位將 AI 技術應用於解決實際問題的工程師。我會持續學習、累積實作經驗，希望能為這個快速發展的領域貢獻一份心力。'**
  String get directionOutlookContent;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'ja', 'zh'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'ja':
      return AppLocalizationsJa();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
