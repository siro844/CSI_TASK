import 'package:csi_library/widgets/apptext.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
              const SizedBox(height: 250,),
              Center(
             child : Container(
                 width: 150,
            height: 150,
             decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(
                    'https://cdn.dribbble.com/users/374672/screenshots/4016181/media/f8722787e4cb396b60416cab0ad55ce6.gif'), // Replace with your image URL
                fit: BoxFit.cover,
              ),
             ),
              ),
              ),
            
              const SizedBox(height: 45,),
              const AppText( text:'hi@gmail.com',color: Colors.black,size: 20,),
        ],
      ),
    );
  }
}