import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:seedbank/main_page_web.dart';

class ProblemSolutionSection extends StatelessWidget {
  const ProblemSolutionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFFAFEF5),
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 40),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 🌍 Problem
          Expanded(
            child: Animate(
              effects: [FadeEffect(), SlideEffect(begin: Offset(-0.2, 0))],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  Text(
                    '🌍 The Problem',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF065F46),
                    ),
                  )
                  .animate()
      .fadeIn(duration: 500.ms)
      .slideX(begin: -0.2),

                  
                  SizedBox(height: 16),
                  Text(
                    'Over 1,000 plant species go extinct every year due to climate change and poor seed preservation.',
                    style: TextStyle(fontSize: 18, color: Color(0xFF374151)),
                  ),
                  SizedBox(height: 24),
                  BulletList(
                    items: [
                      'Biodiversity is rapidly vanishing.',
                      'Farmers lack modern seed preservation tools.',
                      'Conservation methods are inefficient and expensive.',
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 48),
          // 🌱 Solution
          Expanded(
            child: Animate(
              effects: [FadeEffect(), SlideEffect(begin: Offset(0.2, 0))],
              child: Container(
                padding: const EdgeInsets.all(32),
                decoration: BoxDecoration(
                  color: const Color(0xFFE6F9EC),
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 12,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      '🌱 Our Solution',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF15803D),
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Seed Bank uses AI and smart sensors to:',
                      style: TextStyle(fontSize: 18, color: Color(0xFF374151)),
                    ),
                    SizedBox(height: 24),
                    BulletList(
                      items: [
                        'Identify seeds using AI',
                        'Adjust temperature for optimal storage',
                        'Monitor environment with sensors',
                        'Preserve biodiversity with smart tech',
                      ],
                      textColor: Color(0xFF15803D),
                      fontWeight: FontWeight.w600,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
