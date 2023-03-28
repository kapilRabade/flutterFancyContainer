import 'package:flutter/material.dart';
import 'package:flutter_fancy_container/src/fancy_flutter_container_callback.dart';
class FlutterFancyContainer extends StatefulWidget {
  const FlutterFancyContainer({
    required this.child,
    Key? key,
    this.height = 180.0,
    this.width,
    this.colorOne,
    this.colorTwo,
    this.onTap,
  }) : super(key: key);
  final Widget? child;
  final double? width;
  final double height;
  final Color? colorOne;
  final Color? colorTwo;
  final ContainersCallback? onTap;


  @override
  _FlutterFancyContainerState createState() => _FlutterFancyContainerState();
}

class _FlutterFancyContainerState extends State<FlutterFancyContainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap ?? () {},
      child: Container(
          width: widget.width ?? MediaQuery.of(context).size.width * 0.90,
          height: widget.height,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(20.0)),
            gradient: LinearGradient(colors: [
              widget.colorOne ??  Colors.teal.shade900,
              widget.colorTwo ?? Colors.tealAccent.shade200,
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 10,
                offset: Offset(0, 6),
              ),
            ],
          ),
          child: widget.child
      ),
    );
  }
}