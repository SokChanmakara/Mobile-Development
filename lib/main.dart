import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 60),
            Text(
              "Login to your \naccount",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: 100,
              child: Image.asset('assets/images/accent.png'),
            ),
            SizedBox(height: 50),
            TextField(
              decoration: InputDecoration(
                labelText: "Email",
                fillColor: Colors.grey[300],
                filled: true,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
              ),
            ),
            SizedBox(height: 30),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                fillColor: Colors.grey[300],
                filled: true,
                labelText: "Password",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                suffixIcon: Icon(Icons.visibility),
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Checkbox(
                  value: rememberMe,
                  onChanged: (value) {
                    setState(() {
                      rememberMe = value!;
                    });
                  },
                ),
                Text("Remember me"),
              ],
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WelcomePage(username: "yourname")),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: Size(double.infinity, 50),
              ),
              child: Text("Login", style: TextStyle(color: Colors.white)),
            ),
            SizedBox(height: 10),
            Center(child: Text("OR")),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                minimumSize: Size(double.infinity, 50),
                side: BorderSide(color: Colors.grey),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 5),
                  Text("Login with Google", style: TextStyle(color: Colors.black)),
                ],
              ),
            ),
            SizedBox(height: 100),
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterPage()),
                  );
                },
                child: RichText(
                  text: TextSpan(
                    text: "Don't have an account? ",
                    style: TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                        text: "Register",
                        style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool agreeToTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 60),
            Text(
              "Register new \naccount",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: 100,
              child: Image.asset('assets/images/accent.png'),
            ),
            SizedBox(height: 50),
            TextField(
              decoration: InputDecoration(
                fillColor: Colors.grey[300],
                filled: true,
                labelText: "Email",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                fillColor: Colors.grey[300],
                filled: true,
                labelText: "Password",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                fillColor: Colors.grey[300],
                filled: true,
                labelText: "Confirm Password",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
              ),
            ),
            SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Checkbox(
                value: agreeToTerms,
                onChanged: (value) {
                setState(() {
                  agreeToTerms = value!;
                });
                },
              ),
              Expanded(
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("By creating an account, you agree to our"),
                  Text(
                  "Term & Condition",
                  style: TextStyle(color: Colors.blue),
                  ),
                ],
                ),
              ),
              ],
            ),

            SizedBox(height: 10),
            ElevatedButton(
              onPressed:() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WelcomePage(username: "Chanmakara")),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: Size(double.infinity, 50),
              ),
              child: Text("Register", style: TextStyle(color: Colors.white)),
            ),
            SizedBox(height: 20),
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Text("Already have an account? Login", style: TextStyle(color: Colors.blue)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WelcomePage extends StatelessWidget {
  final String username;
  
  WelcomePage({required this.username});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hello $username, Welcome", style: TextStyle(fontSize: 22)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              child: Text("Log Out", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
