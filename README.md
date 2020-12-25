# built_firebase

### Firebase Firestore

Provides a `SerializerPlugin` to convert the data json received from **_cloud_firestore_** 
with types (`GeoPoint` and `TimeStamp`) into common types such as `DateTime` and a **_built value_** of type `GeoPoint`


```dart
final serializers = (Serializers().toBuilder()
  ..applyPlugin(StandardJsonPlugin())
  ..applyPlugin(FirestoreSerializerPlugin())
).build();

final myDataType = serializers.deserialize(myDoc.data());
```

### Firebase Messaging

Provides a _**built value**_ for messages received by the **_firebase_messaging_** package
- `BasicMessagePayload` or `MessagePayload`
- `NotificationPayload`


### Common features

#### LocaleSerializer

`Serializer` for the `Local` type of **_dart_**

##### ByPassSerializer

`Serializer` for the specified type. Specifically, it does not serialize and deserialize the specified type

```dart
final serializers = (Serializers().toBuilder()..addSerializer(ByPassSerializer<TimeStamp>())).build();
```