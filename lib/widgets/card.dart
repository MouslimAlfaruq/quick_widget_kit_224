  
  part of quick_widget_kit_224;
  
  Widget card({
    @required Widget? child,
    final bool? isCircularRadius = false,
    final bool? isOnlyCircularRadius = false,
    final bool? isMarginSymmetric = false,
    final bool? isMarginAll = false,
    final bool? isMarginOnly,
    final double? marginVertical,
    final double? marginHorizontal,
    final double? marginAll,
    final double? circularRadius,
    final double? bottomRight,
    final double? bottomLeft,
    final double? topRight,
    final double? topLeft,
    final double? marginTop,
    final double? marginBottom,
    final double? marginLeft,
    final double? marginRight,
    final Color? colorCard = Colors.white,
    final Color? colorShadow = Colors.black,
    final double? elevation,
  }) {
    return Card(
      elevation: elevation,
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
      shape: RoundedRectangleBorder(
        borderRadius: isCircularRadius == true
            ? BorderRadius.circular(circularRadius!)
            : isOnlyCircularRadius == true
                ? BorderRadius.only(
                    bottomLeft: Radius.circular(bottomLeft!),
                    bottomRight: Radius.circular(bottomRight!),
                    topLeft: Radius.circular(topLeft!),
                    topRight: Radius.circular(topRight!),
                  )
                : const BorderRadius.all(
                    Radius.circular(1.0),
                  ),
      ),
      color: colorCard,
      shadowColor: colorShadow,
      child: child,
    );
  }

