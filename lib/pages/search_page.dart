import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(84, 42, 93, 1),
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        title: const Text(
          "Search by",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              TextFieldd(
                  icon1: const Icon(Icons.search),
                  icon2: DropdownButton<String>(
                    // value: selectedValue,
                    onChanged: (String? newValue) {
                      newValue = "Option 1";
                    },
                    items:
                    <String>['Option 1', 'Option 2', 'Option 3', 'Option 4']
                        .map<DropdownMenuItem<String>>(
                          (String value) => DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      ),
                    )
                        .toList(),
                  ),
                  title: "Choose Unit"),
              TextFieldd(
                  icon1: const Icon(Icons.search),
                  icon2: DropdownButton<String>(
                    // value: selectedValue,
                    onChanged: (String? newValue) {
                      newValue = "Option 1";
                    },
                    items:
                    <String>['Option 1', 'Option 2', 'Option 3', 'Option 4']
                        .map<DropdownMenuItem<String>>(
                          (String value) => DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      ),
                    )
                        .toList(),
                  ),
                  title: "Choose Department"),
              TextFieldd(
                  icon1: const Icon(Icons.search),
                  icon2: DropdownButton<String>(
                    // value: selectedValue,
                    onChanged: (String? newValue) {
                      newValue = "Option 1";
                    },
                    items:
                    <String>['Option 1', 'Option 2', 'Option 3', 'Option 4']
                        .map<DropdownMenuItem<String>>(
                          (String value) => DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      ),
                    )
                        .toList(),
                  ),
                  title: "Choose Observed By"),
              TextFieldd(
                  icon1: const Icon(Icons.date_range_outlined),
                  title: "Choose Date"),
              TextFieldd(
                  icon1: const Icon(Icons.date_range_outlined),
                  title: "Choose Date"),
              TextFieldd(
                  icon1: const Icon(Icons.area_chart_outlined),
                  title: "Area/Machine Name"),
              const SizedBox(
                height: 56,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(32),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.indigo, Colors.lightBlueAccent]),
                  ),
                  child: Text(
                    "Search",
                    style: GoogleFonts.albertSans(
                      color: Colors.white,
                      fontSize: 32,
                      letterSpacing: 1.5,
                    ),
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

class TextFieldd extends StatefulWidget {
  TextFieldd({Key? key, this.icon1, this.icon2, this.title = ""})
      : super(key: key);
  Icon? icon1;
  DropdownButton? icon2;
  String title = "";
  @override
  State<TextFieldd> createState() => _TextFielddState();
}

class _TextFielddState extends State<TextFieldd> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: widget.icon1,
        labelText: widget.title,
        suffixIcon: widget.icon2,
      ),
    );
  }
}
