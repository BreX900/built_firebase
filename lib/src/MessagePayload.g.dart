// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'MessagePayload.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BasicMessagePayload> _$basicMessagePayloadSerializer =
    new _$BasicMessagePayloadSerializer();
Serializer<MessagePayload<Object>> _$messagePayloadSerializer =
    new _$MessagePayloadSerializer();
Serializer<NotificationPayload> _$notificationPayloadSerializer =
    new _$NotificationPayloadSerializer();

class _$BasicMessagePayloadSerializer
    implements StructuredSerializer<BasicMessagePayload> {
  @override
  final Iterable<Type> types = const [
    BasicMessagePayload,
    _$BasicMessagePayload
  ];
  @override
  final String wireName = 'BasicMessagePayload';

  @override
  Iterable<Object> serialize(
      Serializers serializers, BasicMessagePayload object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.data != null) {
      result
        ..add('data')
        ..add(serializers.serialize(object.data,
            specifiedType: const FullType(BuiltMap,
                const [const FullType(String), const FullType(String)])));
    }
    if (object.notification != null) {
      result
        ..add('notification')
        ..add(serializers.serialize(object.notification,
            specifiedType: const FullType(NotificationPayload)));
    }
    return result;
  }

  @override
  BasicMessagePayload deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BasicMessagePayloadBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap,
                  const [const FullType(String), const FullType(String)])));
          break;
        case 'notification':
          result.notification.replace(serializers.deserialize(value,
                  specifiedType: const FullType(NotificationPayload))
              as NotificationPayload);
          break;
      }
    }

    return result.build();
  }
}

class _$MessagePayloadSerializer
    implements StructuredSerializer<MessagePayload<Object>> {
  @override
  final Iterable<Type> types = const [MessagePayload, _$MessagePayload];
  @override
  final String wireName = 'MessagePayload';

  @override
  Iterable<Object> serialize(
      Serializers serializers, MessagePayload<Object> object,
      {FullType specifiedType = FullType.unspecified}) {
    final isUnderspecified =
        specifiedType.isUnspecified || specifiedType.parameters.isEmpty;
    if (!isUnderspecified) serializers.expectBuilder(specifiedType);
    final parameterData =
        isUnderspecified ? FullType.object : specifiedType.parameters[0];

    final result = <Object>[];
    if (object.data != null) {
      result
        ..add('data')
        ..add(serializers.serialize(object.data, specifiedType: parameterData));
    }
    if (object.notification != null) {
      result
        ..add('notification')
        ..add(serializers.serialize(object.notification,
            specifiedType: const FullType(NotificationPayload)));
    }
    return result;
  }

  @override
  MessagePayload<Object> deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final isUnderspecified =
        specifiedType.isUnspecified || specifiedType.parameters.isEmpty;
    if (!isUnderspecified) serializers.expectBuilder(specifiedType);
    final parameterData =
        isUnderspecified ? FullType.object : specifiedType.parameters[0];

    final result = isUnderspecified
        ? new MessagePayloadBuilder<Object>()
        : serializers.newBuilder(specifiedType) as MessagePayloadBuilder;

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'data':
          result.data =
              serializers.deserialize(value, specifiedType: parameterData);
          break;
        case 'notification':
          result.notification.replace(serializers.deserialize(value,
                  specifiedType: const FullType(NotificationPayload))
              as NotificationPayload);
          break;
      }
    }

    return result.build();
  }
}

class _$NotificationPayloadSerializer
    implements StructuredSerializer<NotificationPayload> {
  @override
  final Iterable<Type> types = const [
    NotificationPayload,
    _$NotificationPayload
  ];
  @override
  final String wireName = 'NotificationPayload';

  @override
  Iterable<Object> serialize(
      Serializers serializers, NotificationPayload object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.tag != null) {
      result
        ..add('tag')
        ..add(serializers.serialize(object.tag,
            specifiedType: const FullType(String)));
    }
    if (object.body != null) {
      result
        ..add('body')
        ..add(serializers.serialize(object.body,
            specifiedType: const FullType(String)));
    }
    if (object.icon != null) {
      result
        ..add('icon')
        ..add(serializers.serialize(object.icon,
            specifiedType: const FullType(String)));
    }
    if (object.badge != null) {
      result
        ..add('badge')
        ..add(serializers.serialize(object.badge,
            specifiedType: const FullType(String)));
    }
    if (object.color != null) {
      result
        ..add('color')
        ..add(serializers.serialize(object.color,
            specifiedType: const FullType(String)));
    }
    if (object.sound != null) {
      result
        ..add('sound')
        ..add(serializers.serialize(object.sound,
            specifiedType: const FullType(String)));
    }
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.bodyLocKey != null) {
      result
        ..add('bodyLocKey')
        ..add(serializers.serialize(object.bodyLocKey,
            specifiedType: const FullType(String)));
    }
    if (object.bodyLocArgs != null) {
      result
        ..add('bodyLocArgs')
        ..add(serializers.serialize(object.bodyLocArgs,
            specifiedType: const FullType(String)));
    }
    if (object.clickAction != null) {
      result
        ..add('clickAction')
        ..add(serializers.serialize(object.clickAction,
            specifiedType: const FullType(String)));
    }
    if (object.titleLocKey != null) {
      result
        ..add('titleLocKey')
        ..add(serializers.serialize(object.titleLocKey,
            specifiedType: const FullType(String)));
    }
    if (object.titleLocArgs != null) {
      result
        ..add('titleLocArgs')
        ..add(serializers.serialize(object.titleLocArgs,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  NotificationPayload deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NotificationPayloadBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'tag':
          result.tag = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'body':
          result.body = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'icon':
          result.icon = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'badge':
          result.badge = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'color':
          result.color = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sound':
          result.sound = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'bodyLocKey':
          result.bodyLocKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'bodyLocArgs':
          result.bodyLocArgs = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'clickAction':
          result.clickAction = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'titleLocKey':
          result.titleLocKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'titleLocArgs':
          result.titleLocArgs = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

abstract class MessagePayloadRuleBuilder<Data> {
  void replace(MessagePayloadRule<Data> other);
  void update(void Function(MessagePayloadRuleBuilder<Data>) updates);
  NotificationPayloadBuilder get notification;
  set notification(NotificationPayloadBuilder notification);
}

class _$BasicMessagePayload extends BasicMessagePayload {
  @override
  final BuiltMap<String, String> data;
  @override
  final NotificationPayload notification;

  factory _$BasicMessagePayload(
          [void Function(BasicMessagePayloadBuilder) updates]) =>
      (new BasicMessagePayloadBuilder()..update(updates)).build();

  _$BasicMessagePayload._({this.data, this.notification}) : super._();

  @override
  BasicMessagePayload rebuild(
          void Function(BasicMessagePayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BasicMessagePayloadBuilder toBuilder() =>
      new BasicMessagePayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BasicMessagePayload &&
        data == other.data &&
        notification == other.notification;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, data.hashCode), notification.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BasicMessagePayload')
          ..add('data', data)
          ..add('notification', notification))
        .toString();
  }
}

class BasicMessagePayloadBuilder
    implements
        Builder<BasicMessagePayload, BasicMessagePayloadBuilder>,
        MessagePayloadRuleBuilder {
  _$BasicMessagePayload _$v;

  MapBuilder<String, String> _data;
  MapBuilder<String, String> get data =>
      _$this._data ??= new MapBuilder<String, String>();
  set data(MapBuilder<String, String> data) => _$this._data = data;

  NotificationPayloadBuilder _notification;
  NotificationPayloadBuilder get notification =>
      _$this._notification ??= new NotificationPayloadBuilder();
  set notification(NotificationPayloadBuilder notification) =>
      _$this._notification = notification;

  BasicMessagePayloadBuilder();

  BasicMessagePayloadBuilder get _$this {
    if (_$v != null) {
      _data = _$v.data?.toBuilder();
      _notification = _$v.notification?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant BasicMessagePayload other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BasicMessagePayload;
  }

  @override
  void update(void Function(BasicMessagePayloadBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BasicMessagePayload build() {
    _$BasicMessagePayload _$result;
    try {
      _$result = _$v ??
          new _$BasicMessagePayload._(
              data: _data?.build(), notification: _notification?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
        _$failedField = 'notification';
        _notification?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BasicMessagePayload', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$MessagePayload<Data> extends MessagePayload<Data> {
  @override
  final Data data;
  @override
  final NotificationPayload notification;

  factory _$MessagePayload(
          [void Function(MessagePayloadBuilder<Data>) updates]) =>
      (new MessagePayloadBuilder<Data>()..update(updates)).build();

  _$MessagePayload._({this.data, this.notification}) : super._() {
    if (Data == dynamic) {
      throw new BuiltValueMissingGenericsError('MessagePayload', 'Data');
    }
  }

  @override
  MessagePayload<Data> rebuild(
          void Function(MessagePayloadBuilder<Data>) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MessagePayloadBuilder<Data> toBuilder() =>
      new MessagePayloadBuilder<Data>()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MessagePayload &&
        data == other.data &&
        notification == other.notification;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, data.hashCode), notification.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MessagePayload')
          ..add('data', data)
          ..add('notification', notification))
        .toString();
  }
}

class MessagePayloadBuilder<Data>
    implements
        Builder<MessagePayload<Data>, MessagePayloadBuilder<Data>>,
        MessagePayloadRuleBuilder {
  _$MessagePayload<Data> _$v;

  Data _data;
  Data get data => _$this._data;
  set data(Data data) => _$this._data = data;

  NotificationPayloadBuilder _notification;
  NotificationPayloadBuilder get notification =>
      _$this._notification ??= new NotificationPayloadBuilder();
  set notification(NotificationPayloadBuilder notification) =>
      _$this._notification = notification;

  MessagePayloadBuilder();

  MessagePayloadBuilder<Data> get _$this {
    if (_$v != null) {
      _data = _$v.data;
      _notification = _$v.notification?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant MessagePayload<Data> other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MessagePayload<Data>;
  }

  @override
  void update(void Function(MessagePayloadBuilder<Data>) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MessagePayload<Data> build() {
    _$MessagePayload<Data> _$result;
    try {
      _$result = _$v ??
          new _$MessagePayload<Data>._(
              data: data, notification: _notification?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'notification';
        _notification?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'MessagePayload', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$NotificationPayload extends NotificationPayload {
  @override
  final String tag;
  @override
  final String body;
  @override
  final String icon;
  @override
  final String badge;
  @override
  final String color;
  @override
  final String sound;
  @override
  final String title;
  @override
  final String bodyLocKey;
  @override
  final String bodyLocArgs;
  @override
  final String clickAction;
  @override
  final String titleLocKey;
  @override
  final String titleLocArgs;

  factory _$NotificationPayload(
          [void Function(NotificationPayloadBuilder) updates]) =>
      (new NotificationPayloadBuilder()..update(updates)).build();

  _$NotificationPayload._(
      {this.tag,
      this.body,
      this.icon,
      this.badge,
      this.color,
      this.sound,
      this.title,
      this.bodyLocKey,
      this.bodyLocArgs,
      this.clickAction,
      this.titleLocKey,
      this.titleLocArgs})
      : super._();

  @override
  NotificationPayload rebuild(
          void Function(NotificationPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationPayloadBuilder toBuilder() =>
      new NotificationPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationPayload &&
        tag == other.tag &&
        body == other.body &&
        icon == other.icon &&
        badge == other.badge &&
        color == other.color &&
        sound == other.sound &&
        title == other.title &&
        bodyLocKey == other.bodyLocKey &&
        bodyLocArgs == other.bodyLocArgs &&
        clickAction == other.clickAction &&
        titleLocKey == other.titleLocKey &&
        titleLocArgs == other.titleLocArgs;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc($jc(0, tag.hashCode),
                                                body.hashCode),
                                            icon.hashCode),
                                        badge.hashCode),
                                    color.hashCode),
                                sound.hashCode),
                            title.hashCode),
                        bodyLocKey.hashCode),
                    bodyLocArgs.hashCode),
                clickAction.hashCode),
            titleLocKey.hashCode),
        titleLocArgs.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NotificationPayload')
          ..add('tag', tag)
          ..add('body', body)
          ..add('icon', icon)
          ..add('badge', badge)
          ..add('color', color)
          ..add('sound', sound)
          ..add('title', title)
          ..add('bodyLocKey', bodyLocKey)
          ..add('bodyLocArgs', bodyLocArgs)
          ..add('clickAction', clickAction)
          ..add('titleLocKey', titleLocKey)
          ..add('titleLocArgs', titleLocArgs))
        .toString();
  }
}

class NotificationPayloadBuilder
    implements Builder<NotificationPayload, NotificationPayloadBuilder> {
  _$NotificationPayload _$v;

  String _tag;
  String get tag => _$this._tag;
  set tag(String tag) => _$this._tag = tag;

  String _body;
  String get body => _$this._body;
  set body(String body) => _$this._body = body;

  String _icon;
  String get icon => _$this._icon;
  set icon(String icon) => _$this._icon = icon;

  String _badge;
  String get badge => _$this._badge;
  set badge(String badge) => _$this._badge = badge;

  String _color;
  String get color => _$this._color;
  set color(String color) => _$this._color = color;

  String _sound;
  String get sound => _$this._sound;
  set sound(String sound) => _$this._sound = sound;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _bodyLocKey;
  String get bodyLocKey => _$this._bodyLocKey;
  set bodyLocKey(String bodyLocKey) => _$this._bodyLocKey = bodyLocKey;

  String _bodyLocArgs;
  String get bodyLocArgs => _$this._bodyLocArgs;
  set bodyLocArgs(String bodyLocArgs) => _$this._bodyLocArgs = bodyLocArgs;

  String _clickAction;
  String get clickAction => _$this._clickAction;
  set clickAction(String clickAction) => _$this._clickAction = clickAction;

  String _titleLocKey;
  String get titleLocKey => _$this._titleLocKey;
  set titleLocKey(String titleLocKey) => _$this._titleLocKey = titleLocKey;

  String _titleLocArgs;
  String get titleLocArgs => _$this._titleLocArgs;
  set titleLocArgs(String titleLocArgs) => _$this._titleLocArgs = titleLocArgs;

  NotificationPayloadBuilder();

  NotificationPayloadBuilder get _$this {
    if (_$v != null) {
      _tag = _$v.tag;
      _body = _$v.body;
      _icon = _$v.icon;
      _badge = _$v.badge;
      _color = _$v.color;
      _sound = _$v.sound;
      _title = _$v.title;
      _bodyLocKey = _$v.bodyLocKey;
      _bodyLocArgs = _$v.bodyLocArgs;
      _clickAction = _$v.clickAction;
      _titleLocKey = _$v.titleLocKey;
      _titleLocArgs = _$v.titleLocArgs;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationPayload other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$NotificationPayload;
  }

  @override
  void update(void Function(NotificationPayloadBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NotificationPayload build() {
    final _$result = _$v ??
        new _$NotificationPayload._(
            tag: tag,
            body: body,
            icon: icon,
            badge: badge,
            color: color,
            sound: sound,
            title: title,
            bodyLocKey: bodyLocKey,
            bodyLocArgs: bodyLocArgs,
            clickAction: clickAction,
            titleLocKey: titleLocKey,
            titleLocArgs: titleLocArgs);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
