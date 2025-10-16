import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class TeamSection extends StatelessWidget {
  const TeamSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFFFFFFF),
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Animate(
            effects: [FadeEffect(), SlideEffect(begin: Offset(0, 0.2))],
            child: const Text(
              '👥 Meet the Team',
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
            'A diverse group passionate about sustainability, AI, and hardware integration.',
            style: TextStyle(fontSize: 18, color: Color(0xFF374151)),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 48),
          Wrap(
            spacing: 24,
            runSpacing: 24,
            alignment: WrapAlignment.center,
            children: const [
              TeamMemberCard(
                imagePath: 'assets/bashar.jpg',
                name: 'Julian Wassouf',
                role: 'AI Specialist',
                bio: 'Developed the seed identification model and integrated it with the system.',
              ),
              TeamMemberCard(
                imagePath: 'assets/hitler.jpg',
                name: 'Asaad Al-Day',
                role: '3D & Hardware Engineer',
                bio: 'Designed sensor integration, 3D components, and the cooling system.',
              ),
              TeamMemberCard(
                imagePath: 'assets/rock.jpg',
                name: 'Khalil Al Debs',
                role: 'Presentation Specialist',
                bio: 'Creates and delivers engaging team presentations on the website.',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TeamMemberCard extends StatelessWidget {
  final String imagePath;
  final String name;
  final String role;
  final String bio;

  const TeamMemberCard({
    super.key,
    required this.imagePath,
    required this.name,
    required this.role,
    required this.bio,
  });

  @override
  Widget build(BuildContext context) {
    return Animate(
      effects: [FadeEffect(), ScaleEffect()],
      child: Container(
        width: 220,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: const Color(0xFFF0FDF4),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10)],
        ),
        child: Column(
          children: [
            ClipOval(
              child: Image.asset(imagePath, width: 80, height: 80, fit: BoxFit.cover),
            ),
            const SizedBox(height: 12),
            Text(name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            const SizedBox(height: 4),
            Text(role, style: const TextStyle(fontSize: 13, color: Color(0xFF6B7280))),
            const SizedBox(height: 8),
            Text(
              bio,
              style: const TextStyle(fontSize: 12, color: Color(0xFF4B5563)),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}