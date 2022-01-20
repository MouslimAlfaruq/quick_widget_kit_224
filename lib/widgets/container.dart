
part of quick_widget_kit_224;

  Widget container({
    final Widget? child,
    final Color? color,
    final ImageProvider? decorationImage,
    final BoxFit? fit,
    final bool? isgradient = false,
    final BoxShape? shape = BoxShape.rectangle,
    final bool? isMarginSymmetric = false,
    final bool? isMarginAll = false,
    final bool? isMarginOnly = false,
    final double? marginTop,
    final double? marginBottom,
    final double? marginLeft,
    final double? marginRight,
    final double? marginVertical,
    final double? marginHorizontal,
    final double? marginAll,
    final bool? isPaddingSymmetric = false,
    final bool? isPaddingAll = false,
    final bool? isPaddingOnly = false,
    final double? paddingTop,
    final double? paddingBottom,
    final double? paddingLeft,
    final double? paddingRight,
    final double? paddingVertical,
    final double? paddingHorizontal,
    final double? paddingAll,
    final double? borderWidth = 0.0,
    final double? radialGradiantRadius = 0.5,
    final Color? borderColor = Colors.black,
    final bool? isCircularRadius = false,
    final bool? isOnlyCircularRadius = false,
    final double? circularRadius,
    final double? bottomRight,
    final double? bottomLeft,
    final double? topRight,
    final double? topLeft,
    final Color? shadowColor,
    final double? blurRadius = 0.0,
    final double? spreadRadius = 0.0,
    final double? xOffset,
    final double? yOffset,
    final bool? isLinearGradiant = false,
    final bool? isRadialGradiant = false,
    final List<Color>? linearGradiantColor,
    final List<Color>? radialGradiantColor,
    final AlignmentGeometry? beginLinearGradiant,
    final AlignmentGeometry? endLinearGradiant,
    final double? height,
    final double? width,
  }) {
    return Container(
      height: height,
      width: width,
      margin: isMarginAll == true
          ? EdgeInsets.all(marginAll ?? 0)
          : isMarginSymmetric == true
              ? EdgeInsets.symmetric(
                  horizontal: marginHorizontal ?? 0,
                  vertical: marginVertical ?? 0,
                )
              : isMarginOnly == true
                  ? EdgeInsets.only(
                      bottom: marginBottom ?? 0,
                      right: marginRight ?? 0,
                      left: marginLeft ?? 0,
                      top: marginTop ?? 0,
                    )
                  : const EdgeInsets.all(1.0),
      padding: isPaddingAll == true
          ? EdgeInsets.all(paddingAll ?? 0)
          : isPaddingSymmetric == true
              ? EdgeInsets.symmetric(
                  horizontal: paddingHorizontal ?? 0,
                  vertical: paddingVertical ?? 0,
                )
              : isPaddingOnly == true
                  ? EdgeInsets.only(
                      bottom: paddingBottom ?? 0,
                      right: paddingRight ?? 0,
                      left: paddingLeft ?? 0,
                      top: paddingTop ?? 0,
                    )
                  : const EdgeInsets.all(1.0),
      decoration: BoxDecoration(
        border: Border.all(
          width: borderWidth!,
          color: borderColor!,
        ),
        borderRadius: isCircularRadius == true
            ? BorderRadius.circular(circularRadius ?? 5)
            : isOnlyCircularRadius == true
                ? BorderRadius.only(
                    bottomLeft: Radius.circular(bottomLeft ?? 0),
                    bottomRight: Radius.circular(bottomRight ?? 0),
                    topLeft: Radius.circular(topLeft ?? 0),
                    topRight: Radius.circular(topRight ?? 0),
                  )
                : const BorderRadius.all(
                    Radius.circular(1.0),
                  ),
        color: color ?? Colors.red,
        shape: shape!,
        image: DecorationImage(
          image: decorationImage ?? AssetImage(''),
          fit: fit,
        ),
        boxShadow: [
          BoxShadow(
            color: shadowColor ?? Colors.black,
            blurRadius: blurRadius!,
            spreadRadius: spreadRadius!,
            offset: Offset(xOffset ?? 0, yOffset ?? 0),
          )
        ],
        gradient: isgradient == true
            ? (isLinearGradiant == true
                ? LinearGradient(
                    begin: beginLinearGradiant ?? Alignment.centerLeft,
                    end: endLinearGradiant ?? Alignment.centerRight,
                    colors: linearGradiantColor!,
                  )
                : isRadialGradiant == true
                    ? RadialGradient(
                        // begin: beginLinearGradiant ?? Alignment.centerLeft,
                        //   end: endLinearGradiant ?? Alignment.centerRight,
                        radius: radialGradiantRadius!,
                        colors: radialGradiantColor ??
                            [
                              Colors.green,
                              Colors.pink,
                            ],
                      )
                    : LinearGradient(
                        begin: beginLinearGradiant ?? Alignment.centerLeft,
                        end: endLinearGradiant ?? Alignment.centerRight,
                        colors: linearGradiantColor ??
                            [
                              Colors.red,
                              Colors.black,
                            ],
                      ))
            : null,
      ),
      child: child,
    );
  }
