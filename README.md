A collection of small, focused Flutter extension methods to make common
widget transformations concise and expressive.

Features

- Widget extensions for alignment, padding, and margin.
- Small, dependency-free helpers that wrap standard Flutter widgets.

Getting started

1. Add the package to your `pubspec.yaml` (when published):

```yaml
dependencies:
  modern_extensions_flutter: ^0.0.1
```

2. Import the package in Dart files:

```dart
import 'package:modern_extensions_flutter/modern_extensions_flutter.dart';
```

Usage

```dart
Container(color: Colors.blue, width: 100, height: 100)
  .paddingAll(12)
  .alignCenter();
```

Example

See the `example/` folder for a minimal runnable app demonstrating usage.

Running tests

```bash
flutter test
```

Publishing checklist

- Ensure `version` in `pubspec.yaml` follows semver and matches `CHANGELOG.md`.
- Run `flutter analyze --fatal-infos` and fix warnings.
- Run `dart format --set-exit-if-changed .` to format code.
- Run `flutter test` and ensure tests pass.
- Remove `publish_to: none` if present.

Contributing

Contributions are welcome — open issues or PRs on GitHub.

License

This project is licensed under the terms in the `LICENSE` file.
