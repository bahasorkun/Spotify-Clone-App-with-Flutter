# Copilot Instructions for spotify_clone_app

## Project Overview

- This is a Flutter-based Spotify clone app, structured for cross-platform (iOS, Android, Web, Desktop) development.
- Main app code is under `lib/`, with `presentation/` for UI, `core/` for configs, and `common/` for shared helpers/widgets.
- Asset management is centralized in `assets/` (fonts, images, vectors).

## Key Architectural Patterns

- **UI Layer:** All screens/pages are in `lib/presentation/`, grouped by feature (e.g., `auth/pages/`).
- **Widgets:** Reusable widgets are in `lib/common/widgets/`.
- **Theme & Assets:** Colors, vectors, and theme configs are in `lib/core/configs/`.
- **Helpers:** Utility functions (e.g., dark mode detection) are in `lib/common/helpers/`.
- **Navigation:** Uses Flutter's `Navigator` for page transitions (see `onTap` handlers in UI code).

## Developer Workflows

- **Build:**
  - Standard Flutter build commands apply: `flutter run`, `flutter build <platform>`.
  - For iOS: Run `pod install` in `ios/` if dependencies change.
- **Test:**
  - Widget tests are in `test/`. Run with `flutter test`.
- **Assets:**
  - Add new assets to `assets/` and update `pubspec.yaml` accordingly.
- **Hot Reload:**
  - Use `flutter run` and save files for hot reload during development.

## Project-Specific Conventions

- **File Naming:** Use snake_case for files and directories.
- **Widget Structure:** Stateless widgets are preferred unless state is required.
- **Theming:** Always use `AppColors` and `Theme.of(context)` for colors/styles.
- **SVGs:** Use `flutter_svg` for vector assets (see `SvgPicture.asset`).
- **Dark Mode:** Use `context.isDarkMode` (from custom helper) for theme logic.
- **Navigation:** Use `MaterialPageRoute` for navigation between pages.

## Integration Points

- **External Packages:**
  - `flutter_svg` for SVG rendering
  - Custom fonts (Satoshi) in `assets/fonts/`
- **Platform Integration:**
  - iOS/Android configs in `ios/` and `android/` folders

## Examples

- To add a new page: create a Dart file in `lib/presentation/<feature>/pages/`, define a `StatelessWidget`, and add navigation via `Navigator.push`.
- To add a new asset: place it in `assets/`, then declare it in `pubspec.yaml` under `assets:`.

## References

- Main entry: `lib/main.dart`
- Example UI: `lib/presentation/auth/pages/register.dart`
- Theme: `lib/core/configs/theme/app_colors.dart`
- Vectors: `lib/core/configs/assets/app_vectors.dart`

---

Update this file if you introduce new architectural patterns, workflows, or conventions.
