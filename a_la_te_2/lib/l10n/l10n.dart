import 'package:a_la_te_2/l10n/gen/app_localizations.dart';
import 'package:flutter/widgets.dart';

export 'package:a_la_te_2/l10n/gen/app_localizations.dart';

extension AppLocalizationsX on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this);
}
