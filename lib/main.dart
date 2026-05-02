import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      body: Center(
        child: Card(
          elevation: 6,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          margin: const EdgeInsets.all(20),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [

                // Profile Image
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('profile.jpeg'),
                ),

                const SizedBox(height: 15),

                // Name
                const Text(
                  "Wong Chun Liang",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 5),

                // DOB / State
                const Text(
                  "Born: 2003 | Perak, Malaysia",
                  style: TextStyle(color: Colors.black54),
                ),

                const SizedBox(height: 10),
                const Divider(),
                const SizedBox(height: 10),

                // 🔹 Email
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.email, color: Colors.blue),
                    SizedBox(width: 8),
                    Text("wongchunliang8158@gmail.com"),
                  ],
                ),

                const SizedBox(height: 8),

                // 🔹 Phone
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.phone, color: Colors.green),
                    SizedBox(width: 8),
                    Text("011-59538311"),
                  ],
                ),

                const SizedBox(height: 15),

                // Bio
                const Text(
                  "A passionate software engineering student who loves coding and building useful apps.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}