# modern_extensions_flutter

A focused collection of small, dependency-free Flutter extension methods that make common
widget transformations and numeric helpers concise and expressive.

## What’s included

- Widget extensions
  - Alignment helpers (`alignTopLeft`, `alignCenter`, `alignOnly`, `alignDirectional`, ...)
  - Padding helpers (`paddingAll`, `paddingOnly`, `paddingFromLTRB`, `paddingZero`, ...)
  - Margin helpers (`marginAll`, `marginOnly`, `marginSymmetric`, ...)
  - Flex helpers (`toFlexible`, `toExpanded`)
  - Interaction helpers (`onTap`, `onTapInkWell`, `onDoubleTap`, ...)
- Numeric extensions
  - `Size` helpers (`size`, `widthSize`, `heightSize`, `sizeWith*`, ...)
  - Screen-responsive helpers (`h`, `w`, `sp`, `r`, `dp`) that compute percentages of the
    current `MediaQuery` size.

More extensions are planned and will be added to the public exports as they land.

## Quick start

Add the package to your `pubspec.yaml` (when published):

```yaml
dependencies:
  modern_extensions_flutter: ^0.0.1
```

Import the package in your Dart files:

```dart
import 'package:modern_extensions_flutter/modern_extensions_flutter.dart';
```

Then use the helpers directly on widgets or numbers:

```dart
Container(color: Colors.blue, width: 100, height: 100)
  .paddingAll(12)
  .alignCenter();

final s = 50.size; // Size(50,50)
final tenPercentHeight = 10.h(context);
```

## Example app

Open and run the `example/` app to see small demo pages that exercise the
extensions (Widgets, Numeric/Screen, Interactions):

```bash
cd example
flutter run
```

## Running tests

Run the package tests locally:

```bash
flutter test
```

## Project structure

- `lib/exports/` — grouped public re-exports you can import from the package root.
- `lib/src/` — private implementation files (extensions grouped by feature).
- `example/` — small demo app with pages showing extension usage.
- `test/` — unit and widget tests covering core extensions.

## Roadmap

- Add more extension groups (String, DateTime, List helpers).
- Improve coverage and add CI for analyze/format/test.

## Contributing

Contributions welcome — open issues or PRs. Please follow the existing code style
and add tests for new behavior.

## License

See the `LICENSE` file in the repository.
