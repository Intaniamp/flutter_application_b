import 'package:flutter/material.dart';
import 'package:flutter_application_b/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Testing Fultter App'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        actions: [
          TextButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const RegisterPage()),
              );
            },
            icon: const Icon(Icons.person_add, color: Colors.white),
            label: const Text(
              'Register',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Text(
                'start testing your flutter app',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),

            //container
            Container(
              width: 200.0,
              height: 100.0,
              color: Colors.amberAccent,
              alignment: Alignment.center,
              child: const Text(
                'This is a container',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),

            //column
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.star, color: Colors.yellow, size: 50.0),
                Text('Bintang 1', style: TextStyle(fontSize: 20.0)),
                SizedBox(height: 20.0),
                Icon(Icons.star_half, color: Colors.yellow, size: 50.0),
                Text('Bintang 2', style: TextStyle(fontSize: 20.0)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(Icons.home, color: Colors.blue, size: 40.0),
                Icon(Icons.search, color: Colors.green, size: 40.0),
                Icon(Icons.settings, color: Colors.grey, size: 40.0),
              ],
            ),

            //container
            Container(
              padding: const EdgeInsets.all(16.0),
              color: Colors.lightBlue,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('Example Text'),
                  const SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Icon(Icons.coffee, color: Colors.brown, size: 40.0),
                      Icon(Icons.fastfood, color: Colors.orange, size: 40.0),
                      Icon(Icons.local_pizza, color: Colors.red, size: 40.0),
                    ],
                  ),
                ],
              ),
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
                  width: 200.0,
                  height: 200.0,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 20.0),
                const Text(
                  'This is an image of an owl',
                  style: TextStyle(fontSize: 18.0),
                ),
              ],
            ),

            //button
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Click the button below',
                  style: TextStyle(fontSize: 18.0),
                ),
                const SizedBox(height: 10.0),
                ElevatedButton(
                  onPressed: () {
                    debugPrint('Button clicked!');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30.0, 
                      vertical: 15.0,
                    ),
                  ),
                  child: const Text(
                    'Click Me',
                    style: TextStyle(fontSize: 16.0, color: Colors.white),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
