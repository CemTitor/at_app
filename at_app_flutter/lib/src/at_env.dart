import 'package:at_onboarding_flutter/at_onboarding_flutter.dart' show RootEnvironment;
import 'package:flutter_dotenv/flutter_dotenv.dart' show dotenv;

/// AtEnv is a helper class to load in the environment variables from the .env file
class AtEnv {
  /// Load the environment variables from the .env file.
  /// Directly calls load from the dotenv package.
  static Future<void> load() => dotenv.load();

  /// Returns the root domain from the environment.
  /// Root domain is used to control what root server you want to use for the app.
  static final String rootDomain = getEnv('ROOT_DOMAIN', fallback: 'root.atsign.org');

  /// Returns the namespace from the environment.
  /// Namespace is used to filter by an app's namespace from the secondary server.
  static final String appNamespace = getEnv('NAMESPACE', fallback: 'at_skeleton_app');

  /// Returns the app api key from the environment.
  /// The api key used to generate free @signs by at_onboarding_flutter.
  static final String? appApiKey = getEnv('API_KEY');

  /// Returns [RootEnvironment.Staging] if [appApiKey] is null.
  /// Returns [RootEnvironment.Production] if [appApiKey] is set in .env.
  /// Used by Onboarding in the templates.
  static RootEnvironment get rootEnvironment =>
      (appApiKey == null) ? RootEnvironment.Staging : RootEnvironment.Production;

  static dynamic getEnv(String key, {dynamic fallback}) {
    try {
      dynamic result = dotenv.maybeGet(key);
      if (result == null) return fallback;
      return result;
    } catch (_) {
      return fallback;
    }
  }
}
