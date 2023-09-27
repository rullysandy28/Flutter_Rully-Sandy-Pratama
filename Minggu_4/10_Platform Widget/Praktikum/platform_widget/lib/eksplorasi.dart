import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Eksplorasi extends StatefulWidget {
  const Eksplorasi({super.key});

  @override
  State<Eksplorasi> createState() => _EksplorasiState();
}

class _EksplorasiState extends State<Eksplorasi> {
  final List<String> data = [
    'Learn Flutter',
    'Learn ReactJs',
    'Learn VueJs',
    'Learn TailwindJs',
    'Learn UI/UX',
    'Learn Figma',
    'Learn digitalMarketing',
  ];

  final primaryColor = const Color(0xFF6200EE);
  final secondaryColor = const Color(0xFF03DAC5);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Flutter App"),
        centerTitle: true,
        backgroundColor: primaryColor,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.search),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                title: Text(
                  data[index],
                  style: GoogleFonts.openSans(
                    textStyle: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              const Divider(
                thickness: 1,
              ),
            ],
          );
        },
        //
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        backgroundColor: secondaryColor,
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: primaryColor,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'information'),
        ],
      ),
    );
  }
}
