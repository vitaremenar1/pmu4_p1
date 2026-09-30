import 'package:flutter/material.dart';
import '../models/quake.dart';
import 'magnitude_badge.dart';

class QuakeTile extends StatelessWidget{
  final Quake quake;
  final bool pinned;
  final VoidCallback onTap;
  final VoidCallback onLongPress;
  final VoidCallback onDismissed;

  const QuakeTile ({
    super.key,
    required this.quake,
    required this.pinned,
    required this.onTap,
    required this.onLongPress,
    required this.onDismissed
    })

  @override
  Widget build(BuildContext context) {
   return Dismissible(
    key: ValueKey(quake.id), 
    direction: DismissDirection.endToStart,
    child: child
    );
  }
}