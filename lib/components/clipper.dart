import 'package:flutter/material.dart';

class PolygonClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    // path.moveTo(0, 0);
    // path.lineTo(0, size.height);
    // path.lineTo(size.width, size.height);
    // path.lineTo(size.width, size.height * 0.3);
    // path.lineTo(size.width * 0.2, size.height * 0.3);
    // path.lineTo(size.width * 0.15, 0);
    // path.lineTo(0, 0);
    path.moveTo(0, 0);
    path.lineTo(0, 0);
    // path.arcTo(200, 0, 220, 70, 50); //arcTo(x1,y1,x2,y2,r)
    path.lineTo(size.width * 0.9, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(PolygonClipper oldClipper) => false;
}
