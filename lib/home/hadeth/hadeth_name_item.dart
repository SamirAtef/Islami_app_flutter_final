import 'package:flutter/material.dart';

import 'hadeth_details.dart';
import 'hadeth_tab.dart';

class HadethNameItem extends StatelessWidget {
  Hadeth hadethModel;

  HadethNameItem(this.hadethModel);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          HadethDetails.routeName,
          arguments: hadethModel,
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 6),
        alignment: Alignment.center,
        child: Text(
          hadethModel.title,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
    );
  }
}
