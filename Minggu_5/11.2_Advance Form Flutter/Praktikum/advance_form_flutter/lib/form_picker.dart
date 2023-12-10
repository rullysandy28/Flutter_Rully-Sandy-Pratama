import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:intl/intl.dart';
import 'package:open_file/open_file.dart';

class FormPicker extends StatefulWidget {
  const FormPicker({super.key});

  @override
  State<FormPicker> createState() => _FormPickerState();
}

class _FormPickerState extends State<FormPicker> {
  DateTime _dueDate = DateTime.now();
  var currentDate = DateTime.now();
  Color currentColor = Colors.orange;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Interactive Widget'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: ListView(
          shrinkWrap: true,
          children: [
            buildDatePicker(context),
            const SizedBox(height: 20),
            buildColorPicker(context),
            const SizedBox(height: 20),
            buildFilePicker(context),
          ],
        ),
      ),
    ));
  }

  Widget buildDatePicker(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Date'),
            TextButton(
              onPressed: () async {
                final selectedDate = await showDatePicker(
                  context: context,
                  initialDate: currentDate,
                  firstDate: DateTime(2000),
                  lastDate: DateTime(currentDate.year + 5),
                );

                setState(() {
                  if (selectedDate != null) {
                    _dueDate = selectedDate;
                    currentDate = selectedDate;
                  }
                });
              },
              child: const Text('Select'),
            ),
          ],
        ),
        Text(
          DateFormat('dd MMMM yyyy').format(_dueDate),
        ),
      ],
    );
  }

  Widget buildColorPicker(BuildContext context) {
    return Column(
      children: [
        const Text('Color Picker'),
        const SizedBox(height: 20),
        Container(
          height: 100,
          width: double.infinity,
          color: currentColor,
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: currentColor,
          ),
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('Pick Your Color'),
                    content: BlockPicker(
                        pickerColor: currentColor,
                        onColorChanged: (color) {
                          setState(() {
                            currentColor = color;
                          });
                        }),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Save'),
                      ),
                    ],
                  );
                });
          },
          child: const Text('Pick Color'),
        ),
      ],
    );
  }

  Widget buildFilePicker(BuildContext context) {
    return Column(
      children: [
        const Text('File Picker'),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            _pickFile();
          },
          child: const Text('Pick your file'),
        ),
      ],
    );
  }
}

void _pickFile() async {
  final result = await FilePicker.platform.pickFiles();
  if (result == null) return;

  //mendapatkan file dari objek result
  final file = result.files.first;
  _openFile(file);
}

void _openFile(PlatformFile file) {
  OpenFile.open(file.path);
}
