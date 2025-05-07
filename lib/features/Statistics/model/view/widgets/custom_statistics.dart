import 'package:flutter/material.dart';

class CustomStatisticCard extends StatelessWidget {
 
  final String bottomText;
  final int number;

  const CustomStatisticCard({
    super.key,
   
    required this.bottomText,
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      clipBehavior: Clip.none,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 25),
          width: 120,
          decoration: ShapeDecoration(
            color: Colors.transparent, // خلفية شفافة
            shape: _CustomCardShape(),
          ),
          padding: const EdgeInsets.only(top: 40, bottom: 16),
          child: Column(
            children: [
              
              const SizedBox(height: 5),
              Text(
                bottomText,
                style: const TextStyle(
                  fontSize: 14,
                  color: Color(0xff1C1C1C),
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        Positioned(
          top: 3,
          child: Container(
            height: 40,
            width: 40,
            decoration: const BoxDecoration(
              color: Color(0xffFF9900),
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                number.toString(),
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _CustomCardShape extends ShapeBorder {
  @override
  EdgeInsetsGeometry get dimensions => EdgeInsets.zero;

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    const double radius = 12.0;
    const double indentWidth = 50.0;

    Path path = Path()
      ..moveTo(rect.left + radius, rect.top)
      ..lineTo(rect.center.dx - indentWidth / 2, rect.top)
      ..arcToPoint(
        Offset(rect.center.dx + indentWidth / 2, rect.top),
        radius: const Radius.circular(20),
        clockwise: false,
      )
      ..lineTo(rect.right - radius, rect.top)
      ..quadraticBezierTo(rect.right, rect.top, rect.right, rect.top + radius)
      ..lineTo(rect.right, rect.bottom - radius)
      ..quadraticBezierTo(rect.right, rect.bottom, rect.right - radius, rect.bottom)
      ..lineTo(rect.left + radius, rect.bottom)
      ..quadraticBezierTo(rect.left, rect.bottom, rect.left, rect.bottom - radius)
      ..lineTo(rect.left, rect.top + radius)
      ..quadraticBezierTo(rect.left, rect.top, rect.left + radius, rect.top)
      ..close();

    return path;
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {
    final Paint paint = Paint()
      ..color = Color(0xffE6E6E6) // لون الحدود
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.5; // سمك الخط

    final Path path = getOuterPath(rect, textDirection: textDirection);
    canvas.drawPath(path, paint);
  }

  @override
  ShapeBorder scale(double t) => this;

  @override
  BorderRadiusGeometry get borderRadius => BorderRadius.circular(12);

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) {
    return getOuterPath(rect, textDirection: textDirection);
  }
}
