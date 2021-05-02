import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'message_payload.g.dart';

/// Interface representing a Firebase Cloud Messaging message payload. One or
/// both of the `data` and `notification` keys are required.
///
/// See
/// [Build send requests](/docs/cloud-messaging/send-message)
/// for code samples and detailed documentation.
@BuiltValue(instantiable: false)
abstract class MessagePayloadRule<Data> {
  /// The notification message payload.
  NotificationPayload? get notification;

  MessagePayloadRule rebuild(Function(MessagePayloadRuleBuilder b) updates);
  MessagePayloadRuleBuilder toBuilder();
}

/// A basic built value for [MessagePayloadRule]
@BuiltValue()
abstract class BasicMessagePayload
    implements Built<BasicMessagePayload, BasicMessagePayloadBuilder>, MessagePayloadRule {
  static Serializer<BasicMessagePayload> get serializer => _$basicMessagePayloadSerializer;

  BasicMessagePayload._();

  factory BasicMessagePayload([void Function(BasicMessagePayloadBuilder b)? updates]) =
      _$BasicMessagePayload;

  /// The data message payload.
  BuiltMap<String, String>? get data;
}

/// A custom built value for [MessagePayloadRule]
@BuiltValue()
abstract class MessagePayload<Data>
    implements Built<MessagePayload<Data>, MessagePayloadBuilder<Data>>, MessagePayloadRule {
  static Serializer<MessagePayload> get serializer => _$messagePayloadSerializer;

  MessagePayload._();

  factory MessagePayload([void Function(MessagePayloadBuilder<Data> b)? updates]) =
      _$MessagePayload<Data>;

  /// The data message payload.
  Data? get data;
}

/// Interface representing an FCM legacy API notification message payload.
/// Notification messages let developers send up to 4KB of predefined
/// key-value pairs. Accepted keys are outlined below.
///
/// See [Build send requests](/docs/cloud-messaging/send-message)
/// for code samples and detailed documentation.
@BuiltValue()
abstract class NotificationPayload
    implements Built<NotificationPayload, NotificationPayloadBuilder> {
  static Serializer<NotificationPayload> get serializer => _$notificationPayloadSerializer;

  NotificationPayload._();

  factory NotificationPayload([void Function(NotificationPayloadBuilder b)? updates]) =
      _$NotificationPayload;

  /// Identifier used to replace existing notifications in the notification drawer.
  ///
  /// If not specified, each request creates a new notification.
  ///
  /// If specified and a notification with the same tag is already being shown,
  /// the new notification replaces the existing one in the notification drawer.
  ///
  /// **Platforms:** Android
  String? get tag;

  /// The notification's body text.
  ///
  /// **Platforms:** iOS, Android, Web
  String? get body;

  /// The notification's icon.
  ///
  /// **Android:** Sets the notification icon to `myicon` for drawable resource
  /// `myicon`. If you don't send this key in the request, FCM displays the
  /// launcher icon specified in your app manifest.
  ///
  /// **Web:** The URL to use for the notification's icon.
  ///
  /// **Platforms:** Android, Web
  String? get icon;

  /// The value of the badge on the home screen app icon.
  ///
  /// If not specified, the badge is not changed.
  ///
  /// If set to `0`, the badge is removed.
  ///
  /// **Platforms:** iOS
  String? get badge;

  /// The notification icon's color, expressed in `#rrggbb` format.
  ///
  /// **Platforms:** Android
  String? get color;

  /// The sound to be played when the device receives a notification. Supports
  /// "default" for the default notification sound of the device or the filename of a
  /// sound resource bundled in the app.
  /// Sound files must reside in `/res/raw/`.
  ///
  /// **Platforms:** Android
  String? get sound;

  /// The notification's title.
  ///
  /// **Platforms:** iOS, Android, Web
  String? get title;

  /// The key to the body string in the app's string resources to use to localize
  /// the body text to the user's current localization.
  ///
  /// **iOS:** Corresponds to `loc-key` in the APNs payload. See
  /// [Payload Key Reference](https://developer.apple.com/library/content/documentation/NetworkingInternet/Conceptual/RemoteNotificationsPG/PayloadKeyReference.html)
  /// and
  /// [Localizing the Content of Your Remote Notifications](https://developer.apple.com/library/content/documentation/NetworkingInternet/Conceptual/RemoteNotificationsPG/CreatingtheNotificationPayload.html#//apple_ref/doc/uid/TP40008194-CH10-SW9)
  /// for more information.
  ///
  /// **Android:** See
  /// [String Resources](http://developer.android.com/guide/topics/resources/string-resource.html)      * for more information.
  ///
  /// **Platforms:** iOS, Android
  String? get bodyLocKey;

  /// Variable string values to be used in place of the format specifiers in
  /// `body_loc_key` to use to localize the body text to the user's current
  /// localization.
  ///
  /// The value should be a stringified JSON array.
  ///
  /// **iOS:** Corresponds to `loc-args` in the APNs payload. See
  /// [Payload Key Reference](https://developer.apple.com/library/content/documentation/NetworkingInternet/Conceptual/RemoteNotificationsPG/PayloadKeyReference.html)
  /// and
  /// [Localizing the Content of Your Remote Notifications](https://developer.apple.com/library/content/documentation/NetworkingInternet/Conceptual/RemoteNotificationsPG/CreatingtheNotificationPayload.html#//apple_ref/doc/uid/TP40008194-CH10-SW9)
  /// for more information.
  ///
  /// **Android:** See
  /// [Formatting and Styling](http://developer.android.com/guide/topics/resources/string-resource.html#FormattingAndStyling)
  /// for more information.
  ///
  /// **Platforms:** iOS, Android
  String? get bodyLocArgs;

  /// Action associated with a user click on the notification. If specified, an
  /// activity with a matching Intent Filter is launched when a user clicks on the
  /// notification.
  ///
  ///   * **Platforms:** Android
  String? get clickAction;

  /// The key to the title string in the app's string resources to use to localize
  /// the title text to the user's current localization.
  ///
  /// **iOS:** Corresponds to `title-loc-key` in the APNs payload. See
  /// [Payload Key Reference](https://developer.apple.com/library/content/documentation/NetworkingInternet/Conceptual/RemoteNotificationsPG/PayloadKeyReference.html)
  /// and
  /// [Localizing the Content of Your Remote Notifications](https://developer.apple.com/library/content/documentation/NetworkingInternet/Conceptual/RemoteNotificationsPG/CreatingtheNotificationPayload.html#//apple_ref/doc/uid/TP40008194-CH10-SW9)
  /// for more information.
  ///
  /// **Android:** See
  /// [String Resources](http://developer.android.com/guide/topics/resources/string-resource.html)
  /// for more information.
  ///
  /// **Platforms:** iOS, Android
  String? get titleLocKey;

  /// Variable string values to be used in place of the format specifiers in
  /// `title_loc_key` to use to localize the title text to the user's current
  /// localization.
  ///
  /// The value should be a stringified JSON array.
  ///
  /// **iOS:** Corresponds to `title-loc-args` in the APNs payload. See
  /// [Payload Key Reference](https://developer.apple.com/library/content/documentation/NetworkingInternet/Conceptual/RemoteNotificationsPG/PayloadKeyReference.html)
  /// and
  /// [Localizing the Content of Your Remote Notifications](https://developer.apple.com/library/content/documentation/NetworkingInternet/Conceptual/RemoteNotificationsPG/CreatingtheNotificationPayload.html#//apple_ref/doc/uid/TP40008194-CH10-SW9)
  /// for more information.
  ///
  /// **Android:** See
  /// [Formatting and Styling](http://developer.android.com/guide/topics/resources/string-resource.html#FormattingAndStyling)
  /// for more information.
  ///
  /// **Platforms:** iOS, Android
  String? get titleLocArgs;
}
