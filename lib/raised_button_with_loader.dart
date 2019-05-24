library raised_button_with_loader;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fading_text/fading_text.dart';

class RaisedButtonWithLoader extends StatelessWidget {
  final bool isLoading;
  final bool isDisabled;
  final VoidCallback onPressed;
  final String label;
  final Color color;

  RaisedButtonWithLoader({
    Key key,
    this.isLoading = false,
    this.isDisabled = false,
    @required this.label,
    @required this.onPressed,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      child: isLoading ? FadingText("Loading...") : Text(label),
      color: color ?? Colors.orange,
      onPressed: isDisabled ? null : onPressed,
    );
  }
}