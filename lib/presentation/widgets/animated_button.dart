import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/app/themes.dart';
import 'package:provider/provider.dart';

class AnimatedButton extends StatefulWidget {
  final String text;
  final Function onPressed;

  const AnimatedButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _AnimatedButtonState();
}

class _AnimatedButtonState extends State<AnimatedButton>
    with SingleTickerProviderStateMixin {
  double? _scale;
  AnimationController? _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 50,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _controller?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _scale = 1.0 - _controller!.value;
    return GestureDetector(
      onTap: widget.onPressed as void Function(),
      onTapDown: _tapDown,
      onTapUp: _tapUp,
      onTapCancel: () => {
        if (_controller?.status == AnimationStatus.forward ||
            _controller?.status == AnimationStatus.completed)
          {
            _tapUp(TapUpDetails(kind: PointerDeviceKind.touch)),
          }
      },
      child: Transform.scale(
        scale: _scale,
        child: _animatedButton(),
      ),
    );
  }

  Widget _animatedButton() {
    return Container(
      decoration: BoxDecoration(
          color: Provider.of<Themes>(context).selectedTheme.secondaryHeaderColor,
          borderRadius: BorderRadius.circular(20.0)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          widget.text,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Provider.of<Themes>(context).selectedTheme.primaryColor,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  void _tapDown(TapDownDetails details) {
    _controller?.forward();
  }

  void _tapUp(TapUpDetails details) {
    _controller?.reverse();
  }
}
