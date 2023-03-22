import 'package:flutter/material.dart';

import 'hadeth_details_item.dart';
import 'hadeth_tab.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName = 'hadeth details';

  @override
  Widget build(BuildContext context) {
    Hadeth model = ModalRoute.of(context)?.settings.arguments as Hadeth;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/bg.png',
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(right: 40, top: 15),
            child: Text(
              model.title,
            ),
          ),
        ),
        body: ListView.separated(
          itemBuilder: (_, index) {
            return Container(
                margin: EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: HadethDetailsItem(model.content[index]));
          },
          separatorBuilder: (_, index) {
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 50),
              color: Theme.of(context).primaryColor,
              width: double.infinity,
              height: 2,
            );
          },
          itemCount: model.content.length,
        ),
      ),
    );
  }
}
