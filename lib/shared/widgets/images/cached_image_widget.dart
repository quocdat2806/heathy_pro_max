import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

enum ImageSourceType { network, asset, memory }

class AppImage extends StatelessWidget {
  final String? imageUrl;
  final String? assetPath;
  final Uint8List? memoryBytes;
  final double? width;
  final double? height;
  final BoxFit fit;
  final BorderRadius borderRadius;

  const AppImage.network({
    super.key,
    required this.imageUrl,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
    this.borderRadius = BorderRadius.zero,
  })  : assetPath = null,
        memoryBytes = null;

  const AppImage.asset({
    super.key,
    required this.assetPath,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
    this.borderRadius = BorderRadius.zero,
  })  : imageUrl = null,
        memoryBytes = null;

  const AppImage.memory({
    super.key,
    required this.memoryBytes,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
    this.borderRadius = BorderRadius.zero,
  })  : imageUrl = null,
        assetPath = null;

  @override
  Widget build(BuildContext context) {
    Widget image;

    if (imageUrl != null) {
      image = CachedNetworkImage(
        imageUrl: imageUrl!,
        width: width,
        height: height,
        fit: fit,
        fadeInDuration: const Duration(milliseconds: 200),
        placeholder: (_, __) => _loading(),
        errorWidget: (_, __, ___) => _error(),
      );
    } else if (assetPath != null) {
      image = Image.asset(
        assetPath!,
        width: width,
        height: height,
        fit: fit,
        errorBuilder: (_, __, ___) => _error(),
      );
    } else if (memoryBytes != null) {
      image = Image.memory(
        memoryBytes!,
        width: width,
        height: height,
        fit: fit,
        errorBuilder: (_, __, ___) => _error(),
      );
    } else {
      image = _error();
    }

    return ClipRRect(
      borderRadius: borderRadius,
      child: image,
    );
  }

  Widget _loading() {
    return SizedBox(
      width: width,
      height: height,
      child: const Center(
        child: SizedBox(
          width: 24,
          height: 24,
          child: CircularProgressIndicator(strokeWidth: 2),
        ),
      ),
    );
  }

  Widget _error() {
    return Container(
      width: width,
      height: height,
      color: Colors.grey.shade200,
      alignment: Alignment.center,
      child: const Icon(
        Icons.broken_image,
        color: Colors.grey,
      ),
    );
  }
}
