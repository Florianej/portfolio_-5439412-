import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flo'),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Startseite',
              style: TextStyle(color: Colors.black),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Fähigkeiten',
              style: TextStyle(color: Colors.black),
              
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Projekt',
              style: TextStyle(color: Colors.black),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Kontakt',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('assets/images/IMG_1747_pp (1).JPG'), 
            ),
            SizedBox(height: 20),
            Text(
              'Hi! I\'m Floriane ',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'A Developer_',
              style: TextStyle(
                fontSize: 28,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'I am a student based in Germany with a passion for programming and design,',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'driven by a desire to innovate and transform ideas into reality through code.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text('Email:'),
                    Text('floriane.kaptoum.djuidje@mnd.thm.de'),
                  ],
                ),
                SizedBox(width: 40),
                Column(
                  children: [
                    Text('LinkedIn:'),
                    Text('linkedin.com/in/floriane'),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text('Download CV'),
            ),
          ],
        ),
      ),
    );
  }
}

