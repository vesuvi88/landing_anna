import 'package:flutter/material.dart';
import '../utils/responsiveLayout.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 45, vertical: 38),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    gradient: LinearGradient(colors: [
                      Color(0xFFC86DD7),
                      Color(0xFF00A895),
                    ], begin: Alignment.bottomRight, end: Alignment.topLeft)),
                child: Center(
                  child: Text(
                    "🐈",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                width: 16,
                // child: Text("ttest"),
              ),
              Text("АнГар", style: TextStyle(fontSize: 26))
            ],
          ),
          if (!ResponsiveLayout.isSmallScreen(context))
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                InkWell(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 40,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Color(0xFFC86DD7), Color(0xFF00A895)],
                            begin: Alignment.bottomRight,
                            end: Alignment.topLeft),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xFF6078ea).withOpacity(.3),
                              offset: Offset(0, 8),
                              blurRadius: 8)
                        ]),
                    child: Material(
                      color: Colors.transparent,
                      child: Center(
                        child: Text(
                          "Личный кабинет",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          else
            Image.network("assets/icons8-menu.png", width: 50, height: 50)
        ],
      ),
    );
  }
}
