import 'package:flutter/material.dart';

class NumComments extends StatelessWidget {
  final int nComments;

  NumComments(this.nComments);

  @override
  Widget build(BuildContext context) => Container(
        alignment: Alignment.center,
        width: 20,
        height: 24,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.06),
          border: Border.all(width: 1.5, color: Colors.black12),
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
        ),
        child: Text(
          nComments.toString(),
          style: Theme.of(context).textTheme.bodyText2,
        ),
      );
}
