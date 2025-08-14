///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:flutter/widgets.dart';
import 'package:slang/generated.dart';
import 'translations.g.dart';

// Path: <root>
class TranslationsId extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsId({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.id,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

	/// Metadata for the translations of <id>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	late final TranslationsId _root = this; // ignore: unused_field

	@override 
	TranslationsId $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsId(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsOffersId offers = _TranslationsOffersId._(_root);
	@override late final _TranslationsActiveOffersId activeOffers = _TranslationsActiveOffersId._(_root);
	@override late final _TranslationsOfferDetailsId offerDetails = _TranslationsOfferDetailsId._(_root);
	@override late final _TranslationsDashboardId dashboard = _TranslationsDashboardId._(_root);
	@override late final _TranslationsHelpId help = _TranslationsHelpId._(_root);
	@override late final _TranslationsPrivacyPolicyId privacyPolicy = _TranslationsPrivacyPolicyId._(_root);
	@override late final _TranslationsPrivacyTermsId privacyTerms = _TranslationsPrivacyTermsId._(_root);
	@override late final _TranslationsUsagePermissionsId usagePermissions = _TranslationsUsagePermissionsId._(_root);
	@override late final _TranslationsUserProfileId userProfile = _TranslationsUserProfileId._(_root);
	@override late final _TranslationsTicketsId tickets = _TranslationsTicketsId._(_root);
	@override late final _TranslationsTicketSubmittedId ticketSubmitted = _TranslationsTicketSubmittedId._(_root);
	@override String get language => 'Bahasa';
}

// Path: offers
class _TranslationsOffersId extends TranslationsOffersEn {
	_TranslationsOffersId._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Penawaran';
	@override String get activeOffersCta => 'Penawaran aktif';
	@override String get offersCta => 'Main Sekarang';
	@override String get playtime => 'Waktu Bermain';
	@override String get endingIn => 'Selesai dalam';
	@override String rewards({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('id'))(n,
		one: 'Hadiah',
		other: 'Hadiah',
	);
	@override String get emptyMessage => 'Tidak ada penawaran yang tersedia sekarang, Kembali lagi nanti!';
}

// Path: activeOffers
class _TranslationsActiveOffersId extends TranslationsActiveOffersEn {
	_TranslationsActiveOffersId._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Penawaran Aktif';
	@override String get expiringTitle => 'Penawaran yang Akan Berakhir';
	@override String get activeTitle => 'Penawaran Aktif';
	@override String get completedTitle => 'Penawaran yang Selesai';
	@override String get back => 'Kembali';
}

// Path: offerDetails
class _TranslationsOfferDetailsId extends TranslationsOfferDetailsEn {
	_TranslationsOfferDetailsId._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Detail Penawaran';
	@override String get capReached => 'Maaf, game ini sementara tidak tersedia, silakan kembali besok!';
	@override String get oops => '';
	@override String get retryDownloadMessage => '<b>Ups!</b> Kami mengalami masalah dalam memvalidasi unduhan Anda. Klik \'Coba Unduh Lagi\' untuk mencoba lagi. Hadiah Anda tidak akan diberikan tanpa unduhan yang terlacak.';
	@override String get completeWithin => 'Selesaikan semua hadiah dalam waktu';
	@override String get downloadIntro => 'Ikuti beberapa langkah ini untuk menghindari kegagalan unduhan dan pastikan Anda mendapatkan poin Anda.';
	@override late final _TranslationsOfferDetailsAndroidStepsId androidSteps = _TranslationsOfferDetailsAndroidStepsId._(_root);
	@override late final _TranslationsOfferDetailsIosStepsId iosSteps = _TranslationsOfferDetailsIosStepsId._(_root);
	@override String get downloadNote => 'Catatan: Jika unduhan gagal, jangan lanjutkan untuk bermain!';
	@override String get playNow => 'Mainkan Sekarang';
	@override String get retry => 'Coba Lagi';
	@override String get completedTasks => 'Tugas yang Selesai';
	@override String get activeTasks => 'Tugas aktif';
	@override String get availableTasks => 'Tugas Tersedia';
	@override String rewards({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('id'))(n,
		one: 'Hadiah',
		other: 'Hadiah',
	);
	@override late final _TranslationsOfferDetailsPurchaseId purchase = _TranslationsOfferDetailsPurchaseId._(_root);
	@override late final _TranslationsOfferDetailsEventStatusId eventStatus = _TranslationsOfferDetailsEventStatusId._(_root);
}

// Path: dashboard
class _TranslationsDashboardId extends TranslationsDashboardEn {
	_TranslationsDashboardId._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get suggestedOffers => 'Penawaran yang Disarankan';
	@override String get moreOffers => 'Penawaran Lainnya';
	@override String get myGames => 'Permainan Saya';
	@override String get playButton => 'Mainkan';
	@override String topRanking({required Object number}) => 'Top ${number}';
}

// Path: help
class _TranslationsHelpId extends TranslationsHelpEn {
	_TranslationsHelpId._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bantuan';
	@override String get pointsIssue => 'Saya tidak mendapatkan poin';
	@override String get faqs => 'FAQs';
}

// Path: privacyPolicy
class _TranslationsPrivacyPolicyId extends TranslationsPrivacyPolicyEn {
	_TranslationsPrivacyPolicyId._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kamu Hampir Mendapatkan Hadiah Pertamamu!';
	@override String get subtitle => 'Mainkan Game Favoritmu! Dan Dapatkan Hadiahmu!';
	@override String get consentInfo => 'Dengan ini kami informasikan bahwa Tyrads Pte. Ltd. memproses data pribadi berikut dalam kerangka penggunaan TyrSDK:\nAplikasi yang diinstal (termasuk durasi penggunaan dan riwayat penggunaan)\nData tersebut ditautkan ke perangkat Anda melalui ID perangkat (GAID atau IDFA) yang dikirimkan ke server kami dalam bentuk terenkripsi. Agar penyedia aplikasi dapat membiayai saran aplikasi kami, kami harus mengirimkan ID perangkat kepada mereka untuk tujuan penagihan.\n\nPemrosesan data di atas diperlukan untuk dapat merekomendasikan aplikasi melalui pesan sistem, pemasangan aplikasi yang tersedia di TyrSDK yang sesuai dengan minat Anda, dan menghitung imbalan yang diperoleh sebagai hasil penggunaan aplikasi terkait oleh Anda.\n\nPersetujuan\n\nDengan mengklik "Terima", saya memberikan persetujuan kepada Tyrads Pte. Ltd untuk memproses data pribadi yang disebutkan di atas dan mengirimkannya ke aplikasi lain sehingga saya dapat menggunakan TyrSDK sebagaimana dijelaskan.\n\nSaya mengetahui bahwa data di atas menghasilkan profil minat, yang, tergantung pada jenis aplikasi yang saya gunakan, dapat berisi data pribadi yang sangat sensitif (seperti data kesehatan atau data tentang orientasi seksual saya serta data lain dari kategori khusus yang didefinisikan dalam Pasal 9 paragraf 11).\n\nData ini akan diproses oleh Tyrads Pte. Ltd, TyrSDK. Untuk informasi lebih lanjut';
	@override String get agreementPrefix => 'Saya telah membaca dan setuju dengan\n';
	@override String get termsText => 'Syarat dan Ketentuan';
	@override String get and => ' dan ';
	@override String get privacyText => 'Kebijakan Privasi';
	@override String get accept => 'Terima';
	@override String get reject => 'Tolak';
}

// Path: privacyTerms
class _TranslationsPrivacyTermsId extends TranslationsPrivacyTermsEn {
	_TranslationsPrivacyTermsId._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Privasi & Ketentuan';
	@override String get privacyPolicy => 'Kebijakan Privasi';
	@override String get termsOfService => 'Syarat dan Ketentuan';
}

// Path: usagePermissions
class _TranslationsUsagePermissionsId extends TranslationsUsagePermissionsEn {
	_TranslationsUsagePermissionsId._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Izinkan TyrSDK Untuk Melacak Data Penggunaan\nUntuk Memungkinkan Potensi Penghasilan Anda';
	@override String get permitTitle => 'Izinkan Akses Penggunaan';
	@override String get description => 'Akses penggunaan memungkinkan TyrSDK untuk melacak aplikasi lain yang Anda gunakan dan seberapa sering, serta operator, pengaturan bahasa, dan detail lainnya.';
}

// Path: userProfile
class _TranslationsUserProfileId extends TranslationsUserProfileEn {
	_TranslationsUserProfileId._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Langkah terakhir..\nAnda hampir sampai!';
	@override String get genderTitle => 'Pilih Jenis Kelamin Anda';
	@override String get male => 'Laki-laki';
	@override String get female => 'Perempuan';
	@override String get ageTitle => 'Pilih umur anda';
	@override String get continueCta => 'Lanjutkan';
}

// Path: tickets
class _TranslationsTicketsId extends TranslationsTicketsEn {
	_TranslationsTicketsId._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Saya tidak menerima poin saya';
	@override String get header => 'Kami dengan senang hati akan membantu!';
	@override String get subheader => 'Silakan pilih tugas mana yang Anda rasa telah selesai, tetapi Anda tidak mendapatkan poin.';
	@override String get instructions => 'Silakan lampirkan ID Pesanan dan Screenshot seperti yang ditunjukkan di atas.';
	@override String get helpTitle => 'Kami dengan senang hati akan membantu!';
	@override String get helpSubtitle => 'Silakan pilih tugas mana yang Anda rasa telah selesai, tetapi Anda tidak mendapatkan poin.';
	@override String get gamePlayerId => 'ID Pemain Game:';
	@override String get gamePlayerValidation => 'Silakan masukkan ID pemain game yang valid';
	@override String get orderId => 'ID Pesanan';
	@override String get orderValidation => 'Silakan masukkan ID pesanan';
	@override String get screenshot => 'Screenshot';
	@override String get screenshotValidation => 'Silakan pilih screenshot';
	@override String get browse => 'Pilih';
	@override String get prev => 'Contoh';
	@override String get helperText => 'Tidak yakin apa yang harus dilampirkan? Klik di sini untuk melihat contoh.';
	@override String get submit => 'Kirim';
	@override String get understand => 'Saya Mengerti';
	@override String get submitting => 'Kirim tiket';
}

// Path: ticketSubmitted
class _TranslationsTicketSubmittedId extends TranslationsTicketSubmittedEn {
	_TranslationsTicketSubmittedId._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Saya tidak mendapatkan poin';
	@override String get footnote => 'Percaya padaku';
	@override String get header => 'Kami sedang mengerjakannya..';
	@override String get back => 'Kembali ke halaman offer';
	@override String get subheader => 'Kami tahu apa yang kami lakukan';
}

// Path: offerDetails.androidSteps
class _TranslationsOfferDetailsAndroidStepsId extends TranslationsOfferDetailsAndroidStepsEn {
	_TranslationsOfferDetailsAndroidStepsId._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get step1 => '1. Pastikan Anda memilih <b>Google Play Store</b> untuk mengunduh game.';
	@override String get step2 => '2. Unduh segera setelah Anda mengklik tombol "<b>Konfirmasi</b>".';
	@override String get step3 => '3. Setelah unduhan selesai, buka game dari <b>Google Play Store</b>.';
}

// Path: offerDetails.iosSteps
class _TranslationsOfferDetailsIosStepsId extends TranslationsOfferDetailsIosStepsEn {
	_TranslationsOfferDetailsIosStepsId._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get step1 => '1. Pastikan Anda memilih <b>App Store</b> untuk mengunduh game.';
	@override String get step2 => '2. Unduh segera setelah Anda mengklik tombol "<b>Konfirmasi</b>".';
	@override String get step3 => '3. Setelah unduhan selesai, buka game dari <b>App Store</b>.';
}

// Path: offerDetails.purchase
class _TranslationsOfferDetailsPurchaseId extends TranslationsOfferDetailsPurchaseEn {
	_TranslationsOfferDetailsPurchaseId._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get microCharge => 'MICRO CHARGE';
	@override String earned({required Object points, required Object currency}) => 'Anda mendapatkan: ${points} ${currency}';
	@override String total({required Object points, required Object currency}) => 'dari total ${points} ${currency}';
	@override String get dailyPurchase => 'Hadiah Pembelian Harian';
	@override String get dailyReward => 'Hadiah Harian';
}

// Path: offerDetails.eventStatus
class _TranslationsOfferDetailsEventStatusId extends TranslationsOfferDetailsEventStatusEn {
	_TranslationsOfferDetailsEventStatusId._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get notAvailable => 'Belum Tersedia';
	@override String get completeToContinue => 'Selesaikan ini untuk melanjutkan';
	@override String get rejected => 'Ditolak';
	@override String get pending => 'Menunggu';
	@override String get completed => 'Selesai';
	@override String get rejectedTime => 'Ditolak, batas waktu tercapai';
	@override String get completeWithin => 'Selesaikan dalam waktu';
}
