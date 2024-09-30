// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ru locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ru';

  static String m0(value) => "Высота: ${value} м";

  static String m1(distance) => "${distance} км";

  static String m2(speed) => "${speed} км/ч";

  static String m3(value) => "Максимальная высота: ${value} м";

  static String m4(value) => "${value} м";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "aBadCertificateErrorOccurred": MessageLookupByLibrary.simpleMessage(
            "Произошла ошибка с ошибочным сертификатом"),
        "aBadResponseErrorOccurred": MessageLookupByLibrary.simpleMessage(
            "Произошла ошибка неправильного ответа"),
        "aContinueUrlMustBeProvidedInTheRequest":
            MessageLookupByLibrary.simpleMessage(
                "В запросе должен быть указан URL-адрес продолжения"),
        "aGoodGpsSignalLevelIsRequiredToRecordThe":
            MessageLookupByLibrary.simpleMessage(
                "A good GPS signal level is required to record the track correctly."),
        "actions": MessageLookupByLibrary.simpleMessage("Действия"),
        "addMemory":
            MessageLookupByLibrary.simpleMessage("Добавить воспоминание"),
        "addPicture":
            MessageLookupByLibrary.simpleMessage("Добавить фотографию"),
        "addToFavorites":
            MessageLookupByLibrary.simpleMessage("Добавить в избранные"),
        "addTrack": MessageLookupByLibrary.simpleMessage("Добавить трек"),
        "allow": MessageLookupByLibrary.simpleMessage("Разрешить"),
        "alreadyAddedToFavorites":
            MessageLookupByLibrary.simpleMessage("Уже добавлен в избранное"),
        "alreadyContainsElement":
            MessageLookupByLibrary.simpleMessage("Уже содержит элемент"),
        "altitude": m0,
        "anAndroidPackageNameMustBeProvidedIfTheAndroid":
            MessageLookupByLibrary.simpleMessage(
                "Если требуется установить приложение для Android, необходимо указать название пакета Android"),
        "anErrorHasOccurredInTheApplication":
            MessageLookupByLibrary.simpleMessage(
                "Произошла ошибка в приложении!"),
        "anIosBundleIdMustBeProvidedIfAnApp": MessageLookupByLibrary.simpleMessage(
            "Если указан идентификатор магазина приложений, необходимо указать идентификатор пакета iOS"),
        "attention": MessageLookupByLibrary.simpleMessage("Внимание"),
        "averageSpeed":
            MessageLookupByLibrary.simpleMessage("Средняя скорость"),
        "back": MessageLookupByLibrary.simpleMessage("Назад"),
        "beforeUploadingAPhotoMakeSureThatYourInternetConnection":
            MessageLookupByLibrary.simpleMessage(
                "Прежде чем загрузить фотографию, убедитесь, что ваше интернет-соединение стабильно"),
        "cancel": MessageLookupByLibrary.simpleMessage("Назад"),
        "checkYourInternetConnectionAndTryAgain":
            MessageLookupByLibrary.simpleMessage(
                "Проверьте свое интернет-соединение и повторите попытку"),
        "chooseFromTheLibrary":
            MessageLookupByLibrary.simpleMessage("Выбрать из галереи"),
        "comment": MessageLookupByLibrary.simpleMessage("Комментарий"),
        "community": MessageLookupByLibrary.simpleMessage("Сообщество"),
        "connectionTimeoutFailureOccurred":
            MessageLookupByLibrary.simpleMessage(
                "Произошел сбой тайм-аута соединения"),
        "createAnAccount": MessageLookupByLibrary.simpleMessage("Регистрация"),
        "createNewAccount":
            MessageLookupByLibrary.simpleMessage("Зарегистрироваться"),
        "delete": MessageLookupByLibrary.simpleMessage("Удалить"),
        "deleteAndExit":
            MessageLookupByLibrary.simpleMessage("Удалить и выйти"),
        "doYouWantToFinishRecordingTheTrack":
            MessageLookupByLibrary.simpleMessage(
                "Вы хотите закончить запись трека?"),
        "dontSave": MessageLookupByLibrary.simpleMessage("Не сохранять"),
        "edit": MessageLookupByLibrary.simpleMessage("Редактировать"),
        "editMemory":
            MessageLookupByLibrary.simpleMessage("Редактировать воспоминание"),
        "editTrack": MessageLookupByLibrary.simpleMessage("Редактировать трек"),
        "emailAlreadyInUse": MessageLookupByLibrary.simpleMessage(
            "Электронная почта уже используется"),
        "enterMemoryName": MessageLookupByLibrary.simpleMessage(
            "Введите имя для воспоминания"),
        "enterTrackName":
            MessageLookupByLibrary.simpleMessage("Введите название для трека"),
        "enterYourComment":
            MessageLookupByLibrary.simpleMessage("Введите ваш комментарий"),
        "enterYourEmail":
            MessageLookupByLibrary.simpleMessage("Введите вашу почту"),
        "enterYourFullName":
            MessageLookupByLibrary.simpleMessage("Введите ваше имя"),
        "enterYourPassword":
            MessageLookupByLibrary.simpleMessage("Введите ваш пароль"),
        "enterYourPasswordRecoveryEmail": MessageLookupByLibrary.simpleMessage(
            "Введите свой адрес электронной почты для восстановления пароля"),
        "error": MessageLookupByLibrary.simpleMessage("Ошибка!"),
        "favouriteTracks":
            MessageLookupByLibrary.simpleMessage("Избранные треки"),
        "female": MessageLookupByLibrary.simpleMessage("Женский"),
        "forgotPassword":
            MessageLookupByLibrary.simpleMessage("Забыли пароль?"),
        "hasNotBeenAddedToFavoritesYet": MessageLookupByLibrary.simpleMessage(
            "Еще не был добавлен в избранное"),
        "image": MessageLookupByLibrary.simpleMessage("Изображение"),
        "inOrderToViewUserInformationYouNeedToLog":
            MessageLookupByLibrary.simpleMessage(
                "Для того чтобы просмотреть информацию о пользователе, необходимо авторизоваться"),
        "invalidComment":
            MessageLookupByLibrary.simpleMessage("Некорректный комментарий"),
        "invalidCredential":
            MessageLookupByLibrary.simpleMessage("Неверные учетные данные"),
        "invalidEmailAddress": MessageLookupByLibrary.simpleMessage(
            "Введите корректный адрес электронной почты"),
        "invalidMemoryName":
            MessageLookupByLibrary.simpleMessage("Некорректное имя"),
        "invalidName": MessageLookupByLibrary.simpleMessage("Некорректное имя"),
        "invalidPassword":
            MessageLookupByLibrary.simpleMessage("Некорректный пароль"),
        "invalidTrackName":
            MessageLookupByLibrary.simpleMessage("Некорректное имя трека"),
        "itIsImpossibleToStartRecording":
            MessageLookupByLibrary.simpleMessage("Невозможно начать запись"),
        "itIsNotPossibleToGetYourCurrentLocation":
            MessageLookupByLibrary.simpleMessage(
                "Невозможно получить ваше текущее местоположение"),
        "km": m1,
        "km_per_h": m2,
        "locationServiceAreDisabled": MessageLookupByLibrary.simpleMessage(
            "Служба геолокации отключена."),
        "logIn": MessageLookupByLibrary.simpleMessage("Войти"),
        "logInToYourAccount": MessageLookupByLibrary.simpleMessage(
            "Войдите в вашу учетную запись"),
        "male": MessageLookupByLibrary.simpleMessage("Мужской"),
        "maxAltitude": m3,
        "memories": MessageLookupByLibrary.simpleMessage("Воспоминания"),
        "myFavouriteTracks":
            MessageLookupByLibrary.simpleMessage("Мои избранные треки"),
        "myTracks": MessageLookupByLibrary.simpleMessage("Мои треки"),
        "name": MessageLookupByLibrary.simpleMessage("Имя"),
        "noRemoveRights":
            MessageLookupByLibrary.simpleMessage("Нет прав на удаление"),
        "noUpdateRights":
            MessageLookupByLibrary.simpleMessage("Нет прав на обновление"),
        "notification": MessageLookupByLibrary.simpleMessage("Уведомление"),
        "okay": MessageLookupByLibrary.simpleMessage("Хорошо"),
        "operation_not_allowed":
            MessageLookupByLibrary.simpleMessage("Операция запрещена"),
        "pause": MessageLookupByLibrary.simpleMessage("Пауза"),
        "profile": MessageLookupByLibrary.simpleMessage("Профиль"),
        "prohibit": MessageLookupByLibrary.simpleMessage("Запретить"),
        "receiveTimeoutFailureOccurred": MessageLookupByLibrary.simpleMessage(
            "Произошел сбой тайм-аута приема"),
        "refresh": MessageLookupByLibrary.simpleMessage("Обновить"),
        "removeFromFavourites":
            MessageLookupByLibrary.simpleMessage("Удалить из избранных"),
        "repeat": MessageLookupByLibrary.simpleMessage("Повторить"),
        "routeLength": MessageLookupByLibrary.simpleMessage("Расстояние"),
        "save": MessageLookupByLibrary.simpleMessage("Сохранить"),
        "sendPassword":
            MessageLookupByLibrary.simpleMessage("Отправить пароль"),
        "sendTimeoutFailureOccurred": MessageLookupByLibrary.simpleMessage(
            "Произошел сбой тайм-аута отправки"),
        "shareLimitMessage": MessageLookupByLibrary.simpleMessage(
            "В настоящее время навигация по ссылке доступна только для Android версии мобильного приложения."),
        "signOut": MessageLookupByLibrary.simpleMessage("Выйти из аккаунта"),
        "signUp": MessageLookupByLibrary.simpleMessage("Зарегистрироваться"),
        "startRecording": MessageLookupByLibrary.simpleMessage("Начать запись"),
        "stop": MessageLookupByLibrary.simpleMessage(" Остановить"),
        "takeAPhoto":
            MessageLookupByLibrary.simpleMessage("Сделать фотографию"),
        "theCollectionDoesNotContainTheRequiredElement":
            MessageLookupByLibrary.simpleMessage(
                "Коллекция не содержит необходимого элемента"),
        "theContentHasBeenDeleted":
            MessageLookupByLibrary.simpleMessage("Контент был удален."),
        "theContinuationUrlIsNotWhitelisted":
            MessageLookupByLibrary.simpleMessage(
                "URL-адрес продолжения не занесен в белый список"),
        "theContinueUrlProvidedInTheRequestIsInvalid":
            MessageLookupByLibrary.simpleMessage(
                "URL-адрес продолжения, указанный в запросе, является недопустимым"),
        "theDataHasBeenSuccessfullyUpdated":
            MessageLookupByLibrary.simpleMessage("Данные успешно обновлены"),
        "theEntryWasSuccessfullyAdded": MessageLookupByLibrary.simpleMessage(
            "Запись была успешно добавлена"),
        "theMemoryHasBeenSuccessfullyDeleted":
            MessageLookupByLibrary.simpleMessage(
                "Воспоминание успешно удалено"),
        "thePasswordHasBeenSentToTheSpecifiedEmailAddress":
            MessageLookupByLibrary.simpleMessage(
                "Пароль был отправлен на указанный адрес электронной почты."),
        "theRequestWasCanceled":
            MessageLookupByLibrary.simpleMessage("Запрос был отменен"),
        "theTrackIsNotInTheListOfUserTracks":
            MessageLookupByLibrary.simpleMessage(
                "Трека нет в списке пользовательских треков"),
        "theTrackWasSuccessfullyDeleted":
            MessageLookupByLibrary.simpleMessage("Трек был успешно удален"),
        "theUserHasBeenSuccessfullyRegistered":
            MessageLookupByLibrary.simpleMessage(
                "Пользователь успешно зарегистрирован"),
        "theUserIsTheCreatorOfTheTrack": MessageLookupByLibrary.simpleMessage(
            "Пользователь является создателем трека"),
        "theUserIsUnauthorized":
            MessageLookupByLibrary.simpleMessage("Пользователь неавторизован"),
        "thereAreNoTrackRecordingsHereYet":
            MessageLookupByLibrary.simpleMessage(
                "Пока здесь нет записей треков"),
        "thereIsNoPermissionToDetermineTheUsersLocation":
            MessageLookupByLibrary.simpleMessage(
                "Нет разрешения на определение местоположения."),
        "thereIsNoPermissionToPerformThisAction":
            MessageLookupByLibrary.simpleMessage(
                "Нет разрешения для выполнения этого действия."),
        "thereIsNotId": MessageLookupByLibrary.simpleMessage(
            "Нет необходимого идентификатора"),
        "time": MessageLookupByLibrary.simpleMessage("Время"),
        "toContinue": MessageLookupByLibrary.simpleMessage("Продолжить"),
        "tooManyRequests":
            MessageLookupByLibrary.simpleMessage("Слишком много запросов"),
        "trackAddedSuccessfully":
            MessageLookupByLibrary.simpleMessage("Трек успешно добавлен"),
        "trackingRecordNotificationBody": MessageLookupByLibrary.simpleMessage(
            "Это необходимо для записи трекинга."),
        "trackingRecordNotificationTitle": MessageLookupByLibrary.simpleMessage(
            "Uniqtrack получает информацию о вашем местоположении"),
        "uploadPhotos":
            MessageLookupByLibrary.simpleMessage("Добавленные фотографии"),
        "userHasBeenDisabled":
            MessageLookupByLibrary.simpleMessage("Пользователь был отключен"),
        "userNotFound":
            MessageLookupByLibrary.simpleMessage("Пользователь не найден"),
        "userTokenExpired": MessageLookupByLibrary.simpleMessage(
            "Срок действия пользовательского токена истек"),
        "value_m": m4,
        "weakPassword": MessageLookupByLibrary.simpleMessage("Слабый пароль"),
        "wrongPassword": MessageLookupByLibrary.simpleMessage("Неверный пароль")
      };
}
