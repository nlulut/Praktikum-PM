import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialMediaRow extends StatelessWidget {
  const SocialMediaRow({super.key});

  void _showSnackBar(BuildContext context, String platform) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Membuka $platform...'),
        duration: const Duration(seconds: 1),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: const FaIcon(FontAwesomeIcons.instagram, color: Colors.purple),
          onPressed: () => _showSnackBar(context, 'Instagram'),
        ),
        IconButton(
          icon: const FaIcon(FontAwesomeIcons.linkedin, color: Colors.blue),
          onPressed: () => _showSnackBar(context, 'LinkedIn'),
        ),
        IconButton(
          icon: const FaIcon(FontAwesomeIcons.github, color: Colors.black),
          onPressed: () => _showSnackBar(context, 'GitHub'),
        ),
      ],
    );
  }
}