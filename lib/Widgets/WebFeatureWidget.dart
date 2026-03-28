import 'package:flutter/material.dart';

class WebFeatureTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const WebFeatureTile({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final isMobile = w < 768;

    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: isMobile ? double.infinity : 350),
      child: Container(
        padding: EdgeInsets.all(isMobile ? 12 : 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(blurRadius: 10, color: Colors.black.withOpacity(0.05)),
          ],
        ),

        /// Layout
        child: isMobile
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _iconBox(isMobile),
                  const SizedBox(height: 10),
                  _textSection(context, isMobile),
                ],
              )
            : Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _iconBox(isMobile),
                  const SizedBox(width: 16),

                  /// ❗ FIX: Use Flexible instead of Expanded
                  Flexible(child: _textSection(context, isMobile)),
                ],
              ),
      ),
    );
  }

  Widget _iconBox(bool isMobile) {
    return Container(
      height: isMobile ? 60 : 80,
      width: isMobile ? 60 : 80,
      padding: EdgeInsets.all(isMobile ? 12 : 16),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Icon(icon, size: isMobile ? 28 : 36, color: Colors.white),
    );
  }

  Widget _textSection(BuildContext context, bool isMobile) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min, // ✅ prevents overflow
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: isMobile ? 16 : 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 6),
        Text(
          description,
          style: TextStyle(fontSize: isMobile ? 13 : 14, color: Colors.black),
        ),
      ],
    );
  }
}
