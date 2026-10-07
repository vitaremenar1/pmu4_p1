import 'package:flutter/material.dart';
import '../models/quake.dart';
import '../widgets/magnitude_badge.dart';

class DetailScreen extends StatefulWidget {

  final Quake quake;
  const DetailScreen({super.key, required this.quake});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> 
with SingleTickerProviderStateMixin{

  late final AnimationController _pulse;
  late final Animation<double> _scale;

  @override
  void initState() {
    super.initState();

    _pulse  = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 700)
    );

    _scale = Tween<double>(begin: 1.0, end: 1.15).animate(CurvedAnimation(parent: _pulse, curve: Curves.easeInOut));

    if (widget.quake.magnitude >= 4.5) _pulse.repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}