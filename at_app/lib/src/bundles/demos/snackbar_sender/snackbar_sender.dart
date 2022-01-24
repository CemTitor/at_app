// GENERATED CODE - MODIFY AS NECESSARY
// PREVENT OVERWRITING THIS FILE BELOW:
// LOCKED = FALSE

import 'package:at_template/at_template.dart';
import 'package:at_app/src/models/at_app_template.dart';
import 'package:pub_semver/pub_semver.dart';

import 'snackbar_sender_template_bundle.dart';

export 'snackbar_sender_template_bundle.dart';

final snackbarSenderTemplate = AtAppTemplate(
  name: 'snackbar_sender',
  description: 'code for the snackbar_sender demo app',
  vars: AtTemplateVars(
    includeBundles: {'snackbar_sender'},
    dependencies: ["at_client_mobile: ^3.0.3","at_onboarding_flutter: ^3.0.1","at_utils: ^3.0.0","path_provider: ^2.0.5","flutter_dotenv: ^5.0.2","at_app_flutter: null"],
    kotlinVersion: Version.parse('1.4.31'),
    flutterConfig: [],
  ),
  overrideEnv: true,
  env: {"NAMESPACE":"fourballcorporate9","API_KEY":"477b-876u-bcez-c42z-6a3d"},
  bundles: [BaseTemplateBundle(), AndroidTemplateBundle(), IosTemplateBundle(), SnackbarSenderTemplateBundle()],
);