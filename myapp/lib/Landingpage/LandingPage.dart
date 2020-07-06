import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class LandingPage extends StatelessWidget {
  List<Widget> pageChildren(double width) {
    return <Widget>[
      Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Peer to Peer \nTutoring Services",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: TyperAnimatedTextKit(
                onTap: () {
                  print("Tap Event");
                },
                text: [
                  "It is not enough to do your best, \nyou must know what to do, \nand then do your best \n- W.Edwards Deming",
                ],
                textStyle: TextStyle(
                    fontSize: 20.0,
                    fontFamily: "Monteserrat",
                    color: Colors.white),
              ),
            ),
            MaterialButton(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 40.0),
                child: Text(
                  "Our Services",
                  style: TextStyle(fontSize: 16.0, color: Colors.red),
                ),
              ),
            )
          ],
        ),
      ),
      Image.asset("assets/images/p2phome-01.png", width: width)
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageChildren(constraints.biggest.width / 2),
          );
        } else {
          return Column(
            children: pageChildren(constraints.biggest.width),
          );
        }
      },
    );
  }
}
