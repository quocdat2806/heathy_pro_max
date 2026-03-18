import 'package:flutter/material.dart';
import 'package:healthy_fitness_pro/shared/widgets/images/cached_image_widget.dart';

class AvatarImage extends StatelessWidget {
  final String? imageUrl;
  final double size;
  final String? fallbackText;

  const AvatarImage({
    super.key,
    this.imageUrl,
    this.fallbackText,
    this.size = 64,
  });

  @override
  Widget build(BuildContext context) {
    final hasImage = imageUrl != null && imageUrl!.isNotEmpty;

    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: hasImage ? null : Colors.black26,
      ),
      child: ClipOval(
        child: hasImage
            ? AppImage.network(
                imageUrl: imageUrl!,
                width: size,
                height: size,
                fit: BoxFit.cover,
              )
            : Center(
                child: Text(
                  fallbackText != null && fallbackText!.isNotEmpty
                      ? fallbackText![0].toUpperCase()
                      : 'A',
                  style: TextStyle(
                    fontSize: size * 0.4,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
      ),
    );
  }
}
