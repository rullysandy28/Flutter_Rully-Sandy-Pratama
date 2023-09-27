import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'contact.dart';

class NewHome extends StatefulWidget {
  const NewHome({super.key});

  @override
  State<NewHome> createState() => _NewHomeState();
}

class _NewHomeState extends State<NewHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Material App"),
      ),
      body: ListView(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 10),
            child: Text(
              'Contact List',
              style: GoogleFonts.openSans(
                  textStyle: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w600)),
            ),
          ),
          ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: contactList.length,
              itemBuilder: (context, index) {
                final contact = contactList[index];
                return Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  width: double.infinity,
                  child: ListTile(
                    leading: Container(
                        width: MediaQuery.of(context).size.width / 6,
                        height: MediaQuery.of(context).size.width / 6,
                        decoration: const BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          contact.name[0],
                          style: GoogleFonts.openSans(
                              textStyle: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                        )),
                    title: Text(
                      contact.name,
                      style: GoogleFonts.openSans(
                          textStyle: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600)),
                    ),
                    subtitle: Text(
                      contact.number,
                      style: GoogleFonts.openSans(
                          textStyle: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600)),
                    ),
                  ),
                );
              }),
        ],
      ),
    );
  }
}
