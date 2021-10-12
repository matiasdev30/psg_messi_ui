// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:psg_messi_ui/const/const.dart';

class BottomCards extends StatefulWidget {
  const BottomCards({ Key? key }) : super(key: key);

  @override
  _BottomCardsState createState() => _BottomCardsState();
}

class _BottomCardsState extends State<BottomCards> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 850,
      height: 170,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 270,
            height: 170,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [Color(0xffDC373C), Color(0xffED3F80)]),
                boxShadow: [
                  BoxShadow(color: Colors.grey.shade700, blurRadius: 5)
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 10, top: 10),
                  child: Row(
                    children: [
                      Container(
                        width: 30,
                        height: 40,
                        child:
                            SizedBox(child: Image.asset('assets/soccer.png')),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'CARRIÉRE INTERNATIONALE',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: double.infinity,
                  height: 1,
                  color: Colors.white,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'SÉLECTIONS: 151',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'BUTS: 76',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '1HERE SELECTON: 17 AOUT 2005',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            width: 270,
            height: 170,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [Colors.grey.shade300, Colors.white]),
                boxShadow: [
                  BoxShadow(color: Colors.grey.shade700, blurRadius: 5)
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 10, top: 10),
                  child: Row(
                    children: [
                      Container(
                        width: 30,
                        height: 40,
                        child: SizedBox(
                            child: Image.asset('assets/football-field.png')),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'PALMARÉS',
                        style: TextStyle(color: firstColor, fontSize: 14),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: double.infinity,
                  height: 1,
                  color: firstColor,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'VANOUEUR DE LA COPA AMERICA',
                        style: TextStyle(color: firstColor, fontSize: 14),
                      ),
                      Text(
                        '2021 ARGENTINE',
                        style:
                            TextStyle(color: Color(0xffE23953), fontSize: 14),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'VANOUEUR DE LA COPA AMERICA',
                        style: TextStyle(color: firstColor, fontSize: 14),
                      ),
                      Text(
                        '2021 ARGENTINE',
                        style:
                            TextStyle(color: Color(0xffE23953), fontSize: 14),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            width: 270,
            height: 170,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: AssetImage(
                      'assets/Lionel-Messi-a-fini-par-trouver-un-accord-avec-le-PSG.png',
                    ),
                    fit: BoxFit.fill),
                boxShadow: [
                  BoxShadow(color: Colors.grey.shade700, blurRadius: 5)
                ]),
            child: Center(
              child: SizedBox(child: Image.asset('assets/Groupe 9.png')),
            ),
          ),
        ],
      ),
    );
  }
}