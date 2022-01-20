 part of quick_widget_kit_224;
 
 InlineSpan textSpan({
    final String? text,
    final int? maxLines = 500,
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
    final List<InlineSpan>? children,
  }) {
    return TextSpan(
      text: text,
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
        fontSize: fontSize,
        fontStyle: fontStyle,
        fontWeight: fontWeight,
        // decoration: TextDecoration.underline,
        // decorationStyle: TextDecorationStyle.wavy,
        // decorationColor: Colors.red,
        // decorationThickness: 0.5,
      ),
      children: children,
    );
  }

  Widget textRich({
    required InlineSpan textSpan,
  }) {
    return Text.rich(
      textSpan,
    );
  }