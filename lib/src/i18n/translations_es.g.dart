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
class TranslationsEs extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsEs({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.es,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

	/// Metadata for the translations of <es>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	late final TranslationsEs _root = this; // ignore: unused_field

	@override 
	TranslationsEs $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsEs(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsOffersEs offers = _TranslationsOffersEs._(_root);
	@override late final _TranslationsActiveOffersEs activeOffers = _TranslationsActiveOffersEs._(_root);
	@override late final _TranslationsOfferDetailsEs offerDetails = _TranslationsOfferDetailsEs._(_root);
	@override late final _TranslationsDashboardEs dashboard = _TranslationsDashboardEs._(_root);
	@override late final _TranslationsHelpEs help = _TranslationsHelpEs._(_root);
	@override late final _TranslationsPrivacyPolicyEs privacyPolicy = _TranslationsPrivacyPolicyEs._(_root);
	@override late final _TranslationsPrivacyTermsEs privacyTerms = _TranslationsPrivacyTermsEs._(_root);
	@override late final _TranslationsUsagePermissionsEs usagePermissions = _TranslationsUsagePermissionsEs._(_root);
	@override late final _TranslationsUserProfileEs userProfile = _TranslationsUserProfileEs._(_root);
	@override late final _TranslationsTicketsEs tickets = _TranslationsTicketsEs._(_root);
	@override late final _TranslationsTicketSubmittedEs ticketSubmitted = _TranslationsTicketSubmittedEs._(_root);
	@override String get language => 'Idioma';
}

// Path: offers
class _TranslationsOffersEs extends TranslationsOffersEn {
	_TranslationsOffersEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ofertas';
	@override String get activeOffersCta => 'Ofertas activas';
	@override String get offersCta => 'Jugar ahora';
	@override String get playtime => 'Tiempo de juego';
	@override String get endingIn => 'Terminando en';
	@override String rewards({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('es'))(n,
		one: 'Recompensa',
		other: 'Recompensas',
	);
	@override String get emptyMessage => 'No hay ofertas disponibles en este momento. ¡Por favor, inténtalo más tarde!';
}

// Path: activeOffers
class _TranslationsActiveOffersEs extends TranslationsActiveOffersEn {
	_TranslationsActiveOffersEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ofertas activas';
	@override String get expiringTitle => 'Ofertas por vencer';
	@override String get activeTitle => 'Ofertas activas';
	@override String get completedTitle => 'Ofertas completadas';
	@override String get back => 'Atrás';
}

// Path: offerDetails
class _TranslationsOfferDetailsEs extends TranslationsOfferDetailsEn {
	_TranslationsOfferDetailsEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Detalles de la oferta';
	@override String get capReached => 'Lo siento, este juego no está disponible temporalmente, ¡por favor vuelve mañana!';
	@override String get oops => '';
	@override String get retryDownloadMessage => '<b>¡Ups!</b> Tenemos problemas para validar tu descarga. Haz clic en \'Reintentar descarga\' para intentarlo de nuevo. No recibirás tus recompensas sin una descarga registrada.';
	@override String get completeWithin => 'Completa todas las recompensas dentro de';
	@override String get downloadIntro => 'Sigue estos pocos pasos para evitar fallos en la descarga y asegurarte de que recibirás tus puntos.';
	@override late final _TranslationsOfferDetailsAndroidStepsEs androidSteps = _TranslationsOfferDetailsAndroidStepsEs._(_root);
	@override late final _TranslationsOfferDetailsIosStepsEs iosSteps = _TranslationsOfferDetailsIosStepsEs._(_root);
	@override String get downloadNote => 'Nota: Si la descarga falla, ¡no continúes jugando!';
	@override String get playNow => 'Jugar ahora';
	@override String get retry => 'Reintentar';
	@override String get completedTasks => 'Tareas completadas';
	@override String get activeTasks => 'Tareas activas';
	@override String get availableTasks => 'Tareas disponibles';
	@override String rewards({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('es'))(n,
		one: 'Recompensa',
		other: 'Recompensas',
	);
	@override late final _TranslationsOfferDetailsPurchaseEs purchase = _TranslationsOfferDetailsPurchaseEs._(_root);
	@override late final _TranslationsOfferDetailsEventStatusEs eventStatus = _TranslationsOfferDetailsEventStatusEs._(_root);
	@override late final _TranslationsOfferDetailsAvailableOnEs availableOn = _TranslationsOfferDetailsAvailableOnEs._(_root);
}

// Path: dashboard
class _TranslationsDashboardEs extends TranslationsDashboardEn {
	_TranslationsDashboardEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get suggestedOffers => 'Ofertas sugeridas';
	@override String get moreOffers => 'Más ofertas';
	@override String get myGames => 'Mis juegos';
	@override String get playButton => 'Jugar';
	@override String topRanking({required Object number}) => 'Los mejores ${number}';
}

// Path: help
class _TranslationsHelpEs extends TranslationsHelpEn {
	_TranslationsHelpEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Obtener ayuda';
	@override String get pointsIssue => 'No recibí mis puntos';
	@override String get faqs => 'Preguntas frecuentes';
}

// Path: privacyPolicy
class _TranslationsPrivacyPolicyEs extends TranslationsPrivacyPolicyEn {
	_TranslationsPrivacyPolicyEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Estás tan cerca de ganar tu primera recompensa!';
	@override String get subtitle => '¡Juega tus juegos favoritos y gana tus recompensas!';
	@override String get consentInfo => 'Por la presente, le informamos que Tyrads Pte. Ltd. procesa los siguientes datos personales en el marco del uso de TyrSDK:\nAplicaciones instaladas (incluyendo la duración del uso y el historial de uso).\nLos datos están vinculados a su dispositivo a través del ID del dispositivo (GAID o IDFA) transmitido a nuestros servidores en forma cifrada. Para que los proveedores de aplicaciones puedan financiar nuestras sugerencias de aplicaciones, debemos enviarles el ID del dispositivo con fines de facturación.\n\nEl procesamiento de los datos mencionados anteriormente es necesario para poder recomendar aplicaciones a través de mensajes del sistema, la instalación de aplicaciones disponibles en TyrSDK que coincidan con su interés y calcular las recompensas obtenidas como resultado de su uso de las aplicaciones correspondientes.\n\nConsentimiento\n\nAl hacer clic en "Aceptar", doy mi consentimiento a Tyrads Pte. Ltd. para procesar los datos personales mencionados anteriormente y transmitirlos a otras aplicaciones para que pueda usar TyrSDK tal como se explicó.\n\nSoy consciente de que los datos anteriores resultan en un perfil de interés, el cual, dependiendo del tipo de aplicaciones que uso, puede contener datos personales especialmente sensibles (como datos de salud o datos sobre mi orientación sexual, así como cualquier otro dato de categorías especiales definidas en el Art. 9, párrafo 1 del Reglamento General de Protección de Datos de la Unión Europea (GDPR).\n\nEstos datos serán procesados por Tyrads Pte. Ltd., TyrSDK. Para más información';
	@override String get agreementPrefix => 'He leído y estoy de acuerdo con\n';
	@override String get termsText => 'Términos de servicio';
	@override String get and => ' y ';
	@override String get privacyText => 'Política de privacidad';
	@override String get accept => 'Aceptar';
	@override String get reject => 'Rechazar';
}

// Path: privacyTerms
class _TranslationsPrivacyTermsEs extends TranslationsPrivacyTermsEn {
	_TranslationsPrivacyTermsEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Privacidad y Términos';
	@override String get privacyPolicy => 'Política de privacidad';
	@override String get termsOfService => 'Términos de servicio';
}

// Path: usagePermissions
class _TranslationsUsagePermissionsEs extends TranslationsUsagePermissionsEn {
	_TranslationsUsagePermissionsEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Permitir que TyrSDK rastree los datos de uso\nPara habilitar tu potencial de ganancias';
	@override String get permitTitle => 'Permitir acceso al uso';
	@override String get description => 'El acceso al uso permite que TyrSDK rastree qué otras aplicaciones estás utilizando y con qué frecuencia, así como tu operador, configuración de idioma y otros detalles.';
}

// Path: userProfile
class _TranslationsUserProfileEs extends TranslationsUserProfileEn {
	_TranslationsUserProfileEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Último paso..\n¡Estás casi allí!';
	@override String get genderTitle => 'Elige tu género';
	@override String get male => 'Masculino';
	@override String get female => 'Femenino';
	@override String get ageTitle => 'Elige tu edad';
	@override String get continueCta => 'Continuar';
}

// Path: tickets
class _TranslationsTicketsEs extends TranslationsTicketsEn {
	_TranslationsTicketsEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'No recibí mis puntos';
	@override String get header => '¡Estamos más que felices de ayudar!';
	@override String get subheader => 'Por favor, selecciona qué tarea(s) crees que has completado pero no recibiste los puntos.';
	@override String get instructions => 'Por favor, adjunta el ID de pedido y la captura de pantalla como se muestra arriba.';
	@override String get helpTitle => '¡Estamos más que felices de ayudar!';
	@override String get helpSubtitle => 'Por favor, selecciona qué tarea(s) crees que has completado pero no recibiste los puntos.';
	@override String get gamePlayerId => 'ID del jugador del juego:';
	@override String get gamePlayerValidation => 'Por favor, ingresa un ID de jugador válido';
	@override String get orderId => 'ID de pedido:';
	@override String get orderValidation => 'Por favor, ingresa el ID de pedido.';
	@override String get screenshot => 'Captura de pantalla';
	@override String get screenshotValidation => 'Por favor, selecciona una captura de pantalla';
	@override String get browse => 'Navegar';
	@override String get prev => 'Anterior';
	@override String get helperText => '¿No estás seguro de qué adjuntar? Haz clic aquí para ver un ejemplo.';
	@override String get submit => 'Enviar';
	@override String get understand => 'Entiendo';
	@override String get submitting => 'Enviando ticket';
}

// Path: ticketSubmitted
class _TranslationsTicketSubmittedEs extends TranslationsTicketSubmittedEn {
	_TranslationsTicketSubmittedEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'No recibí mis puntos';
	@override String get footnote => 'Confía en mí.';
	@override String get header => 'Estamos en ello...';
	@override String get back => 'Volver a la página de ofertas';
	@override String get subheader => 'Sabemos lo que estamos haciendo';
}

// Path: offerDetails.androidSteps
class _TranslationsOfferDetailsAndroidStepsEs extends TranslationsOfferDetailsAndroidStepsEn {
	_TranslationsOfferDetailsAndroidStepsEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get step1 => '1. Asegúrate de seleccionar <b>Google Play Store</b> para descargar el juego.';
	@override String get step2 => '2. Descarga inmediatamente después de hacer clic en el botón "<b>Confirmar</b>".';
	@override String get step3 => '3. Una vez que se complete la descarga, abre el juego desde <b>Google Play Store</b>.';
}

// Path: offerDetails.iosSteps
class _TranslationsOfferDetailsIosStepsEs extends TranslationsOfferDetailsIosStepsEn {
	_TranslationsOfferDetailsIosStepsEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get step1 => '1. Asegúrate de seleccionar <b>App Store</b> para descargar el juego.';
	@override String get step2 => '2. Descarga de inmediato después de hacer clic en el botón "<b>Confirmar</b>".';
	@override String get step3 => '3. Una vez que se complete la descarga, abre el juego desde <b>App Store</b>.';
}

// Path: offerDetails.purchase
class _TranslationsOfferDetailsPurchaseEs extends TranslationsOfferDetailsPurchaseEn {
	_TranslationsOfferDetailsPurchaseEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get microCharge => 'CARGA MICRO';
	@override String earned({required Object points, required Object currency}) => 'Has ganado: ${points} ${currency}';
	@override String total({required Object points, required Object currency}) => 'De un total de ${points} ${currency}';
	@override String get dailyPurchase => 'Recompensa diaria de compra';
	@override String get dailyReward => 'Recompensa diaria';
}

// Path: offerDetails.eventStatus
class _TranslationsOfferDetailsEventStatusEs extends TranslationsOfferDetailsEventStatusEn {
	_TranslationsOfferDetailsEventStatusEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get notAvailable => 'Aún no disponible';
	@override String get completeToContinue => 'Completa esto para continuar';
	@override String get rejected => 'Rechazado';
	@override String get pending => 'Pendiente';
	@override String get completed => 'Completado';
	@override String get rejectedTime => 'Rechazado, se alcanzó el límite de tiempo';
	@override String get completeWithin => 'Completar dentro de';
}

// Path: offerDetails.availableOn
class _TranslationsOfferDetailsAvailableOnEs extends TranslationsOfferDetailsAvailableOnEn {
	_TranslationsOfferDetailsAvailableOnEs._(TranslationsEs root) : this._root = root, super.internal(root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get popUpButtonSuccessCopyURL => 'Copiado';
	@override String get availableOn => 'Disponible en';
	@override String get method1 => 'Método 1';
	@override String get method2 => 'Método 2';
	@override String get method1ScanQR => 'Escanee el código QR con el dispositivo móvil.';
	@override String get method2CopyURL => 'Pegue la URL en su dispositivo móvil.';
	@override String get buttonCopy => 'Copiar';
}
