part of quick_widget_kit_224;

Widget text({
  final String? text,
  final int? maxLines = 200,
  final Color? textColor,
  final Color? bgColor,
  final Color? shadowColor,
  final double? blurRadius = 0.0,
  final double? spreadRadius = 0.0,
  final double? xOffset = 0.0,
  final double? yOffset = 0.0,
  final double? fontSize = 14,
  final FontStyle? fontStyle = FontStyle.normal,
  final FontWeight? fontWeight = FontWeight.w500,
}) {
  return Text(
    text!,
    maxLines: maxLines,
    style: TextStyle(
      color: textColor,
      backgroundColor: bgColor,
      shadows: [
        BoxShadow(
          color: shadowColor ?? Colors.black,
          blurRadius: blurRadius!,
          spreadRadius: spreadRadius!,
          offset: Offset(xOffset!, yOffset!),
        )
      ],
      fontSize: fontSize!,
      fontStyle: fontStyle!,
      fontWeight: fontWeight!,
    ),
  );
}
