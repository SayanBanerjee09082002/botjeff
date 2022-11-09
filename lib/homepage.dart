import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swipeable_card_stack/swipe_controller.dart';
import 'package:swipeable_card_stack/swipeable_card_stack.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePage createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> with TickerProviderStateMixin {
  // late AnimationController _controller1;
  // late AnimationController _controller2;
  // late AnimationController _controller3;
  // late Animation<Alignment> _animation1;
  // late Animation<Alignment> _animation2;
  // late Animation<Alignment> _animation3;
  // Alignment _dragAlignment1 = Alignment.center;
  // Alignment _dragAlignment2 = Alignment.center;
  // Alignment _dragAlignment3 = Alignment.center;
  //
  // void _runAnimation(Offset pixelsPerSecond, Size size) {
  //   _animation1 = _controller1.drive(
  //     AlignmentTween(
  //       begin: _dragAlignment1,
  //       end: Alignment(0, 0),
  //     ),
  //   );
  //   _animation2 = _controller2.drive(
  //     AlignmentTween(
  //       begin: _dragAlignment2,
  //       end: Alignment(0, 1.6),
  //     ),
  //   );
  //   _animation3 = _controller3.drive(
  //     AlignmentTween(
  //       begin: _dragAlignment3,
  //       end: Alignment(0, 1.8),
  //     ),
  //   );
  //
  //   final unitsPerSecondX1 = pixelsPerSecond.dx / size.width;
  //   final unitsPerSecondY1 = pixelsPerSecond.dy / size.height;
  //   final unitsPerSecond1 = Offset(unitsPerSecondX1, unitsPerSecondY1);
  //   final unitVelocity1 = unitsPerSecond1.distance;
  //
  //   final unitsPerSecondX2 = pixelsPerSecond.dx / size.width;
  //   final unitsPerSecondY2 = pixelsPerSecond.dy / size.height;
  //   final unitsPerSecond2 = Offset(unitsPerSecondX2, unitsPerSecondY2);
  //   final unitVelocity2 = unitsPerSecond2.distance;
  //
  //   final unitsPerSecondX3 = pixelsPerSecond.dx / size.width;
  //   final unitsPerSecondY3 = pixelsPerSecond.dy / size.height;
  //   final unitsPerSecond3 = Offset(unitsPerSecondX3, unitsPerSecondY3);
  //   final unitVelocity3 = unitsPerSecond3.distance;
  //
  //   const spring1 = SpringDescription(
  //     mass: 30,
  //     stiffness: 1,
  //     damping: 1,
  //   );
  //   const spring2 = SpringDescription(
  //     mass: 30,
  //     stiffness: 1,
  //     damping: 1,
  //   );
  //   const spring3 = SpringDescription(
  //     mass: 30,
  //     stiffness: 1,
  //     damping: 1,
  //   );
  //
  //   final simulation1 = SpringSimulation(spring1, 0, 1, -unitVelocity1);
  //   final simulation2 = SpringSimulation(spring2, 0, 1, -unitVelocity2);
  //   final simulation3 = SpringSimulation(spring3, 0, 1, -unitVelocity3);
  //
  //   _controller1.animateWith(simulation1);
  //   _controller2.animateWith(simulation2);
  //   _controller3.animateWith(simulation3);
  // }
  //
  // @override
  // void initState() {
  //   super.initState();
  //
  //   _controller1 = AnimationController(vsync: this);
  //   _controller1.addListener(() {
  //     setState(() {
  //       _dragAlignment1 = _animation1.value;
  //     });
  //   });
  //
  //   _controller2 = AnimationController(vsync: this);
  //   _controller2.addListener(() {
  //     setState(() {
  //       _dragAlignment2 = _animation2.value;
  //     });
  //   });
  //
  //   _controller3 = AnimationController(vsync: this);
  //   _controller3.addListener(() {
  //     setState(() {
  //       _dragAlignment3 = _animation3.value;
  //     });
  //   });
  // }
  //
  // @override
  // void dispose() {
  //   _controller1.dispose();
  //   _controller2.dispose();
  //   _controller3.dispose();
  //   super.dispose();
  // }

  bool selected = false;
  bool selected2 = false;
  bool selected3 = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
            body: Container(
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          // Container(
          //   child: GestureDetector(
          //     behavior: HitTestBehavior.translucent,
          //     child: Align(
          //         alignment: _dragAlignment1,
          //         child: Card1(context)),
          //
          //     onPanDown: (details) {
          //       _controller3.stop();
          //     },
          //     onPanUpdate: (details) {
          //       setState(() {
          //         _dragAlignment1 += Alignment(
          //           details.delta.dx / (size.width / 2),
          //           details.delta.dy / (size.height / 2),
          //         );
          //       });
          //     },
          //     onPanEnd: (details) {
          //       _runAnimation(details.velocity.pixelsPerSecond, size);
          //       setState(() {
          //         _dragAlignment1 = Alignment(0, 1.6);
          //       });
          //     },
          //   ),
          // ),
          // Container(
          //   child: GestureDetector(
          //     behavior: HitTestBehavior.translucent,
          //     child: Align(
          //         alignment: _dragAlignment2,
          //         child: Card2(context)),
          //
          //     onPanDown: (details) {
          //       _controller2.stop();
          //     },
          //     onPanUpdate: (details) {
          //       setState(() {
          //         _dragAlignment2 += Alignment(
          //           details.delta.dx / (size.width / 2),
          //           details.delta.dy / (size.height / 2),
          //         );
          //       });
          //     },
          //     onPanEnd: (details) {
          //       _runAnimation(details.velocity.pixelsPerSecond, size);
          //       setState(() {
          //         _dragAlignment2 = Alignment(0, 1.7);
          //       });
          //     },
          //   ),
          // ),
          // Container(
          //   child: GestureDetector(
          //     behavior: HitTestBehavior.translucent,
          //       child: Align(
          //           alignment: _dragAlignment3,
          //           child: Card3(context)),
          //      details) {
          //       _controller1.stop();
          //     },
          //     onPanUpdate: (details) {
          //       setState(() {
          //         _dragAlignment3 += Alignment(
          //           details.delta.dx / (size.width / 2),
          //           details.delta.dy / (size.height / 2),
          //         );
          //       });
          //     },
          //     onPanEnd: (details) {
          //       _runAnimation(details.velocity.pixelsPerSecond, size);
          //       setState(() {
          //         _dragAlignment3 = Alignment(0, 1.8);
          //       });
          //     },
          //   ),
          AnimatedPositioned(
              top: selected ? 410 : 110,
              child: GestureDetector(
                child: Card3(context),
                onVerticalDragUpdate: (details) {
                  int sensitivity = 8;
                  if (details.delta.dy > sensitivity) {
                    setState(() {
                      selected = !selected;
                    });
                  }
                },
              ),
              duration: Duration(milliseconds: 300)),
          AnimatedPositioned(
              top: selected2 ? 430 : 130,
              child: GestureDetector(
                child: Card2(context),
                onVerticalDragUpdate: (details) {
                  int sensitivity = 8;
                  if (details.delta.dy > sensitivity) {
                    setState(() {
                      selected2 = !selected2;
                    });
                  }
                },
              ),
              duration: Duration(milliseconds: 300)),
          AnimatedPositioned(
              top: selected3 ? 450 : 150,
              child: GestureDetector(
                child: Card1(context),
                onVerticalDragUpdate: (details) {
                  int sensitivity = 8;
                  if (details.delta.dy > sensitivity) {
                    setState(() {
                      selected3 = !selected3;
                    });
                  }
                },
              ),
              duration: Duration(milliseconds: 300)),
          Container(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              'assets/pocket.png',
            ),
          ),
        ],
      ),
    )));
  }

  Widget Card1(context) {
    return Container(
      padding: EdgeInsets.all(12),
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height * 0.6,
      width: MediaQuery.of(context).size.width * 0.65,
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Color(0x13131300),
            offset: Offset(0.0, -10.0),
            blurRadius: 10.0,
          ),
          BoxShadow(
            color: Color(0x00000000),
            offset: Offset(6.0, 6.0),
            blurRadius: 28.0,
          ),
        ],
        gradient: LinearGradient(
            begin: Alignment(0.0, 0.0),
            end: Alignment(0.997, 0.08),
            colors: [Color(0xff32383e), Color(0xff17191c)]),
        borderRadius: BorderRadius.all(const Radius.circular(16.0)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            alignment: Alignment.centerRight,
            child: Text('01',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                )),
          ),
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  blurRadius: 10, color: Colors.black45, spreadRadius: 0)
            ], shape: BoxShape.circle),
            child: CircleAvatar(
              backgroundColor: Color(0xff202429),
              radius: 75,
              child: Image.asset(
                'assets/wardrobe.png',
                height: MediaQuery.of(context).size.height * 0.1,
              ),
            ),
          ),
          Text(
            'CHOOSE A OUTFIT',
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w600,
              fontSize: 24,
            ),
          ),
          Text('Pick out the desried outfit you liked',
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w400,
                fontSize: 16,
              )),
          SizedBox(height: MediaQuery.of(context).size.height * 0.08)
        ],
      ),
    );
  }

  Widget Card2(context) {
    return Container(
      padding: EdgeInsets.all(12),
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height * 0.6,
      width: MediaQuery.of(context).size.width * 0.65,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Colors.red),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            alignment: Alignment.centerRight,
            child: Text('01'),
          ),
          CircleAvatar(
            radius: 75,
            child: Image.asset(
              'assets/wardrobe.png',
              height: MediaQuery.of(context).size.height * 0.1,
            ),
          ),
          Text('CHOOSE A PHOTO'),
          Text(('Pick out the desried outfit you liked')),
          SizedBox(height: MediaQuery.of(context).size.height * 0.08)
        ],
      ),
    );
  }

  Widget Card3(context) {
    return Container(
      padding: EdgeInsets.all(12),
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height * 0.55,
      width: MediaQuery.of(context).size.width * 0.65,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Colors.green),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            alignment: Alignment.centerRight,
            child: Text('01'),
          ),
          CircleAvatar(
            radius: 75,
            child: Image.asset(
              'assets/wardrobe.png',
              height: MediaQuery.of(context).size.height * 0.1,
            ),
          ),
          Text('CHOOSE A PHOTO'),
          Text(('Pick out the desried outfit you liked')),
          SizedBox(height: MediaQuery.of(context).size.height * 0.08)
        ],
      ),
    );
  }
}
