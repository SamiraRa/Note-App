import 'package:flutter/material.dart';
import 'package:note_app/ui/Pages/welcome_note_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: screenWidth,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/notes assets/bg (1).png"),
                fit: BoxFit.fill),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(70, 40, 40, 40),
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Image.asset("assets/notes assets/Group 468.png"),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Expanded(
                  child: Text(
                    "Welcome to Notes",
                    style: TextStyle(
                        fontSize: 19,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Card(
                  elevation: 5,
                  child: TextField(
                    controller: phoneController,
                    decoration: const InputDecoration(
                      hintText: "Enter Mobile Number",
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Row(
                    children: const [
                      SizedBox(width: 10),
                      Card(
                        elevation: 5,
                        child: SizedBox(height: 50, width: 50),
                      ),
                      SizedBox(width: 10),
                      Card(
                        elevation: 5,
                        child: SizedBox(height: 50, width: 50),
                      ),
                      SizedBox(width: 10),
                      Card(
                        elevation: 5,
                        child: SizedBox(height: 50, width: 50),
                      ),
                      SizedBox(width: 10),
                      Card(
                        elevation: 5,
                        child: SizedBox(height: 50, width: 50),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Column(
                      children: [
                        const Text(
                          "Send OTP",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.of(context).pushAndRemoveUntil(
                                MaterialPageRoute(
                                    builder: (context) => WelcomeNoteScreen()),
                                (Route<dynamic> route) => false);
                          },
                          icon: const Icon(
                            Icons.arrow_circle_right,
                            color: Color(0xFFFFC158),
                            size: 48,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
