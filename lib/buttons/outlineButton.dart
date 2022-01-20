part of quick_widget_kit_224;

 Widget outlineButton({
    @required final VoidCallback? onPressed,
    final VoidCallback? longPress,
    final Color? borderColor,
    final double? borderWidth = 2.0,
    // final double? elevation = 0,
    // final Color? shadowColor,
    final int? animeDurationInMillisec,
    final Size? size,
    final double borderRadius = 4,
    // final Color? backgroundColor = Colors.transparent,
    final double? paddingArround = 1,
    @required final Widget? label,
  }) {
    return OutlinedButton(
      onPressed: onPressed,
      onLongPress: longPress,
      style: OutlinedButton.styleFrom(
        // elevation: elevation,
        // shadowColor: shadowColor,
        padding: EdgeInsets.all(paddingArround!),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(borderRadius),
          ),
        ),
        // backgroundColor: backgroundColor,
        side: BorderSide(
          color: borderColor ?? Colors.black,
          width: borderWidth!,
        ),
        minimumSize: size,
        animationDuration:
            Duration(milliseconds: animeDurationInMillisec ?? 600),
      ),
      child: label!,
    );
  }