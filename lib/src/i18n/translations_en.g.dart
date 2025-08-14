///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'translations.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  );

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	late final Translations _root = this; // ignore: unused_field

	Translations $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => Translations(meta: meta ?? this.$meta);

	// Translations
	late final TranslationsOffersEn offers = TranslationsOffersEn.internal(_root);
	late final TranslationsActiveOffersEn activeOffers = TranslationsActiveOffersEn.internal(_root);
	late final TranslationsOfferDetailsEn offerDetails = TranslationsOfferDetailsEn.internal(_root);
	late final TranslationsDashboardEn dashboard = TranslationsDashboardEn.internal(_root);
	late final TranslationsHelpEn help = TranslationsHelpEn.internal(_root);
	late final TranslationsPrivacyPolicyEn privacyPolicy = TranslationsPrivacyPolicyEn.internal(_root);
	late final TranslationsPrivacyTermsEn privacyTerms = TranslationsPrivacyTermsEn.internal(_root);
	late final TranslationsUsagePermissionsEn usagePermissions = TranslationsUsagePermissionsEn.internal(_root);
	late final TranslationsUserProfileEn userProfile = TranslationsUserProfileEn.internal(_root);
	late final TranslationsTicketsEn tickets = TranslationsTicketsEn.internal(_root);
	late final TranslationsTicketSubmittedEn ticketSubmitted = TranslationsTicketSubmittedEn.internal(_root);
	String get language => 'Language';
}

// Path: offers
class TranslationsOffersEn {
	TranslationsOffersEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Offers';
	String get activeOffersCta => 'Active offers';
	String get offersCta => 'Play Now';
	String get playtime => 'Playtime';
	String get endingIn => 'Ending in';
	String rewards({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
		one: 'Reward',
		other: 'Rewards',
	);
	String get emptyMessage => 'No offers <b>available</b> right now\nPlease try again later!';
}

// Path: activeOffers
class TranslationsActiveOffersEn {
	TranslationsActiveOffersEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Active Offers';
	String get expiringTitle => 'Expiring Offers';
	String get activeTitle => 'Active Offers';
	String get completedTitle => 'Completed Offers';
	String get back => 'Back';
}

// Path: offerDetails
class TranslationsOfferDetailsEn {
	TranslationsOfferDetailsEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Offer Details';
	String get capReached => 'Sorry, this game is temporarily unavailable, please come back tomorrow!';
	String get oops => '';
	String get retryDownloadMessage => '<b>Oops!</> We have trouble on validating your download. Click \'Retry Download\' \' to try again. Your rewards will not be rewarded without a tracked download.';
	String get completeWithin => 'Complete all rewards within';
	String get downloadIntro => 'Follow this few steps to avoid download failure and make sure you\'ll get your points.';
	late final TranslationsOfferDetailsAndroidStepsEn androidSteps = TranslationsOfferDetailsAndroidStepsEn.internal(_root);
	late final TranslationsOfferDetailsIosStepsEn iosSteps = TranslationsOfferDetailsIosStepsEn.internal(_root);
	String get downloadNote => 'Note: If the download failed, do not continue to play!';
	String get playNow => 'Play Now';
	String get retry => 'Retry';
	String get completedTasks => 'Completed Tasks';
	String get activeTasks => 'Active Tasks';
	String get availableTasks => 'Available Tasks';
	String rewards({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
		one: 'Reward',
		other: 'Rewards',
	);
	late final TranslationsOfferDetailsPurchaseEn purchase = TranslationsOfferDetailsPurchaseEn.internal(_root);
	late final TranslationsOfferDetailsEventStatusEn eventStatus = TranslationsOfferDetailsEventStatusEn.internal(_root);
}

// Path: dashboard
class TranslationsDashboardEn {
	TranslationsDashboardEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get suggestedOffers => 'Suggested Offers';
	String get moreOffers => 'More Offers';
	String get myGames => 'My Games';
	String get playButton => 'Play';
	String topRanking({required Object number}) => 'Top ${number}';
}

// Path: help
class TranslationsHelpEn {
	TranslationsHelpEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Get Help';
	String get pointsIssue => 'I didn\'t receive my points';
	String get faqs => 'FAQs';
}

// Path: privacyPolicy
class TranslationsPrivacyPolicyEn {
	TranslationsPrivacyPolicyEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'You\'re So Close To Earning\nYour First Reward!';
	String get subtitle => 'Play Your Favorite Games!\nAnd Earn Your Rewards!';
	String get consentInfo => 'We hereby inform you that Tyrads Pte. Ltd. processes the following personal data within the framework of the use of TyrSDK:\nInstalled apps (including the use duration and use history)\nThe data is linked to your device via the device ID (GAID or IDFA) transmitted to our servers in encrypted form. So that app providers can finance our app suggestions, we must send them the device ID for billing purposes.\n\nThe processing of the above data is necessary to be able to recommend apps via system messages, the installation of apps available in TyrSDK that matches your interest and calculate the rewards acquired as a result of your use of the corresponding apps.\n\nConsent\n\nBy clicking on \'\'Accept\'\' I give Tyrads Pte. Ltd my consent to process above mentioned personal data and transmit it to other apps so that i can use TyrSDK as explained.\n\nI am aware that the above data results in an interest profile, which, depending on the type of apps I use, may contain particularly sensitive personal data (such as health data or data on my sexual orientation as well as any other data from special categories defined in Art. 9 para. 1 of the European General Data Protection Regulation (GDPR).\n\nThis data will be processed by Tyrads Pte. Ltd, TyrSDK. For more information';
	String get agreementPrefix => 'I have read and agree to the\n';
	String get termsText => 'Terms of Service';
	String get and => ' and ';
	String get privacyText => 'Privacy Policy';
	String get accept => 'Accept';
	String get reject => 'Reject';
}

// Path: privacyTerms
class TranslationsPrivacyTermsEn {
	TranslationsPrivacyTermsEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Privacy & Terms';
	String get privacyPolicy => 'Privacy Policy';
	String get termsOfService => 'Terms of Service';
}

// Path: usagePermissions
class TranslationsUsagePermissionsEn {
	TranslationsUsagePermissionsEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Allow TyrSDK To Track Usage Data\nTo Enable Your Earning Potential';
	String get permitTitle => 'Permit Usage Access';
	String get description => 'usage access allows TyrSDK to track which other apps you are using and how often, as well as your operator, language setting and other details.';
}

// Path: userProfile
class TranslationsUserProfileEn {
	TranslationsUserProfileEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Last step..\nYou\'re almost there!';
	String get genderTitle => 'Choose Your Gender';
	String get male => 'Male';
	String get female => 'Female';
	String get ageTitle => 'Choose Your Age';
	String get continueCta => 'Continue';
}

// Path: tickets
class TranslationsTicketsEn {
	TranslationsTicketsEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'I didn\'t receive my points';
	String get header => 'We are more than happy to help!';
	String get subheader => 'Please select which task(s) that you think you achieved but you didn’t get the points';
	String get instructions => 'Please attach Order ID and Screenshot like shown above.';
	String get helpTitle => 'We are more than happy to help!';
	String get helpSubtitle => 'Please select which task(s) that you think you achieved but you didn\'t get the points';
	String get gamePlayerId => 'Game Player ID:';
	String get gamePlayerValidation => 'Please enter a valid game player ID';
	String get orderId => 'Order ID:';
	String get orderValidation => 'Please enter order id';
	String get screenshot => 'Screenshot:';
	String get screenshotValidation => 'Please select a screenshot';
	String get browse => 'Browse';
	String get prev => 'Prev';
	String get helperText => 'Not sure what to attach? Click here for see example';
	String get submit => 'Submit';
	String get understand => 'I Understand';
	String get submitting => 'Submitting ticket';
}

// Path: ticketSubmitted
class TranslationsTicketSubmittedEn {
	TranslationsTicketSubmittedEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'I didn\'t receive my points';
	String get footnote => 'trust me.';
	String get header => 'We’re on it..';
	String get back => 'Back to offer page';
	String get subheader => 'We know what we’re doing';
}

// Path: offerDetails.androidSteps
class TranslationsOfferDetailsAndroidStepsEn {
	TranslationsOfferDetailsAndroidStepsEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get step1 => '1. Make sure you select <b>Google Play Store</b> to download the game.';
	String get step2 => '2. Download right away after you click "<b>Confirm</b>" button.';
	String get step3 => '3. After the download complete, open the game from <b>Google Play Store</b>.';
}

// Path: offerDetails.iosSteps
class TranslationsOfferDetailsIosStepsEn {
	TranslationsOfferDetailsIosStepsEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get step1 => '1. Make sure you select <b>App Store<b/> to download the game.';
	String get step2 => '2. Download right away after you click "<b>Confirm</b>" button.';
	String get step3 => '3. After the download complete, open the game from <b>App Store</b>.';
}

// Path: offerDetails.purchase
class TranslationsOfferDetailsPurchaseEn {
	TranslationsOfferDetailsPurchaseEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get microCharge => 'MICRO CHARGE';
	String earned({required Object points, required Object currency}) => 'you earned: ${points} ${currency}';
	String total({required Object points, required Object currency}) => 'from total ${points} ${currency}';
	String get dailyPurchase => 'Daily Purchase Reward';
	String get dailyReward => 'Daily Reward';
}

// Path: offerDetails.eventStatus
class TranslationsOfferDetailsEventStatusEn {
	TranslationsOfferDetailsEventStatusEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get notAvailable => 'Not available yet';
	String get completeToContinue => 'Complete this to continue';
	String get rejected => 'Rejected';
	String get pending => 'Pending';
	String get completed => 'Completed';
	String get rejectedTime => 'Rejected, time limit reached';
	String get completeWithin => 'Complete within';
}
