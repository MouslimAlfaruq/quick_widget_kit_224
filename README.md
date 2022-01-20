# quick_widget_kit_224

## Getting Started

#### In the pubspec.yaml file of your flutter project, add the following dependency:

```
dependencies:
  ...
  quick_widget_kit_224: <latest_version>

``` 

#### In your library add the following import:

```
dependencies:
  ...
  quick_widget_kit_224: <latest_version>

```
In the terminal run this command
```
flutter pub get
```
available widgets

* container
* card
* text
* textRich
* textButton
* textButtonIcon
* elvatedButton
* elvatedButtonIcon
* outlineButton
* outlineButtonIcon
* navTo
* navBack
* navReplace
* navRemoveAll
* navNamedTo
* navNamedReplace
* navNamedRemoveAll

Use case:

```
import 'package:quick_widget_kit_224/quick_widget_kit_224.dart';

container(
    color: Colors.blue,
    height: 200,
    width: 200,
    isgradient: true,
    isLinearGradiant: true,
    linearGradiantColor : [
    Colors.yellow,
    Colors.deepPurple,
    ],
    beginLinearGradiant: Alignment.topLeft,
    endLinearGradiant: Alignment.bottomRight,
    // isRadialGradiant: true,
    // radialGradiantColor: [
    //   Colors.yellow,
    //   Colors.deepPurple,
    // ],
    // radialGradiantRadius: 0.5,
    // child: _kit.text(
    //   text: 'Container Demo'
    // ),
    // borderWidth: 5,
    // borderColor: Colors.pink,
    // shadowColor: Colors.black,
    // blurRadius: 5,
    // spreadRadius: 5,
    // xOffset: 5,
    // yOffset: -5,
    // isCircularRadius: true,
    // circularRadius: 20,
    // isOnlyCircularRadius: true,
    // topLeft: 40,
    // bottomRight: 60,
    // isMarginAll: true,
    // marginAll: 20,
    // isMarginOnly: true,
    // marginTop: 10,
    // marginLeft: 40,
    // isMarginSymmetric: true,
    // marginHorizontal: 20,
    // isPaddingAll: true,
    // paddingAll:20,
    // isPaddingOnly: true,
    // paddingLeft: 20,
    // paddingTop: 10,
    // isPaddingSymmetric: true,
    // paddingVertical: 20,
    // shape: BoxShape.circle,
    ),

```

For help getting started with Flutter, view our 
[online documentation](https://flutter.dev/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.
