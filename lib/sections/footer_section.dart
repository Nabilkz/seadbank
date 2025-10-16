import 'package:flutter/material.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF16A34A), // Deep green
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 24),
      child: const Center(
        child: Text(
          '© Developed by Nabil Kzez · 2025 Seed Bank · All Rights Reserved',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.5,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}