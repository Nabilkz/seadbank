import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:seedbank/animation.dart';
import 'package:seedbank/sections/code_docs_section.dart';
import 'package:seedbank/sections/footer_section.dart';
import 'package:seedbank/sections/hero_section.dart';
import 'package:seedbank/sections/how_it_works_section.dart';
import 'package:seedbank/sections/problem_solution_section.dart';
import 'package:seedbank/sections/team_section.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart'; // Import the new package

class MainPageWeb extends StatelessWidget {
  const MainPageWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // final isMobile = constraints.maxWidth < 600;
        return Animate(
  effects: [FadeEffect(duration: 1000.ms)],
  child: Column(
    children: const [
      HeroSection(),
      ProblemSolutionSection(),
      HowItWorksSection(),
      DemoSection(),
      CodeDocsSection(),
      TeamSection(),
      FooterSection(),
    ],
  ),
);
      },
    );
  }
}

class FeatureCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const FeatureCard({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Animate(
      effects: [FadeEffect(), ScaleEffect()],
      child: Container(
        width: 200,
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: const Color(0xFFE6F9EC),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10)],
        ),
        child: Column(
          children: [
            Icon(icon, size: 32, color: const Color(0xFF34D399)),
            const SizedBox(height: 16),
            Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            const SizedBox(height: 8),
            Text(
              description,
              style: const TextStyle(fontSize: 13, color: Color(0xFF4B5563)),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class BulletList extends StatelessWidget {
  final List<String> items;
  final Color? textColor;
  final FontWeight? fontWeight;

  const BulletList({
    super.key,
    required this.items,
    this.textColor,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items
          .map(
            (item) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.eco, size: 18, color: Color(0xFF34D399)),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      item,
                      style: TextStyle(
                        color: textColor ?? const Color(0xFF374151),
                        fontWeight: fontWeight ?? FontWeight.normal,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}

class InfoCard extends StatelessWidget {
  final String icon;
  final String title;
  final String description;

  const InfoCard({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      child: Column(
        children: [
          Text(icon, style: const TextStyle(fontSize: 32)),
          const SizedBox(height: 8),
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 4),
          Text(
            description,
            style: const TextStyle(fontSize: 12, color: Color(0xFF6B7280)),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}



// class DemoSection extends StatelessWidget {
//   const DemoSection({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: const Color(0xFFFFFFFF),
//       padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 40),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Animate(
//             effects: [FadeEffect(), SlideEffect(begin: Offset(0, 0.2))],
//             child: const Text(
//               '🎥 Demo & Prototype',
//               style: TextStyle(
//                 fontSize: 32,
//                 fontWeight: FontWeight.bold,
//                 color: Color(0xFF065F46),
//               ),
//               textAlign: TextAlign.center,
//             ),
//           ),
//           const SizedBox(height: 16),
//           const Text(
//             'Watch Seed Bank in action and explore the setup that preserves plant biodiversity.',
//             style: TextStyle(fontSize: 18, color: Color(0xFF374151)),
//             textAlign: TextAlign.center,
//           ),
//           const SizedBox(height: 48),
//           // YouTube Embed
//           Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(20),
//               boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 12)],
//             ),
//             clipBehavior: Clip.hardEdge,
//             child: const AspectRatio(
//               aspectRatio: 16 / 9,
//               child:Text('data')
//             ),
//           ),
//           const SizedBox(height: 32),
//           ElevatedButton.icon(
//             onPressed: () {},
//             icon: const Icon(FontAwesomeIcons.seedling),
//             label: const Text('🌱 Try Seed Recognition'),
//             style: ElevatedButton.styleFrom(
//               backgroundColor: const Color(0xFF34D399),
//               foregroundColor: Colors.white,
//               padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 14),
//               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
//               elevation: 6,
//             ),
//           ),
//           const SizedBox(height: 12),
//           const Text(
//             'Coming Soon: Upload a seed image to identify & store.',
//             style: TextStyle(fontSize: 14, color: Color(0xFF6B7280)),
//           ),
//         ],
//       ),
//     );
//   }
// }







class DemoSection extends StatelessWidget {
  const DemoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedReveal(
        delay: const Duration(milliseconds: 400),

      child: Container(
        color: const Color(0xFFFFFFFF),
        padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Animate(
              effects: [FadeEffect(), SlideEffect(begin: Offset(0, 0.2))],
              child: const Text(
                '🎥 Demo & Prototype',
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
              'Watch Seed Bank in action and explore the setup that preserves plant biodiversity.',
              style: TextStyle(fontSize: 18, color: Color(0xFF374151)),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 48),
            // YouTube Embed using flutter_widget_from_html
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 12)],
              ),
              clipBehavior: Clip.hardEdge,
              child: HtmlWidget(
                """
                <iframe width="100%" height="315" 
                  src="https://www.youtube.com/embed/dQw4w9WgXcQ" 
                  frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
                  allowfullscreen></iframe>
                """,
              ),
            ),
            const SizedBox(height: 32),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(FontAwesomeIcons.seedling),
              label: const Text('🌱 Try Seed Recognition'),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF34D399),
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 14),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                elevation: 6,
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              'Coming Soon: Upload a seed image to identify & store.',
              style: TextStyle(fontSize: 14, color: Color(0xFF6B7280)),
            ),
          ],
        ),
      ),
    );
  }
}

