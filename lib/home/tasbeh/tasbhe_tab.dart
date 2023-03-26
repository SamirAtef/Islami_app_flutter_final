import 'dart:math' as maths;

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TasbehTab extends StatefulWidget {
  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab> {
  int counter = 0;
  int index = 0;
  double angle = 0;
  List<String> tasbeh = [
    'سبحان الله',
    'الحمد الله',
    'الله اكبر',
    'لا إله الا الله',
    'استغفر الله'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Image.asset('assets/images/head_of_sebha.png'),
              InkWell(
                onTap: onTasbehTab,
                child: Container(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.093,
                    bottom: MediaQuery.of(context).size.height * 0.02,
                  ),
                  child: Transform.rotate(
                    angle: maths.pi / 180 * angle,
                    child: Image.asset('assets/images/body_of_sebha.png'),
                  ),
                ),
              ),
            ],
          ),
          Text(
            AppLocalizations.of(context)!.numOfTasbeh,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Container(
            padding: EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Color(0xffB7935F),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Text(
              '$counter',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Container(
            padding: EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Color(0xffB7935F),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Text(
              '${tasbeh[index]}',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void onTasbehTab() {
    counter++;
    if (counter % 33 == 0) {
      index++;
      if (index == tasbeh.length) {
        index = 0;
      }
    }
    print(index);
    angle += 1 / 33 * 100;
    setState(() {});
  }
}
