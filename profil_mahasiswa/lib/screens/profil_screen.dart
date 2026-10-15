import 'package:flutter/material.dart';
import '../widgets/profil_header.dart';
import '../widgets/profil_info.dart';
import '../widgets/social_media_row.dart';
import '../widgets/action_buttons.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        backgroundColor: const Color.fromARGB(255, 253, 33, 231),
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: const [
              ProfileHeader(name: 'Nama Mahasiswa', nim: '21.11.0000'),
              SizedBox(height: 16),
              SocialMediaRow(),
              SizedBox(height: 16),
              ProfileInfo(
                name: 'Nama Mahasiswa',
                nim: '21.11.0000',
                programStudi: 'S1 Informatika',
                email: 'email@students.amikom.ac.id',
                lokasi: 'Yogyakarta, Indonesia',
              ),
              SizedBox(height: 24),
              ActionButtons(),
            ],
          ),
        ),
      ),
    );
  }
}