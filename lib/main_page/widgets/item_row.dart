import 'package:flutter/material.dart';

class ItemText extends StatelessWidget {
  final dynamic value;
  final Function() onTap;
  const ItemText({Key? key, this.value, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: onTap,
        child: Ink(
          child: Text(
            '$value',
            style: const TextStyle(fontSize: 8, fontWeight: FontWeight.w400),
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            maxLines: 3,
          ),
          padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 1.0),
        ),
      ),
    );
  }
}
