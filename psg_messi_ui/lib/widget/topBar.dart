// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:psg_messi_ui/const/const.dart';

class TopBar extends StatefulWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  _TopBarState createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: width! - 70,
      color: Colors.white,
      child: Row(
        children: [
          const SizedBox(
            width: 20,
          ),
          SizedBox(child: Image.asset('assets/Groupe 2.png')),
          const SizedBox(
            width: 20,
          ),
          Text(
            'PARIS SAINT GERMAN',
            style: TextStyle(color: firstColor, fontSize: 14),
          ),
          const SizedBox(
            width: 100,
          ),
          const Spacer(),
          Text(
            'ACCUEL',
            style: TextStyle(color: firstColor, fontSize: 14),
          ),
          const SizedBox(
            width: 30,
          ),
          Text(
            'BIOGRAPHE',
            style: TextStyle(color: firstColor, fontSize: 14),
          ),
          const SizedBox(
            width: 30,
          ),
          Text(
            'NEWS',
            style: TextStyle(color: firstColor, fontSize: 14),
          ),
          const SizedBox(
            width: 30,
          ),
          Text(
            'PHOTOS',
            style: TextStyle(color: firstColor, fontSize: 14),
          ),
          Spacer(),
          Container(
            width: 180,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    SizedBox(child: Image.asset('assets/Shape Copy.png')),
                    const Spacer(),
                    Container(
                      width: 150,
                      height: 30,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'SEARCH',
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 180,
                  height: 1,
                  color: firstColor,
                ),
              ],
            ),
          ),
          SizedBox(
            width: 200,
          ),
          Spacer(),
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                border: Border.all(color: firstColor),
                borderRadius: BorderRadius.circular(40),
                image: DecorationImage(image: AssetImage('assets/mvni.jpg'))),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            'MVNI NULL',
            style: TextStyle(color: firstColor, fontSize: 14),
          ),
          SizedBox(
            width: 3,
          ),
          Container(
            width: 10,
            height: 10,
            child: SizedBox(child: Image.asset('assets/down-arrow (1).png')),
          ),
          SizedBox(
            width: 20,
          ),
          Spacer(),
        ],
      ),
    );
  }
}
