abstract class Assets {
  const Assets._();

  // ignore: library_private_types_in_public_api
  static _Icons get icons => const _Icons();
}

abstract class _AssetsHolder {
  final String basePath;

  const _AssetsHolder(this.basePath);
}

class _Icons extends _AssetsHolder {
  const _Icons() : super('assets/icons');

  String get appLogo => '$basePath/logo.svg';

  String get dropdownIcon => '$basePath/dropdown.png';

  String get cancel => '$basePath/cancel.png';

  String get success => '$basePath/success.svg';

  String get menu => '$basePath/menu.svg';

  String get successRounded => '$basePath/success_rounded.svg';

  String get errorRounded => '$basePath/error_rounded.svg';

  String get warningRounded => '$basePath/warning_rounded.svg';

}

