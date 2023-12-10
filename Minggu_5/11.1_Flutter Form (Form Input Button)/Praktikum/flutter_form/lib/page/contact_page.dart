import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form/models/contact_model.dart';
import 'package:flutter_form/page/header_contact_page.dart';
import 'package:flutter_form/theme/theme_color.dart';
import 'package:flutter_form/widgets/button_widget.dart';
import 'package:flutter_form/widgets/text_field_widget.dart';

class ContactsPage extends StatefulWidget {
  const ContactsPage({super.key});

  @override
  State<ContactsPage> createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  String _nameValue = "";
  String _phoneValue = "";

  List<ContactModel> contactModel = [];

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  void resetField() {
    _nameController.clear();
    _phoneController.clear();
    setState(() {});
  }

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  void addContact() {
    contactModel.add(ContactModel(
      name: _nameValue,
      phone: _phoneValue,
    ));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: (PointerDownEvent event) =>
          FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Contacts",
          ),
          backgroundColor: ThemeColor().primary,
        ),
        body: ListView(
          children: [
            const HeaderContactPage(),
            TextFieldWidget(
              labelText: 'Nama',
              hintText: 'Insert Your Name',
              textCapitalization: TextCapitalization.words,
              controller: _nameController,
              onChanged: (val) {
                _nameValue = val;
                setState(() {});
              },
              inputFormatter: [
                FilteringTextInputFormatter.deny(
                  RegExp('[0-9]'),
                )
              ],
            ),
            TextFieldWidget(
              keyboardType: TextInputType.phone,
              labelText: 'Nomor',
              hintText: '+62 ....',
              maxLength: 15,
              controller: _phoneController,
              onChanged: (val) {
                _phoneValue = val;
                setState(() {});
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 21),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ButtonWidget(
                    title: 'Submit',
                    onPressed: _nameValue.isNotEmpty && _phoneValue.isNotEmpty
                        ? () {
                            addContact();
                            resetField();
                            _nameValue = "";
                            _phoneValue = "";
                          }
                        : null,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const Text(
              "List Contacts",
              style: TextStyle(fontSize: 25),
              textAlign: TextAlign.center,
            ),
            Container(
              width: double.infinity,
              height: 300,
              margin: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: ThemeColor().tertiary,
                borderRadius: BorderRadius.circular(28),
              ),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: contactModel.length,
                itemBuilder: (context, index) {
                  var data = contactModel[index];
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundColor: ThemeColor().secondary,
                      child: Text(
                        data.name[0],
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    title: Text(data.name),
                    subtitle: Text(data.phone),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.edit),
                          onPressed: () {
                            editContact(contactModel[index], index);
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.delete),
                          onPressed: () {
                            setState(() {
                              contactModel.removeAt(index);
                            });
                          },
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void editContact(ContactModel contact, int index) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        String editedName = contact.name;
        String editedPhoneNumber = contact.phone;

        return Listener(
          onPointerDown: (PointerDownEvent event) =>
              FocusManager.instance.primaryFocus?.unfocus(),
          child: AlertDialog(
            title: const Text('Edit Contact'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  onChanged: (value) {
                    editedName = value;
                  },
                  decoration: InputDecoration(
                    labelText: 'Nama',
                    labelStyle: TextStyle(
                      color: ThemeColor().primary,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: ThemeColor().primary),
                    ),
                  ),
                  controller: TextEditingController(text: contact.name),
                ),
                TextField(
                  onChanged: (value) {
                    editedPhoneNumber = value;
                  },
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelText: 'Nomor Telepon',
                    labelStyle: TextStyle(
                      color: ThemeColor().primary,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: ThemeColor().primary),
                    ),
                  ),
                  controller: TextEditingController(text: contact.phone),
                ),
              ],
            ),
            actions: [
              ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.green),
                ),
                onPressed: () {
                  setState(() {
                    contactModel[index].name = editedName;
                    contactModel[index].phone = editedPhoneNumber;
                  });
                  Navigator.of(context).pop();
                },
                child: const Text('Simpan'),
              ),
              ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.red),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Batal'),
              ),
            ],
          ),
        );
      },
    );
  }
}
