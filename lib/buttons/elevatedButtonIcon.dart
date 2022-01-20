part of quick_widget_kit_224; 
 
 Widget elevatedButtonIcon({
    @required final VoidCallback? onPressed,
    final VoidCallback? longPress,
    final Color? borderColor,
    final double? borderWidth = 0.0,
    final double? elevation = 4,
    final Color? shadowColor,
    final int? animeDurationInMillisec,
    final Size? size,
    final double? borderRadius = 4,
    final Color? primaryColor,
    final double? paddingArround = 1,
    @required final IconData? icon,
    final Color? iconColor,
    final double? iconSize,
    @required final Widget? label,
    final bool? changePosition = false,
  }) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      onLongPress: longPress,
      style: ElevatedButton.styleFrom(
        elevation: elevation,
        shadowColor: shadowColor,
        padding: EdgeInsets.all(paddingArround!),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(borderRadius!),
          ),
        ),
        primary: primaryColor,
        side: BorderSide(
          color: borderColor ?? Colors.transparent,
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