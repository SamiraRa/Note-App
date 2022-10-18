import 'package:flutter/material.dart';

class CreateNote extends StatefulWidget {
  const CreateNote({super.key});

  @override
  State<CreateNote> createState() => _CreateNoteState();
}

class _CreateNoteState extends State<CreateNote> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100)),
                      color: const Color(0xFFF6F6F6F6),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 25, 0),
                          child: Icon(
                            Icons.arrow_back_outlined,
                            color: Colors.grey,
                            size: 36,
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100)),
                      color: const Color(0xFFF6F6F6F6),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 25, 0),
                          child: Icon(
                            Icons.rotate_left,
                            color: Colors.grey,
                            size: 36,
                          ),
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100)),
                      color: const Color(0xFFF6F6F6F6),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 25, 0),
                          child: Icon(
                            Icons.rotate_right,
                            color: Colors.grey,
                            size: 36,
                          ),
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100)),
                      color: const Color(0xFFF6F6F6F6),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 25, 0),
                          child: Icon(
                            Icons.delete_rounded,
                            color: Colors.grey,
                            size: 36,
                          ),
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100)),
                      color: const Color(0xFFF6F6F6F6),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 25, 0),
                          child: Icon(
                            Icons.save,
                            color: Colors.grey,
                            size: 36,
                          ),
                        ),
                      ),
                    ),
                    // IconButton(
                    //   onPressed: () {},
                    //   icon: const Icon(
                    //     Icons.rotate_left,
                    //     size: 36,
                    //   ),
                    // ),
                    // IconButton(
                    //   onPressed: () {},
                    //   icon: const Icon(
                    //     Icons.rotate_right,
                    //     size: 36,
                    //   ),
                    // ),
                  ],
                ),
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "Title",
                    hintStyle: TextStyle(
                      fontSize: 36,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    border: OutlineInputBorder(borderSide: BorderSide.none)),
              ),
              TextField(
                maxLines: 10,
                decoration: InputDecoration(
                    hintText: "Enter Your Text Here",
                    hintStyle: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(borderSide: BorderSide.none)),
              ),
              //
              // BottomNavigationBar(items: items),
              Spacer(),
              Align(
                alignment: Alignment.bottomLeft,
                child: FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: Color(0xFFF6F6F6F6),
                  child: Icon(
                    Icons.image_outlined,
                    color: Colors.grey,
                    size: 36,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
