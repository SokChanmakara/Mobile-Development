import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('https://www.linkedin.com/feed/');
final Uri url = Uri.parse('https://t.me.Chanmakaraaa');
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "DREAM VISION",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          titleTextStyle: TextStyle(color: Colors.white),
          backgroundColor: const Color.fromARGB(255, 166, 146, 219),
          leading: Padding(
            padding: const EdgeInsets.all(8),
            child: Image.asset('assets/beer.png'),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu_open, color: Colors.white),
            ),
          ],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            // Make the content scrollable
            child: Column(
              children: [
                // Top image
                Container(
                  margin: EdgeInsets.only(top: 30),
                  alignment: Alignment.center,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(500),
                    child: Container(
                      height: 280,
                      width: 280,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/makara.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),

                // Main content area
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Welcome to my Portfolio",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Hi I'm",
                        style: TextStyle(
                          fontSize: 42,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Chanmakara",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 42,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Mobile",
                        style: TextStyle(
                          fontSize: 42,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Developer",
                        style: TextStyle(
                          fontSize: 42,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "A Jack of all trade, That love all kind of technology.Interesting in Web and Mobile Development",
                        style: TextStyle(
                          fontSize: 16,
                          fontStyle: FontStyle.italic,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),

                // First button (Hire Me!)
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  // ignore: sized_box_for_whitespace
                  child: Container(
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () async {
                        if (!await launchUrl(url)) {
                          throw Exception("Could not launnch $url");
                        }
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: const Color.fromARGB(
                          255,
                          20,
                          158,
                          223,
                        ),
                        padding: EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Text("Hire Me!"),
                    ),
                  ),
                ),

                // Second button (Download) with Icon
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  // ignore: sized_box_for_whitespace
                  child: Container(
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () async {
                        if (!await launchUrl(_url)) {
                          throw Exception("Could not launch $_url");
                        }
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: const Color.fromARGB(
                          255,
                          255,
                          255,
                          255,
                        ),
                        padding: EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        side: BorderSide(color: Colors.blue, width: 2),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Download CV",
                            style: TextStyle(color: Colors.blue),
                          ),
                          Icon(
                            Icons.file_download_outlined,
                            color: Colors.blue,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
