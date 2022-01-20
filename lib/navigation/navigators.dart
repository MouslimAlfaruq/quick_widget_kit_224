part of quick_widget_kit_224;

  void navBack({
    final BuildContext? context,
  }) {
    return Navigator.of(context!).pop();
  }

  Future<dynamic> navTo({
    @required final Widget? screen,
    final BuildContext? context,
  }) {
    return Navigator.push(
      context!,
      MaterialPageRoute(
        builder: (_) {
          return screen!;
        },
      ),
    );
  }

  Future<dynamic> navNamedTo({
    @required final String? path,
    final BuildContext? context,
  }) {
    return Navigator.pushNamed(context!, path!);
  }

  Future<dynamic> navReplace({
    @required final Widget? screen,
    final BuildContext? context,
  }) {
    return Navigator.pushReplacement(
      context!,
      MaterialPageRoute(
        builder: (_) {
          return screen!;
        },
      ),
    );
  }

  Future<dynamic> navNamedReplace({
    @required final String? path,
    final BuildContext? context,
  }) {
    return Navigator.pushReplacementNamed(context!, path!);
  }

  Future<dynamic> navRemoveAll({
    @required final Widget? screen,
    final BuildContext? context,
  }) {
    return Navigator.of(context!).pushAndRemoveUntil(
      MaterialPageRoute(
        builder: (context) => screen!,
      ),
      (Route<dynamic> route) => false,
    );
  }

  Future<dynamic> navNameRemoveAll({
    @required final String? path,
    final BuildContext? context,
  }) {
    return Navigator.of(context!).pushNamedAndRemoveUntil(
      path!,
      (Route<dynamic> route) => false,
    );
  }