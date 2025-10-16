import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

/// Lightweight local fallback for the `visibility_detector` package when the
/// package is not available; this stub always reports the child as fully
/// visible so the reveal animation will run.
class VisibilityInfo {
  final double visibleFraction;
  VisibilityInfo({required this.visibleFraction});
}

typedef VisibilityChangedCallback = void Function(VisibilityInfo info);

class VisibilityDetector extends StatefulWidget {
  final Key? key;
  final Widget child;
  final VisibilityChangedCallback onVisibilityChanged;

  const VisibilityDetector({
    this.key,
    required this.child,
    required this.onVisibilityChanged,
  }) : super(key: key);

  @override
  _VisibilityDetectorState createState() => _VisibilityDetectorState();
}

class _VisibilityDetectorState extends State<VisibilityDetector> {
  @override
  void initState() {
    super.initState();
    // Notify that the widget is visible after the first frame so animations can start.
    WidgetsBinding.instance.addPostFrameCallback((_) {
      widget.onVisibilityChanged(VisibilityInfo(visibleFraction: 1.0));
    });
  }

  @override
  Widget build(BuildContext context) => widget.child;
}

class AnimatedReveal extends StatefulWidget {
  final Widget child;
  final Duration delay;
  final Duration duration;

  const AnimatedReveal({
    super.key,
    required this.child,
    this.delay = const Duration(milliseconds: 0),
    this.duration = const Duration(milliseconds: 600),
  });

  @override
  State<AnimatedReveal> createState() => _AnimatedRevealState();
}

class _AnimatedRevealState extends State<AnimatedReveal> {
  bool _visible = false;

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: widget.key ?? UniqueKey(),
      onVisibilityChanged: (info) {
        if (info.visibleFraction > 0.2 && !_visible) {
          setState(() => _visible = true);
        }
      },
      child: _visible
          ? widget.child
              .animate()
              .fadeIn(delay: widget.delay)
              .slideY(begin: 0.2, duration: widget.duration)
          : const SizedBox.shrink(),
    );
  }
}