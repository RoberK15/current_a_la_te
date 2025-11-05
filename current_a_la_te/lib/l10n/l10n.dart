import 'package:current_a_la_te/l10n/gen/app_localizations.dart';
import 'package:flutter/widgets.dart';

export 'package:current_a_la_te/l10n/gen/app_localizations.dart';

extension AppLocalizationsX on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this);
}
