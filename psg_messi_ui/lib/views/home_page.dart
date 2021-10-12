import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:psg_messi_ui/const/const.dart';
import 'package:psg_messi_ui/widget/bottomCards.dart';
import 'package:psg_messi_ui/widget/cardBiographe.dart';
import 'package:psg_messi_ui/widget/cardNotice.dart';
import 'package:psg_messi_ui/widget/leftBar.dart';
import 'package:psg_messi_ui/widget/perspectiveLayer.dart';
import 'package:psg_messi_ui/widget/topBar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late Animation<double> _animation;
  late AnimationController _animationController;

  late Tween<Offset> _offsetTween;
  late Animation<Offset> _offsetAnimation;
  late AnimationController _offsetAnimationController;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    _animation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.ease),
    );

    _offsetAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    _offsetTween = Tween<Offset>(begin: Offset.zero, end: Offset.zero);

    _offsetAnimation = _offsetTween.animate(
      CurvedAnimation(parent: _offsetAnimationController, curve: Curves.ease),
    );

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();

    _animationController.dispose();
    _offsetAnimationController.dispose();
  }

  Offset getPerspectivePointer(Offset offset) {
    final _size = MediaQuery.of(context).size;

    final _screenWidth = _size.width;
    final _screenHeight = _size.height;
    final _centerX = _screenWidth / 2;
    final _centerY = _screenHeight / 2;

    final _perspectivePointer = Offset(
      (_centerX - offset.dx) / 2,
      -((_centerY - offset.dy) / 2),
    );

    return _perspectivePointer;
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    heigth = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Container(
              width: width,
              height: heigth,
              child: Column(
                children: [
                  Container(
                    width: width,
                    height: heigth! / 2,
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            colors: [Color(0xffEBEBFF), Color(0xffF4F4FF)],
                            begin: Alignment.topCenter,
                            end: Alignment(0.0, .5))),
                  ),
                  Container(
                    width: width,
                    height: heigth! / 2,
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            colors: [Color(0xffFEFEFE), Color(0xffD9D9D9)],
                            begin: Alignment.topCenter,
                            end: Alignment(0.0, .5))),
                  )
                ],
              )),
          MouseRegion(
            onEnter: (event) {
              _offsetTween.begin = _offsetTween.end;
              _offsetAnimationController.reset();

              _offsetTween.end = getPerspectivePointer(event.position);
              _offsetAnimationController.forward();

              _animationController.forward();
            },
            onHover: (event) {
              /// This prevents the image from jump instantly from
              /// the offset given by the onEnter event to the offset
              /// of the onHover event (kind of conflit)
              if (_animation.status != AnimationStatus.forward) {
                _offsetAnimationController.duration = Duration.zero;
              }

              _offsetTween.begin = _offsetTween.end;
              _offsetAnimationController.reset();

              _offsetTween.end = getPerspectivePointer(event.position);
              _offsetAnimationController.forward();
            },
            onExit: (event) {
              _offsetAnimationController.duration =
                  const Duration(milliseconds: 500);

              _offsetTween.begin = _offsetTween.end;
              _offsetAnimationController.reset();

              _offsetTween.end = Offset.zero;
              _offsetAnimationController.forward();

              _animationController.reverse();
            },
            child: Container(
              child: Row(
                children: [
                  const LeftBar(),
                  Column(
                    children: [
                      const TopBar(),
                      //Body
                      Container(
                        width: width! - 75,
                        height: heigth! - 50,
                        child: ListView(
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 40),
                                  child: Container(
                                    width: width,
                                    height: heigth! - 100,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const CardBiographe(),
                                        Spacer(),
                                        Container(
                                          
                                          child: effect(),
                                        ),
                                        SizedBox(width: 10,),
                                        const CardNotice(),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
              bottom: -55,
              child: Container(
                width: width,
                child: Center(
                  child: BottomCards(),
                ),
              )),
          Positioned(
              left: 420,
              top: 100,
              child: Container(
                width: 150,
                height: 150,
                child: SizedBox(child: Image.asset('assets/Groupe 3.png')),
              ))
        ],
      ),
    );
  }

  effect() {
    return Center(
        child: MouseRegion(
          onEnter: (event) {
            _offsetTween.begin = _offsetTween.end;
            _offsetAnimationController.reset();

            _offsetTween.end = getPerspectivePointer(event.position);
            _offsetAnimationController.forward();

            _animationController.forward();
          },
          onHover: (event) {
            if (_animation.status != AnimationStatus.forward) {
              _offsetAnimationController.duration = Duration.zero;
            }

            _offsetTween.begin = _offsetTween.end;
            _offsetAnimationController.reset();

            _offsetTween.end = getPerspectivePointer(event.position);
            _offsetAnimationController.forward();
          },
          onExit: (event) {
            _offsetAnimationController.duration =
                const Duration(milliseconds: 500);

            _offsetTween.begin = _offsetTween.end;
            _offsetAnimationController.reset();

            _offsetTween.end = Offset.zero;
            _offsetAnimationController.forward();

            _animationController.reverse();
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 30),
            child: AnimatedBuilder(
              animation: _animation,
              builder: (context, _) {
                return AnimatedBuilder(
                  animation: _offsetAnimation,
                  builder: (context, _) {
                    final _animatedOffset =
                        _offsetAnimation.value * _animation.value;

                    return Transform(
                      alignment: FractionalOffset.center,
                      transform: Matrix4.identity()
                        ..setEntry(3, 2, 0.002)
                        ..rotateY(0.0003 * _animatedOffset.dx)
                        ..rotateX(0.0003 * _animatedOffset.dy),
                      child: Container(
                        constraints: const BoxConstraints(
                          maxWidth: 478,
                          maxHeight: 800,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            PerspectiveLayer(
                              imageSrc: 'assets/0.png',
                              offset: Offset(
                                .03 * _animatedOffset.dx,
                                .03 * _animatedOffset.dy,
                              ),
                            ),
                            ...List.generate(
                              1,
                              (index) {
                                index++;

                                final _zoomScale = 0.2;

                                return Transform.scale(
                                  scale: 1 + (_zoomScale * _animation.value),
                                  child: PerspectiveLayer(
                                    offset: Offset(
                                      (index * .03) * _animatedOffset.dx,
                                      (index * .03) * _animatedOffset.dy,
                                    ),
                                    imageSrc: 'assets/$index.png',
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ),
      
    );
  }
}
