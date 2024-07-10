import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepPurple[700],
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.deepPurple.shade500,
                  Colors.deepPurple.shade900,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('images/Atharva.jpg'),
                ),
                Text(
                  'Atharva Paradkar',
                  style: GoogleFonts.pacifico(
                    textStyle: const TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                    ),
                  ),
                ),
                Text(
                  'Flutter Developer',
                  style: GoogleFonts.sourceSans3(
                    textStyle: const TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                  width: 200,
                  child: Divider(color: Colors.deepPurple.shade200),
                ),
                Card(
                  elevation: 15,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Padding(
                    padding: const EdgeInsets.all(14),
                    child: Row(
                      children: [
                        Icon(
                          Icons.phone,
                          color: Colors.deepPurple[700],
                        ),
                        const SizedBox(width: 30),
                        Text(
                          '9822975185',
                          style: TextStyle(
                              fontSize: 16, color: Colors.deepPurple[700]),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 15,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.deepPurple[700],
                    ),
                    title: Text(
                      'atharvaparadkar91@gmail.com',
                      style: TextStyle(
                          fontSize: 16, color: Colors.deepPurple[700]),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
