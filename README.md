
# Flutter Fancy Containers

Flutter Fancy container package used for gradient container with custom child in your Flutter app.

## Installation

1. Add the latest version of package to your pubspec.yaml (and run`dart pub get`):
```yaml
dependencies:
  flutter_fancy_container: ^0.0.3
```
2. Import the package and use it in your Flutter App.
```dart
import 'package:flutter_fancy_container/flutter_fancy_container.dart';
```

## Example

<hr>

<table>
<tr>
<td>

```dart
class FancyContainer extends StatefulWidget {
  @override
  State<FancyContainer> createState() => _FancyContainerState();
}

class _FancyContainerState extends State<FancyContainer> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: FlutterFancyContainer(
            colorOne: Colors.teal[900],
            colorTwo: Colors.tealAccent,
            onTap: (){
              print("package ontap");
            },
            child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("Hello world",style: TextStyle(color: Colors.white,fontSize: 20),),
                    Text("This is your custom child container",style: TextStyle(color: Colors.white,fontSize: 14),),
                  ],
                )
            ),
          ),
        ),
      ),
    );
  }
}
```

</td>

</tr>
<td>
<img  src="https://user-images.githubusercontent.com/94171551/228188547-947c1646-06d1-4df8-9368-3ad6a90ed66d.jpg"  alt="">
</td>
</table>