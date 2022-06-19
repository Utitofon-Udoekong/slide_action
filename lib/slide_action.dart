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
            feedback: const Spacer(),
            childWhenDragging: Container(decoration: BoxDecoration(
              
            ),),
            child: Container(
              child: Padding(padding: const EdgeInsets.all(8.0), child: Material(
                borderRadius: BorderRadius.circular(2.0),
                color: Colors.black,
              ),),
            ),
          ),
          DragTarget(
            builder: (context, a,b){
              return Container(
              decoration: const BoxDecoration(
                
              ),
            );
            },
          )
        ],
      ),
    );
  }
}
