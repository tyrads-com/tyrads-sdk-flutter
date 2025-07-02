///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'translations.g.dart';

// Path: <root>
class TranslationsJa extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsJa({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

	/// Metadata for the translations of <ja>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	late final TranslationsJa _root = this; // ignore: unused_field

	@override 
	TranslationsJa $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsJa(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsOffersJa offers = _TranslationsOffersJa._(_root);
	@override late final _TranslationsActiveOffersJa activeOffers = _TranslationsActiveOffersJa._(_root);
	@override late final _TranslationsOfferDetailsJa offerDetails = _TranslationsOfferDetailsJa._(_root);
	@override late final _TranslationsDashboardJa dashboard = _TranslationsDashboardJa._(_root);
	@override late final _TranslationsHelpJa help = _TranslationsHelpJa._(_root);
	@override late final _TranslationsPrivacyPolicyJa privacyPolicy = _TranslationsPrivacyPolicyJa._(_root);
	@override late final _TranslationsPrivacyTermsJa privacyTerms = _TranslationsPrivacyTermsJa._(_root);
	@override late final _TranslationsUsagePermissionsJa usagePermissions = _TranslationsUsagePermissionsJa._(_root);
	@override late final _TranslationsUserProfileJa userProfile = _TranslationsUserProfileJa._(_root);
	@override late final _TranslationsTicketsJa tickets = _TranslationsTicketsJa._(_root);
	@override late final _TranslationsTicketSubmittedJa ticketSubmitted = _TranslationsTicketSubmittedJa._(_root);
	@override String get language => '言語';
}

// Path: offers
class _TranslationsOffersJa extends TranslationsOffersEn {
	_TranslationsOffersJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'オファー';
	@override String get activeOffersCta => '有効なオファー';
	@override String get offersCta => '今すぐプレイ';
	@override String get playtime => 'プレイ時間';
	@override String get endingIn => '終了まで';
	@override String rewards({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ja'))(n,
		one: '報酬',
		other: '報酬',
	);
	@override String get emptyMessage => '現在利用可能なオファーはありません。後でもう一度お試しください！';
}

// Path: activeOffers
class _TranslationsActiveOffersJa extends TranslationsActiveOffersEn {
	_TranslationsActiveOffersJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '有効なオファー';
	@override String get expiringTitle => '期限切れのオファー';
	@override String get activeTitle => '有効なオファー';
	@override String get completedTitle => '完了したオファー';
	@override String get back => '戻る';
}

// Path: offerDetails
class _TranslationsOfferDetailsJa extends TranslationsOfferDetailsEn {
	_TranslationsOfferDetailsJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'オファーの詳細';
	@override String get capReached => '申し訳ありませんが、このゲームは一時的にご利用いただけません。明日もう一度お試しください！';
	@override String get oops => '';
	@override String get retryDownloadMessage => '<b>おっと！</b> ダウンロードの検証中に問題が発生しました。[ダウンロードを再試行]をクリックしてもう一度お試しください。ダウンロードを追跡しないと、報酬は付与されません。';
	@override String get completeWithin => 'すべての報酬を期限内に完了してください';
	@override String get downloadIntro => 'ダウンロードの失敗を回避し、ポイントを確実に獲得するには、次の手順に従ってください。';
	@override late final _TranslationsOfferDetailsAndroidStepsJa androidSteps = _TranslationsOfferDetailsAndroidStepsJa._(_root);
	@override late final _TranslationsOfferDetailsIosStepsJa iosSteps = _TranslationsOfferDetailsIosStepsJa._(_root);
	@override String get downloadNote => '注: ダウンロードに失敗した場合は、プレイを続行しないでください！';
	@override String get playNow => '今すぐプレイ';
	@override String get retry => '再試行';
	@override String get completedTasks => '完了したタスク';
	@override String get activeTasks => 'アクティブなタスク';
	@override String get availableTasks => '利用可能なタスク';
	@override String rewards({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ja'))(n,
		one: '報酬',
		other: '報酬',
	);
	@override late final _TranslationsOfferDetailsPurchaseJa purchase = _TranslationsOfferDetailsPurchaseJa._(_root);
	@override late final _TranslationsOfferDetailsEventStatusJa eventStatus = _TranslationsOfferDetailsEventStatusJa._(_root);
	@override late final _TranslationsOfferDetailsAvailableOnJa availableOn = _TranslationsOfferDetailsAvailableOnJa._(_root);
}

// Path: dashboard
class _TranslationsDashboardJa extends TranslationsDashboardEn {
	_TranslationsDashboardJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get suggestedOffers => 'おすすめのオファー';
	@override String get moreOffers => 'その他のオファー';
	@override String get myGames => 'マイゲーム';
	@override String get playButton => 'プレイ';
	@override String topRanking({required Object number}) => 'トップ ${number}';
}

// Path: help
class _TranslationsHelpJa extends TranslationsHelpEn {
	_TranslationsHelpJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ヘルプ';
	@override String get pointsIssue => 'ポイントが受け取れませんでした';
	@override String get faqs => 'よくある質問';
}

// Path: privacyPolicy
class _TranslationsPrivacyPolicyJa extends TranslationsPrivacyPolicyEn {
	_TranslationsPrivacyPolicyJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '最初の報酬獲得まであと少しです！';
	@override String get subtitle => 'お気に入りのゲームをプレイして報酬を獲得しましょう！';
	@override String get consentInfo => 'Tyrads Pte. Ltd. は、TyrSDK の使用の一環として、以下の個人データを処理していることをお知らせします:\nインストールされたアプリ (使用期間と使用履歴を含む)\nデータは、暗号化された形式でサーバーに送信されるデバイス ID (GAID または IDFA) を介してデバイスにリンクされます。アプリ プロバイダーが当社のアプリ提案に資金を提供できるように、課金目的でデバイス ID をプロバイダーに送信する必要があります。\n\n上記のデータの処理は、システム メッセージによるアプリの推奨、TyrSDK で利用可能なアプリのうちユーザーの興味に合ったもののインストール、および対応するアプリの使用の結果として獲得した報酬の計算を可能にするために必要です。\n\n同意\n\n[承認] をクリックすると、Tyrads Pte. Ltd. に次の個人データの処理を許可します。 \n\n上記のデータは興味関心プロファイルに含まれ、使用するアプリの種類によっては、特に機密性の高い個人データ（健康データや性的指向に関するデータ、欧州一般データ保護規則（GDPR）第9条第1項で定義されている特別なカテゴリのその他のデータなど）が含まれる可能性があることを認識しています。\n\nこのデータはTyrSDKのTyrads Pte. Ltdによって処理されます。詳細については';
	@override String get agreementPrefix => '私は、を読み同意します\n';
	@override String get termsText => '利用規約';
	@override String get and => ' と ';
	@override String get privacyText => 'プライバシーポリシー';
	@override String get accept => '承諾';
	@override String get reject => '拒否';
}

// Path: privacyTerms
class _TranslationsPrivacyTermsJa extends TranslationsPrivacyTermsEn {
	_TranslationsPrivacyTermsJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'プライバシーと利用規約';
	@override String get privacyPolicy => 'プライバシーポリシー';
	@override String get termsOfService => '利用規約';
}

// Path: usagePermissions
class _TranslationsUsagePermissionsJa extends TranslationsUsagePermissionsEn {
	_TranslationsUsagePermissionsJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'TyrSDK による使用状況データの追跡を許可\n収益の可能性を高めるために';
	@override String get permitTitle => '使用状況アクセスを許可';
	@override String get description => '使用状況アクセスにより、TyrSDK は、使用している他のアプリとその使用頻度、およびオペレーター、言語設定、その他の詳細を追跡できるようになります。';
}

// Path: userProfile
class _TranslationsUserProfileJa extends TranslationsUserProfileEn {
	_TranslationsUserProfileJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '最後のステップ。あと少しです！';
	@override String get genderTitle => '性別を選択してください';
	@override String get male => '男性';
	@override String get female => '女性';
	@override String get ageTitle => '年齢を選択してください';
	@override String get continueCta => '続行';
}

// Path: tickets
class _TranslationsTicketsJa extends TranslationsTicketsEn {
	_TranslationsTicketsJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ポイントを受け取れませんでした';
	@override String get header => '喜んでお手伝いいたします！';
	@override String get subheader => '達成したと思われるタスクのうち、ポイントを受け取れなかったものを選択してください。';
	@override String get instructions => '上記のように、注文 ID とスクリーンショットを添付してください。';
	@override String get helpTitle => '喜んでお手伝いいたします！';
	@override String get helpSubtitle => '達成したと思われるタスクのうち、ポイントを受け取れなかったものを選択してください。';
	@override String get gamePlayerId => 'ゲーム プレーヤー ID:';
	@override String get gamePlayerValidation => '有効なゲーム プレーヤー ID を入力してください';
	@override String get orderId => '注文 ID:';
	@override String get orderValidation => '注文 ID を入力してください';
	@override String get screenshot => 'スクリーンショット';
	@override String get screenshotValidation => 'スクリーンショットを選択してください';
	@override String get browse => '参照';
	@override String get prev => '前へ';
	@override String get helperText => '何を添付すればよいかわかりませんか? ここをクリックして例をご覧ください';
	@override String get submit => '送信';
	@override String get understand => '理解しました';
	@override String get submitting => 'チケットを送信しています';
}

// Path: ticketSubmitted
class _TranslationsTicketSubmittedJa extends TranslationsTicketSubmittedEn {
	_TranslationsTicketSubmittedJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ポイントを受け取れませんでした';
	@override String get footnote => '信じてください。';
	@override String get header => '私たちは対応中です。';
	@override String get back => 'オファーページに戻る';
	@override String get subheader => '私たちは何をすべきかわかっています';
}

// Path: offerDetails.androidSteps
class _TranslationsOfferDetailsAndroidStepsJa extends TranslationsOfferDetailsAndroidStepsEn {
	_TranslationsOfferDetailsAndroidStepsJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get step1 => '1. ゲームをダウンロードするには<b>Google Play ストア</b>を選択してください。';
	@override String get step2 => '2. "<b>確認</b>" ボタンをクリックした後、すぐにダウンロードしてください。';
	@override String get step3 => '3. ダウンロードが完了したら、<b>Google Play ストア</b>からゲームを開きます。';
}

// Path: offerDetails.iosSteps
class _TranslationsOfferDetailsIosStepsJa extends TranslationsOfferDetailsIosStepsEn {
	_TranslationsOfferDetailsIosStepsJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get step1 => '1. ゲームをダウンロードするには<b>App Store</b>を選択してください。';
	@override String get step2 => '2. "<b>確認</b>" ボタンをクリックした後、すぐにダウンロードしてください。';
	@override String get step3 => '3. ダウンロードが完了したら、<b>App Store</b>からゲームを開きます。';
}

// Path: offerDetails.purchase
class _TranslationsOfferDetailsPurchaseJa extends TranslationsOfferDetailsPurchaseEn {
	_TranslationsOfferDetailsPurchaseJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get microCharge => 'マイクロチャージ';
	@override String earned({required Object points, required Object currency}) => '獲得したポイント: ${points} ${currency}';
	@override String total({required Object points, required Object currency}) => '合計 ${points} ${currency} から';
	@override String get dailyPurchase => '毎日の購入報酬';
	@override String get dailyReward => '毎日の報酬';
}

// Path: offerDetails.eventStatus
class _TranslationsOfferDetailsEventStatusJa extends TranslationsOfferDetailsEventStatusEn {
	_TranslationsOfferDetailsEventStatusJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get notAvailable => 'まだ利用できません';
	@override String get completeToContinue => '続行するにはこれを完了してください';
	@override String get rejected => '拒否';
	@override String get pending => '保留中';
	@override String get completed => '完了';
	@override String get rejectedTime => '拒否されました。制限時間に達しました';
	@override String get completeWithin => '完了してください';
}

// Path: offerDetails.availableOn
class _TranslationsOfferDetailsAvailableOnJa extends TranslationsOfferDetailsAvailableOnEn {
	_TranslationsOfferDetailsAvailableOnJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get popUpButtonSuccessCopyURL => 'コピーしました';
	@override String get availableOn => 'で利用可能';
	@override String get method1 => '方法 1';
	@override String get method2 => '方法 2';
	@override String get method1ScanQR => 'モバイルデバイスでQRコードをスキャンしてください。';
	@override String get method2CopyURL => 'モバイルデバイスにURLを貼り付けてください。';
	@override String get buttonCopy => 'コピー';
}
