import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:seedbank/main_page_web.dart';

class HowItWorksSection extends StatelessWidget {
  const HowItWorksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFECFDF5),
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Animate(
            effects: [FadeEffect(), SlideEffect(begin: Offset(0, 0.2))],
            child: const Text(
              '🔧 How It Works',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Color(0xFF065F46),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'A seamless process combining AI, hardware, and sustainability.',
            style: TextStyle(fontSize: 18, color: Color(0xFF374151)),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 48),
          Wrap(
            spacing: 24,
            runSpacing: 24,
            alignment: WrapAlignment.center,
            children:  [
              FeatureCard(
                icon: FontAwesomeIcons.camera,
                title: 'Select/Scan Seed',
                description: 'User selects or scans a seed to begin the preservation process.',
              )
              .animate().fadeIn().scale()
,
              FeatureCard(
                icon: FontAwesomeIcons.robot,
                title: 'AI Recognizes Type',
                description: 'AI identifies the seed species to determine optimal conditions.',
              ).animate().fadeIn().scale()
,
              FeatureCard(
                icon: FontAwesomeIcons.snowflake,
                title: 'Auto Temp Adjustment',
                description: 'System sets and maintains ideal temperature & humidity.',
              ).animate().fadeIn().scale()
,
              FeatureCard(
                icon: FontAwesomeIcons.chartLine,
                title: 'Live Monitoring',
                description: 'Sensors track the environment, ensuring safe storage over time.',
              ).animate().fadeIn().scale()
,
            ],
          ),
        ],
      ),
    );
  }
}
