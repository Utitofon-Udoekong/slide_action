library slide_action;

import 'package:flutter/material.dart';

class SlideAction extends StatefulWidget {
  const SlideAction({Key? key}) : super(key: key);

  @override
  State<SlideAction> createState() => _SlideActionState();
}

class _SlideActionState extends State<SlideAction> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Draggable(
            child: Container(),
            feedback: feedback,
          ),
          DragTarget(
            builder: builder,
          )
        ],
      ),
    );
  }
}
