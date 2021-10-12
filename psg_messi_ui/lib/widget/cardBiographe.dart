// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:psg_messi_ui/const/const.dart';

class CardBiographe extends StatefulWidget {
  const CardBiographe({ Key? key }) : super(key: key);

  @override
  _CardBiographeState createState() => _CardBiographeState();
}

class _CardBiographeState extends State<CardBiographe> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 200,
      padding: EdgeInsets.only(top: 70),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Lionel', style: TextStyle(fontSize: 30, color: firstColor)),
          Text('Messi',
              style: TextStyle(
                fontSize: 50,
                color: firstColor,
              )),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: 170,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('TALLE',
                        style: TextStyle(color: Colors.grey.shade400)),
                    Text('1.70 m', style: TextStyle(color: Colors.grey)),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('POIDS',
                        style: TextStyle(color: Colors.grey.shade400)),
                    Text('67 kg', style: TextStyle(color: Colors.grey)),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('NUMERO',
                        style: TextStyle(color: Colors.grey.shade400)),
                    Text('30', style: TextStyle(color: Colors.grey)),
                  ],
                ),
              ],
            ),
          ),
          const Spacer(),
          Text(
            'BIOGRAPHE',
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
              'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. '),
          const Spacer(),
          Container(
            height: 40,
            width: 100,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'LIRE PLUS',
                    style: TextStyle(color: Colors.white),
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 18,
                  )
                ],
              ),
            ),
            decoration: BoxDecoration(
                color: firstColor, borderRadius: BorderRadius.circular(5)),
          )
        ],
      ),
    );
  }
}