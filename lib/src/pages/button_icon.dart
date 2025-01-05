import 'package:flutter/material.dart';

class ButtonsIcon extends StatelessWidget {
  final void Function()? eventReduce;
  final void Function()? eventAdd;
  final void Function()? eventReset;

  const ButtonsIcon({
    super.key,
    required this.eventReduce,
    this.eventAdd,
    this.eventReset,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 12),
          child: FloatingActionButton(
            heroTag: '_reduce',
            onPressed: eventReduce,
            child: Icon(
              Icons.remove_outlined,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 12),
          child: FloatingActionButton(
            heroTag: '_reset',
            onPressed: eventReset,
            child: Icon(
              Icons.refresh_outlined,
            ),
          ),
        ),
        FloatingActionButton(
          heroTag: '_add',
          onPressed: eventAdd,
          child: Icon(
            Icons.add_outlined,
          ),
        ),
      ],
    );
  }
}
