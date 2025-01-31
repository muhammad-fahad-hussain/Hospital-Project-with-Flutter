import 'package:flutter/material.dart';
import 'package:hospital/scree/video_call.dart';

class HomeScreenVideo extends StatefulWidget {
  const HomeScreenVideo({super.key});

  @override
  State<HomeScreenVideo> createState() => _HomeScreenVideoState();
}

class _HomeScreenVideoState extends State<HomeScreenVideo> {
  final username = TextEditingController();
  final id = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            TextField(
              controller: username,
              decoration: const InputDecoration(
                labelText: 'username',
                hintText: 'username',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.teal, width: 2.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.teal, width: 2.0),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: id,
              decoration: const InputDecoration(
                labelText: 'user id',
                hintText: 'userid',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.teal, width: 2.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 2.0),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            MaterialButton(
              color: Colors.teal,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => VideoCalling(
                      id: id.text,
                      username: username.text,
                    ),
                  ),
                );
              },
              child: const Text(
                'Login',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
