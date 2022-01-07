import 'package:flutter/material.dart';

class ItemTextHeader extends StatelessWidget {
  final dynamic value;

  const ItemTextHeader({Key? key, this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Text(
        '$value',
        style: const TextStyle(
          fontSize: 8,
          fontWeight: FontWeight.w600,
        ),
        textAlign: TextAlign.center,
        overflow: TextOverflow.ellipsis,
        maxLines: 3,
      ),
    );
  }
}
