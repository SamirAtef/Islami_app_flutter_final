import 'package:flutter/material.dart';

class HadethDetailsItem extends StatelessWidget {
  String text;

  HadethDetailsItem(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      alignment: Alignment.center,
      child: Column(
        children: [
          Center(
            child: Text(
              '$text',
              textDirection: TextDirection.rtl,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}
