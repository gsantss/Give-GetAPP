import "package:flutter/material.dart";
import 'package:give_get/shared/colors.dart';
import 'package:give_get/widgets/note_widget.dart';

class Home extends StatefulWidget {
  @override
  _HomeItemScreenState createState() => _HomeItemScreenState();
}

class _HomeItemScreenState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: size.width * .88,
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.blueGive),
                    borderRadius: BorderRadius.circular(25)),
                child: TextFormField(
                  cursorColor: AppColors.blue,
                  // onChanged: controller.onFilter,
                  onTapOutside: (detail) => FocusScope.of(context).unfocus(),
                  onEditingComplete: FocusScope.of(context).nextFocus,
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Pesquise",
                      prefixIcon: Icon(
                        Icons.search,
                        color: Color.fromARGB(17, 34, 77, 1),
                      ),
                      hintStyle: TextStyle(
                          color: Color.fromARGB(255, 31, 30, 30),
                          fontWeight: FontWeight.normal)),
                ),
              ),
              NoteWidget(),
              SizedBox(
                height: size.width * .08,
              ),
            ],
          ),
        ),
      ),
    );
    throw UnimplementedError();
  }
}
