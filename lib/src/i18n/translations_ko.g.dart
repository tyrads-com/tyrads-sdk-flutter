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
class TranslationsKo extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsKo({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ko,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

	/// Metadata for the translations of <ko>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	late final TranslationsKo _root = this; // ignore: unused_field

	@override 
	TranslationsKo $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsKo(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsOffersKo offers = _TranslationsOffersKo._(_root);
	@override late final _TranslationsActiveOffersKo activeOffers = _TranslationsActiveOffersKo._(_root);
	@override late final _TranslationsOfferDetailsKo offerDetails = _TranslationsOfferDetailsKo._(_root);
	@override late final _TranslationsDashboardKo dashboard = _TranslationsDashboardKo._(_root);
	@override late final _TranslationsHelpKo help = _TranslationsHelpKo._(_root);
	@override late final _TranslationsPrivacyPolicyKo privacyPolicy = _TranslationsPrivacyPolicyKo._(_root);
	@override late final _TranslationsPrivacyTermsKo privacyTerms = _TranslationsPrivacyTermsKo._(_root);
	@override late final _TranslationsUsagePermissionsKo usagePermissions = _TranslationsUsagePermissionsKo._(_root);
	@override late final _TranslationsUserProfileKo userProfile = _TranslationsUserProfileKo._(_root);
	@override late final _TranslationsTicketsKo tickets = _TranslationsTicketsKo._(_root);
	@override late final _TranslationsTicketSubmittedKo ticketSubmitted = _TranslationsTicketSubmittedKo._(_root);
	@override String get language => '언어';
}

// Path: offers
class _TranslationsOffersKo extends TranslationsOffersEn {
	_TranslationsOffersKo._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '제안';
	@override String get activeOffersCta => '진행 중인 제안';
	@override String get offersCta => '지금 플레이하기';
	@override String get playtime => '놀이 시간';
	@override String get endingIn => '끝나는';
	@override String rewards({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n,
		one: '보상',
		other: '보상들',
	);
	@override String get emptyMessage => '현재 이용 가능한 제안이 없습니다. 나중에 다시 시도해 주세요!';
}

// Path: activeOffers
class _TranslationsActiveOffersKo extends TranslationsActiveOffersEn {
	_TranslationsActiveOffersKo._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '활성화된 제안';
	@override String get expiringTitle => '만료 예정 제안';
	@override String get activeTitle => '진행 중인 제안';
	@override String get completedTitle => '완료된 제안';
	@override String get back => '뒤로';
}

// Path: offerDetails
class _TranslationsOfferDetailsKo extends TranslationsOfferDetailsEn {
	_TranslationsOfferDetailsKo._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '제안 세부 사항';
	@override String get capReached => '죄송합니다, 이 게임은 일시적으로 이용할 수 없습니다. 내일 다시 와 주세요!';
	@override String get oops => '';
	@override String get retryDownloadMessage => '<b>앗!</b> 다운로드 확인에 문제가 발생했습니다. \'다운로드 다시 시도\'를 클릭하여 다시 시도해 주세요. 추적된 다운로드 없이는 보상이 지급되지 않습니다.';
	@override String get completeWithin => '모든 보상을 완료하세요';
	@override String get downloadIntro => '다운로드 실패를 방지하고 포인트를 받을 수 있도록 아래 몇 가지 단계를 따라주세요.';
	@override late final _TranslationsOfferDetailsAndroidStepsKo androidSteps = _TranslationsOfferDetailsAndroidStepsKo._(_root);
	@override late final _TranslationsOfferDetailsIosStepsKo iosSteps = _TranslationsOfferDetailsIosStepsKo._(_root);
	@override String get downloadNote => '참고: 다운로드가 실패한 경우, 계속 플레이하지 마세요!';
	@override String get playNow => '지금 플레이';
	@override String get retry => '다시 시도';
	@override String get completedTasks => '완료된 작업';
	@override String get activeTasks => '진행 중인 작업';
	@override String get availableTasks => '사용 가능한 작업';
	@override String rewards({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n,
		one: '보상',
		other: '보상들',
	);
	@override late final _TranslationsOfferDetailsPurchaseKo purchase = _TranslationsOfferDetailsPurchaseKo._(_root);
	@override late final _TranslationsOfferDetailsEventStatusKo eventStatus = _TranslationsOfferDetailsEventStatusKo._(_root);
}

// Path: dashboard
class _TranslationsDashboardKo extends TranslationsDashboardEn {
	_TranslationsDashboardKo._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get suggestedOffers => '추천 제안';
	@override String get moreOffers => '더 많은 제안';
	@override String get myGames => '내 게임';
	@override String get playButton => '플레이';
	@override String topRanking({required Object number}) => '상위 ${number}';
}

// Path: help
class _TranslationsHelpKo extends TranslationsHelpEn {
	_TranslationsHelpKo._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '도움을 받다';
	@override String get pointsIssue => '내 포인트를 받지 못했어요';
	@override String get faqs => '자주 묻는 질문 (FAQs)';
}

// Path: privacyPolicy
class _TranslationsPrivacyPolicyKo extends TranslationsPrivacyPolicyEn {
	_TranslationsPrivacyPolicyKo._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '첫 번째 보상을 받을 거의 다 왔어요!';
	@override String get subtitle => '가장 좋아하는 게임을 플레이하고 보상을 받으세요!';
	@override String get consentInfo => 'Tyrads Pte. Ltd.는 TyrSDK 사용의 틀 안에서 다음과 같은 개인 데이터를 처리한다는 것을 알려드립니다:\n설치된 앱(사용 기간 및 사용 내역 포함)\n데이터는 암호화된 형태로 서버에 전송된 기기 ID(GAID 또는 IDFA)를 통해 기기에 연결됩니다. 앱 제공자가 앱 제안에 자금을 지원할 수 있도록 청구 목적으로 기기 ID를 보내야 합니다.\n\n위 데이터 처리가 필요한 이유는 시스템 메시지를 통해 앱을 추천하고, 관심사에 맞는 TyrSDK에서 사용 가능한 앱을 설치하며, 해당 앱을 사용하여 얻은 보상을 계산하기 위함입니다.\n\n동의\n\n"동의"를 클릭하면, 저는 Tyrads Pte. Ltd.가 위에 언급된 개인 데이터를 처리하고 이를 다른 앱에 전송하여 설명된 대로 TyrSDK를 사용할 수 있도록 하는 데 동의합니다.\n\n저는 위 데이터가 관심사 프로필을 생성한다는 것을 알고 있으며, 사용하는 앱의 유형에 따라 특히 민감한 개인 데이터(예: 건강 데이터, 성적 지향에 대한 데이터 및 유럽연합 일반 데이터 보호 규정(GDPR) 제9조 1항에 정의된 다른 특수 범주의 데이터)가 포함될 수 있다는 사실을 인지하고 있습니다.\n\n이 데이터는 Tyrads Pte. Ltd.와 TyrSDK에서 처리됩니다. 자세한 내용은';
	@override String get agreementPrefix => '저는 읽었으며 이에 동의합니다\n';
	@override String get termsText => '이용 약관';
	@override String get and => ' 그리고 ';
	@override String get privacyText => '개인정보 보호정책';
	@override String get accept => '동의합니다';
	@override String get reject => '거부합니다';
}

// Path: privacyTerms
class _TranslationsPrivacyTermsKo extends TranslationsPrivacyTermsEn {
	_TranslationsPrivacyTermsKo._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '개인정보 보호 및 이용 약관';
	@override String get privacyPolicy => '개인정보 보호 정책';
	@override String get termsOfService => '이용 약관';
}

// Path: usagePermissions
class _TranslationsUsagePermissionsKo extends TranslationsUsagePermissionsEn {
	_TranslationsUsagePermissionsKo._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => 'TyrSDK가 사용 데이터를 추적하도록 허용\n수익 잠재력을 활성화하려면';
	@override String get permitTitle => '사용 권한 허가';
	@override String get description => '사용 접근 권한은 TyrSDK가 사용자가 사용하는 다른 앱과 사용 빈도를 추적할 수 있도록 하며, 운영사, 언어 설정 및 기타 세부 정보도 확인할 수 있습니다.';
}

// Path: userProfile
class _TranslationsUserProfileKo extends TranslationsUserProfileEn {
	_TranslationsUserProfileKo._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '마지막 단계, 거의 다 왔어요!';
	@override String get genderTitle => '성별을 선택하세요';
	@override String get male => '남성';
	@override String get female => '여성';
	@override String get ageTitle => '나이를 선택하세요';
	@override String get continueCta => '계속';
}

// Path: tickets
class _TranslationsTicketsKo extends TranslationsTicketsEn {
	_TranslationsTicketsKo._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '포인트를 받지 못했어요';
	@override String get header => '기꺼이 도와드리겠습니다!';
	@override String get subheader => '달성했다고 생각하지만 포인트를 받지 못한 작업을 선택해 주세요.';
	@override String get instructions => '위에 표시된 것처럼 주문 ID와 스크린샷을 첨부해 주세요.';
	@override String get helpTitle => '기꺼이 도와드리겠습니다!';
	@override String get helpSubtitle => '달성했다고 생각하지만 포인트를 받지 못한 작업을 선택해 주세요.';
	@override String get gamePlayerId => '게임 플레이어 ID:';
	@override String get gamePlayerValidation => '유효한 게임 플레이어 ID를 입력해 주세요.';
	@override String get orderId => '주문 ID:';
	@override String get orderValidation => '주문 ID를 입력해 주세요.';
	@override String get screenshot => '스크린샷';
	@override String get screenshotValidation => '스크린샷을 선택해 주세요.';
	@override String get browse => '찾아보기';
	@override String get prev => '이전';
	@override String get helperText => '첨부할 항목이 확실하지 않으신가요? 예시를 보려면 여기를 클릭하세요.';
	@override String get submit => '제출';
	@override String get understand => '이해했습니다';
	@override String get submitting => '티켓 제출 중';
}

// Path: ticketSubmitted
class _TranslationsTicketSubmittedKo extends TranslationsTicketSubmittedEn {
	_TranslationsTicketSubmittedKo._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '포인트를 받지 못했어요';
	@override String get footnote => '나를 믿어';
	@override String get header => '우리가 처리하고 있어요';
	@override String get back => '제안 페이지로 돌아가기';
	@override String get subheader => '우리는 우리가 하는 일을 알아요';
}

// Path: offerDetails.androidSteps
class _TranslationsOfferDetailsAndroidStepsKo extends TranslationsOfferDetailsAndroidStepsEn {
	_TranslationsOfferDetailsAndroidStepsKo._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get step1 => '1. 게임을 다운로드할 때 <b>Google Play 스토어</b>를 선택했는지 확인하세요.';
	@override String get step2 => '2. "<b>확인</b>" 버튼을 클릭한 후 바로 다운로드하세요.';
	@override String get step3 => '3. 다운로드가 완료되면 <b>Google Play 스토어</b>에서 게임을 열어주세요.';
}

// Path: offerDetails.iosSteps
class _TranslationsOfferDetailsIosStepsKo extends TranslationsOfferDetailsIosStepsEn {
	_TranslationsOfferDetailsIosStepsKo._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get step1 => '1. 게임을 다운로드할 때 <b>App Store</b>를 선택했는지 확인하세요.';
	@override String get step2 => '2. "<b>확인</b>" 버튼을 클릭한 후 바로 다운로드하세요.';
	@override String get step3 => '3. 다운로드가 완료되면 <b>App Store</b>에서 게임을 열어주세요.';
}

// Path: offerDetails.purchase
class _TranslationsOfferDetailsPurchaseKo extends TranslationsOfferDetailsPurchaseEn {
	_TranslationsOfferDetailsPurchaseKo._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get microCharge => '마이크로 충전';
	@override String earned({required Object points, required Object currency}) => '당신이 획득한 점수: ${points} ${currency}';
	@override String total({required Object points, required Object currency}) => '총 ${points} ${currency} 중에서 획득한 점수';
	@override String get dailyPurchase => '일일 구매 보상';
	@override String get dailyReward => '일일 보상';
}

// Path: offerDetails.eventStatus
class _TranslationsOfferDetailsEventStatusKo extends TranslationsOfferDetailsEventStatusEn {
	_TranslationsOfferDetailsEventStatusKo._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get notAvailable => '아직 이용할 수 없습니다';
	@override String get completeToContinue => '계속하려면 이것을 완료하세요.';
	@override String get rejected => '거부됨';
	@override String get pending => '보류 중';
	@override String get completed => '완료됨';
	@override String get rejectedTime => '거부됨, 시간 제한 도달';
	@override String get completeWithin => '내에서 완료하십시오';
}
