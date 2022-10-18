import 'package:flutter/material.dart';
import 'package:note_app/ui/Pages/create_note.dart';

class WelcomeNoteScreen extends StatefulWidget {
  const WelcomeNoteScreen({super.key});

  @override
  State<WelcomeNoteScreen> createState() => _WelcomeNoteScreenState();
}

class _WelcomeNoteScreenState extends State<WelcomeNoteScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CreateNote()));
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100)),
                      elevation: 5,
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          image: DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage('assets/notes assets/+.png'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: const [
                      Text(
                        "Welcome to Notes",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Have a nice day",
                          style: TextStyle(fontSize: 16),
                        ),
                      )
                    ],
                  )
                  // IconButton(
                  //     onPressed: () {},
                  //     icon: Icon(
                  //       Icons.add_circle_outlined,
                  //       // color: Color(0xFFF6F6F6),
                  //     ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
