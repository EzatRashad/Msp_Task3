import 'package:flutter/material.dart';
import 'package:task_3/task_2/second/second.dart';

import 'widgets/button.dart';
import 'widgets/text_filed.dart';

class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  int age = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(height: 40),
              TextFFiled(label: "First Name", contrller: name),
              const SizedBox(height: 20),
              TextFFiled(
                label: "Phone Number",
                contrller: phone,
                keyboardType: TextInputType.phone,
                maxLength: 11,
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Button(
                      icon: const Icon(
                        Icons.add,
                        size: 26,
                      ),
                      fun: () {
                        setState(() {
                          age++;
                        });
                      },
                    ),
                    Text(
                      "$age",
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 234, 70, 58),
                      ),
                    ),
                    Button(
                      icon: const Icon(
                        Icons.minimize_outlined,
                        size: 26,
                      ),
                      fun: () {
                        setState(() {
                          age--;
                        });
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Button(
                width: 80,
                icon: const Text("Go"),
                fun: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (Builder) => Second(
                              age: age,
                              name: name.text,
                              phone: phone.text,
                            )),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
