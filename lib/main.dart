import 'package:flutter/material.dart';

void main() {
  runApp(GahshomarApp());
}

class GahshomarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'گاهشمار هخامنشی',
      theme: ThemeData(
        primaryColor: Color(0xFFC9A227),
        scaffoldBackgroundColor: Color(0xFFD7D2CB),
        fontFamily: 'Roboto',
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('گاهشمار هخامنشی'),
        backgroundColor: Color(0xFFC9A227),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.account_balance, size: 80, color: Color(0xFFC9A227)),
            SizedBox(height: 20),
            Text(
              'گاهشمار هخامنشی',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'نسخه اولیه تقویم شمسی',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFC9A227),
              ),
              onPressed: () {
                setState(() {
                  selectedDate = DateTime.now();
                });
              },
              child: Text('برو به امروز'),
            ),
            SizedBox(height: 20),
            Text(
              '${selectedDate.year} / ${selectedDate.month} / ${selectedDate.day}',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
