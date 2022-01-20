part of quick_widget_kit_224;

 Widget textButton({
    @required final VoidCallback? onPressed,
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
    @required final Widget? label,
  }) {
    return TextButton(
      onLongPress: longPress,
      onPressed: onPressed,
      style: TextButton.styleFrom(
        // elevation: elevation,
        // shadowColor: shadowColor,
        padding: EdgeInsets.all(paddingArround!),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(borderRadius!),
          ),
        ),
        backgroundColor: backgroundColor,
        // side: BorderSide(
        //   color: borderColor ?? Colors.transparent,
        //   width: borderWidth!,
        // ),
        minimumSize: size,
        animationDuration:
            Duration(milliseconds: animeDurationInMillisec ?? 600),
      ),
      child: label!,
    );
  }