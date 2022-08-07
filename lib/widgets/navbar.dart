import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:landing_anna/utils/responsive_layout.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints(
          maxWidth: 1000,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 20),
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
                      gradient: const LinearGradient(colors: [
                        Color(0xFFC86DD7),
                        Color(0xFF00A895),
                      ], begin: Alignment.bottomRight, end: Alignment.topLeft)),
                  child: const Center(
                    child: Text(
                      '🐈',
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16,
                  // child: Text("ttest"),
                ),
                const Text('АнГар', style: TextStyle(fontSize: 26))
              ],
            ),
            if (!ResponsiveLayout.isSmallScreen(context))
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  InkWell(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      height: 40,
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(
                              colors: [Color(0xFFC86DD7), Color(0xFF00A895)],
                              begin: Alignment.bottomRight,
                              end: Alignment.topLeft),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: const Color(0xFF6078ea).withOpacity(.3),
                                offset: const Offset(0, 8),
                                blurRadius: 8)
                          ]),
                      child: const Material(
                        color: Colors.transparent,
                        child: Center(
                          child: Text(
                            'Личный кабинет',
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
              const Icon(CupertinoIcons.ellipsis)
          ],
        ),
      ),
    );
  }
}
