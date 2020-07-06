import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopNavbar();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopNavbar();
        } else {
          return MobileNavbar();
        }
      },
    );
  }
}

class DesktopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        constraints: BoxConstraints(maxWidth: 1366),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            InkWell(
              child: Text(
                "Excellia",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 30),
              ),
              onTap: () {
                print("Welcome to Exceilla!");
              },
            ),
            Row(
              children: <Widget>[
                InkWell(
                  child: Text(
                    "Home",
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    print("Home Pressed!");
                  },
                ),
                SizedBox(
                  width: 30,
                ),
                InkWell(
                  child: Text(
                    "About Us",
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    print("About Us Pressed!");
                  },
                ),
                SizedBox(
                  width: 30,
                ),
                InkWell(
                  child: Text(
                    "Tutor?",
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    print("Tutor? Pressed!");
                  },
                ),
                SizedBox(
                  width: 30,
                ),
                MaterialButton(
                  color: Colors.pink,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  onPressed: () {},
                  child: Text(
                    "Get Started",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Column(children: <Widget>[
          InkWell(
            child: Text(
              "Excellia",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30),
            ),
            onTap: () {
              print("Welcome to Excellia!");
            },
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  child: Text(
                    "Home",
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    print("value of your text");
                  },
                ),
                SizedBox(
                  width: 30,
                ),
                InkWell(
                  child: Text(
                    "About Us",
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    print("value of your text");
                  },
                ),
                SizedBox(
                  width: 30,
                ),
                InkWell(
                  child: Text(
                    "Tutor?",
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    print("value of your text");
                  },
                ),
                SizedBox(
                  width: 30,
                ),
                MaterialButton(
                  color: Colors.pink,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  onPressed: () {
                    print("value of your text");
                  },
                  child: Text(
                    "Get Started",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
