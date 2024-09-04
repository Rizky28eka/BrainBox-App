import 'package:flutter/material.dart';

class BottomNavigationButtons extends StatelessWidget {
  final int currentIndex;
  final void Function() onGoToPrevious;
  final void Function() onGoToNext;

  const BottomNavigationButtons({
    required this.currentIndex,
    required this.onGoToPrevious,
    required this.onGoToNext,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white24,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      width: 180,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (currentIndex > 0)
            IconButton(
              onPressed: onGoToPrevious,
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
            )
          else
            const SizedBox(width: 48),
          const Text(
            '|',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          IconButton(
            onPressed: onGoToNext,
            icon: const Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
          ),
        ],
      ),
    );
  }
}
