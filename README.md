# Flutter Github Issues

This app displays the list of [`Flutter's Github repository issues`](https://github.com/flutter/flutter/issues) using Github's [`GraphQL`](https://pub.dev/packages/graphql_flutter) API. This list is also sorted and filtered using the API.

[`Freezed`](https://pub.dev/packages/freezed) is used generate data models that are easier to build when the jsons are deserialized.

The app architecture is based on [`provider`](https://pub.dev/packages/provider) and [`GetIt`](https://pub.dev/packages/get_it).

UI is inspired by Github's mobile app.

## Running

Before running this example, generate your own [`Personal access token`](https://github.com/settings/tokens). Add it to `lib/constants/api.dart`, as shown below:

```dart
const String GH_ACCESS_TOKEN = '<INSERT YOUR GITHUB ACCES TOKEN HERE>';
```