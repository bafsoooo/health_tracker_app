import 'package:flutter/material.dart';

class StatusCheckboxWidget extends StatefulWidget {
  StatusCheckboxWidget({super.key });

  bool ischecked = false;

  @override
  State<StatusCheckboxWidget> createState() => _StatusCheckboxWidgetState();
}

class _StatusCheckboxWidgetState extends State<StatusCheckboxWidget> {
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: widget.ischecked, 
      onChanged: (value) {
        setState(() {
          widget.ischecked = value ?? false;
        });
      }, 
      checkColor: Colors.white, 
      activeColor: Colors.black,
    );
  }
}