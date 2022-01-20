 part of quick_widget_kit_224;
 
 Widget textButtonIcon({
    final VoidCallback? onPressed,
    final VoidCallback? longPress,
    // final Color? borderColor,
    // final double? borderWidth = 0.0,
    // final double? elevation = 0,
    // final Color? shadowColor,
    final int? animeDurationInMillisec,
    final Size? size,
    final double? borderRadius = 4,
    final Color? backgroundColor,
    final double? paddingArround = 5,
    @required final IconData? icon,
    final Color? iconColor,
    final double? iconSize,
    @required final Widget? label,
    final bool? changePosition = false,
  }) {
    return TextButton.icon(
      onPressed: onPressed,
      onLongPress: longPress,
      style: TextButton.styleFrom(
        // elevation: elevation,
        // shadowColor: shadowColor,
        // side: BorderSide(
        //   color: borderColor ?? Colors.transparent,
        //   width: borderWidth!,
        // ),
        padding: EdgeInsets.all(paddingArround!),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(borderRadius!),
          ),
        ),
        backgroundColor: backgroundColor,
        minimumSize: size,
        animationDuration:
            Duration(milliseconds: animeDurationInMillisec ?? 600),
      ),
      icon: changePosition == true
          ? label!
          : Icon(
              icon,
              color: iconColor,
              size: iconSize,
            ),
      label: changePosition == true
          ? Icon(
              icon,
              color: iconColor,
              size: iconSize,
            )
          : label!,
    );
  }
