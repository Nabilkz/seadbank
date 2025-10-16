import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:seedbank/animation.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 32),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFECFDF5), Color(0xFFD1FAE5)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Animate(
          //   effects: [FadeEffect(), ScaleEffect()],
          //   child: Image.asset('assets/seed-hero.jpg', width: 200, height: 200),
          // ),
          const SizedBox(height: 24),
          Animate(
            effects: [
              FadeEffect(),
              SlideEffect(begin: Offset(0, 0.2)),
            ],
            child: AnimatedReveal(
  delay: const Duration(milliseconds: 200),

              child:  Text(
                'Seed Bank 🌱',
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.w900,
                  color: Color(0xFF065F46),
                  shadows: [
                    Shadow(
                      offset: Offset(1, 1),
                      blurRadius: 4,
                      color: Colors.black26,
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              )
                .animate()
                .fadeIn(duration: 600.ms)
                .slideY(begin: 0.3, end: 0, duration: 800.ms),
            )
,
          ),
          const SizedBox(height: 16),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              'AI-Powered Smart Freezer for Preserving Seeds & Protecting Biodiversity.',
              style: TextStyle(fontSize: 20, color: Color(0xFF374151)),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 32),
          Wrap(
            spacing: 16,
            children: [
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(FontAwesomeIcons.seedling),
                label: const Text('Watch Demo'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF34D399),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 14,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  elevation: 6,
                ),
              ),
              OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(FontAwesomeIcons.lightbulb),
                label: const Text('See How It Works'),
                style: OutlinedButton.styleFrom(
                  foregroundColor: const Color(0xFF15803D),
                  side: const BorderSide(color: Color(0xFF34D399), width: 2),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 14,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
