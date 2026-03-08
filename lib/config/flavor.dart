enum Flavor {
  development,
  staging,
  production,
}

extension FlavorExtension on Flavor {
  String get envFileName {
    switch (this) {
      case Flavor.development:
        return '.env.dev';
      case Flavor.staging:
        return '.env.staging';
      case Flavor.production:
        return '.env.production';
    }
  }

  String get name {
    switch (this) {
      case Flavor.development:
        return 'Development';
      case Flavor.staging:
        return 'Staging';
      case Flavor.production:
        return 'Production';
    }
  }
}
