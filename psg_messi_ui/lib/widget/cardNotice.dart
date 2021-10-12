// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:psg_messi_ui/const/const.dart';

class CardNotice extends StatefulWidget {
  const CardNotice({Key? key}) : super(key: key);

  @override
  _CardNoticeState createState() => _CardNoticeState();
}

class _CardNoticeState extends State<CardNotice> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 433,
      height: 320,
      margin: EdgeInsets.only(top: 70),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 300,
            height: 150,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: firstColor),
                boxShadow: [
                  BoxShadow(color: Colors.grey.shade700, blurRadius: 7)
                ]),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'NATIONALITE',
                      style: TextStyle(color: firstColor, fontSize: 12),
                    ),
                    Spacer(),
                    SizedBox(child: Image.asset('assets/Groupe 51.png')),
                    Spacer(),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  width: 2,
                  height: double.maxFinite,
                  color: Colors.grey.shade400,
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'NAISSANCE',
                      style: TextStyle(color: firstColor, fontSize: 12),
                    ),
                    const Spacer(),
                    const Text(
                      '24 JUN 1987',
                      style: TextStyle(
                        color: Color(0xffE23953),
                        fontSize: 15,
                      ),
                    ),
                    const Text(
                      'à Rosario',
                      style: TextStyle(
                        color: Color(0xffE23953),
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  width: 2,
                  height: double.maxFinite,
                  color: Colors.grey.shade400,
                ),
                const SizedBox(
                  width: 40,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'AGE',
                      style: TextStyle(color: firstColor, fontSize: 12),
                    ),
                    const Spacer(),
                    const Text(
                      '34',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ],
            ),
          ),
          const Spacer(),
          Row(
            children: [
              cardImg(),
              const Spacer(),
              cardImg(img: 'assets/leo.png'),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 300,
            height: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 130,
                ),
                Container(
                  width: 20,
                  height: 5,
                  decoration: BoxDecoration(
                      color: Color(0xffE23953),
                      borderRadius: BorderRadius.circular(20)),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 5,
                  height: 5,
                  decoration: BoxDecoration(
                      color: Color(0xffE23953),
                      borderRadius: BorderRadius.circular(20)),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 5,
                  height: 5,
                  decoration: BoxDecoration(
                      color: Color(0xffE23953),
                      borderRadius: BorderRadius.circular(20)),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  cardImg({
    String img =
        'assets/Lionel-Messi-a-fini-par-trouver-un-accord-avec-le-PSG.png',
  }) {
    return Container(
        width: 210,
        height: 130,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
                image: AssetImage(
                  img,
                ),
                fit: BoxFit.fill),
            boxShadow: [BoxShadow(color: Colors.grey.shade700, blurRadius: 5)]),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: const LinearGradient(
                  colors: [Colors.transparent, Colors.white],
                  begin: Alignment.topCenter,
                  end: Alignment(0.0, .5))),
          padding: const EdgeInsets.only(left: 20, bottom: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),
              Text(
                '(PARIS-SG)',
                style: TextStyle(color: firstColor),
              ),
              Text(
                'I\'actu le palmares et les stats\nde Lionel Messi',
                style: TextStyle(color: firstColor),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.favorite,
                    color: Color(0xffE23953),
                    size: 12,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.alarm_sharp,
                    color: firstColor,
                    size: 12,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    '1:30:20',
                    style: TextStyle(color: firstColor, fontSize: 10),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
