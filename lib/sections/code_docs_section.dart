import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CodeDocsSection extends StatelessWidget {
  const CodeDocsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFF0FDF4),
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Animate(
            effects: [FadeEffect(), SlideEffect(begin: Offset(0, 0.2))],
            child: const Text(
              '💻 Code & Documentation',
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
            'Dive into the AI logic, hardware integration, and our full technical process.',
            style: TextStyle(fontSize: 18, color: Color(0xFF374151)),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 40),
          ElevatedButton.icon(
            onPressed: () {
              // TODO: Link to GitHub
            },
            icon: const Icon(FontAwesomeIcons.github),
            label: const Text('View on GitHub'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
              elevation: 6,
            ),
          ),
          const SizedBox(height: 40),
          Container(
            width: 700,
            decoration: BoxDecoration(
              color: const Color(0xFF1F2937),
              borderRadius: BorderRadius.circular(16),
              boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 12)],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  child: Text(
                    'main.py',
                    style: TextStyle(
                      fontFamily: 'monospace',
                      fontSize: 14,
                      color: Color(0xFF6EE7B7),
                    ),
                  ),
                ),
                Divider(height: 1, color: Color(0xFF374151)),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: SelectableText(
                    '''
import time
from seed_ai import identify_seed
from sensors import read_temp, adjust_cooling

while True:
    seed_type = identify_seed()
    if seed_type:
        target_temp = get_ideal_temp(seed_type)
        current_temp = read_temp()
        adjust_cooling(current_temp, target_temp)
        print(f"Preserving {seed_type} at {target_temp}°C")
        time.sleep(10)
                    ''',
                    style: TextStyle(
                      fontFamily: 'monospace',
                      fontSize: 13,
                      color: Color(0xFFD1FAE5),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}