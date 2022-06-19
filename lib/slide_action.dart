library slide_action;

import 'dart:math';

import 'package:flutter/material.dart';

class SlideAction extends StatefulWidget {
  final double containerHeight;
  const SlideAction({Key? key, this.containerHeight = 40}) : super(key: key);


  @override
  State<SlideAction> createState() => _SlideActionState();
}

class _SlideActionState extends State<SlideAction> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var containerPadding = 8.0;
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      height: 100,
      padding: EdgeInsets.all(containerPadding),
      width: size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Draggable(
            feedback: const Spacer(),
            childWhenDragging: Container(
              width: widget.containerHeight,
              height: widget.containerHeight,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(widget.containerHeight - containerPadding)
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(containerPadding),
              child: Material(
                borderRadius: BorderRadius.circular(2.0),
                color: Colors.black,
                child: Container(
                  padding: const EdgeInsets.all(10.0),
                  child: Transform.rotate(
                    angle: 0,
                    child: Center(
                      child:
                          Icon(
                            Icons.arrow_forward,
                            size: 20,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          DragTarget(
            builder: (context, a, b) {
              return Container(
                decoration: const BoxDecoration(),
              );
            },
          )
        ],
      ),
    );
  }
}
