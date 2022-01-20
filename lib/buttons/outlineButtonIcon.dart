  part of quick_widget_kit_224;
  
  Widget outlineButtonIcon({
    @required final VoidCallback? onPressed,
    final VoidCallback? longPress,
    final Color? borderColor,
    final double? borderWidth = 2.0,
    // final double? elevation = 0,
    // final Color? shadowColor,
    // final Color? backgroundColor,
    final int? animeDurationInMillisec,
    final Size? size,
    final double? borderRadius = 4,
    final double? paddingArround = 1,
    @required final IconData? icon,
    final MaterialColor? iconColor,
    final double? iconSize,
    @required final Widget? label,
    final bool? changePosition = false,
  }) {
    return OutlinedButton.icon(
      onPressed: onPressed,
      onLongPress: longPress,
      style: OutlinedButton.styleFrom(
        // elevation: elevation,
        // shadowColor: shadowColor,
        // backgroundColor: backgroundColor,
        padding: EdgeInsets.all(paddingArround!),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(borderRadius!),
          ),
        ),
        side: BorderSide(
          color: borderColor ?? Colors.black,
          width: borderWidth!,
        ),
        minimumSize: size,
        animationDuration:
            Duration(milliseconds: animeDurationInMillisec ?? 600),
      ),
      icon: changePosition == true
          ? label!
          : Icon(
              icon,
              size: iconSize,
              color: iconColor,
            ),
      label: changePosition == true
          ? Icon(
              icon,
              size: iconSize,
              color: iconColor,
            )
          : label!,
    );
  }