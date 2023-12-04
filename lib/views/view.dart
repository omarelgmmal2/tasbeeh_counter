import 'package:flutter/material.dart';

class TasbeehView extends StatefulWidget {
  const TasbeehView({super.key});

  @override
  State<TasbeehView> createState() => _TasbeehViewState();
}

class _TasbeehViewState extends State<TasbeehView> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade300,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green,
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(0, 5),
                      color: Colors.white.withOpacity(.5),
                      spreadRadius: 5,
                      blurRadius: 5),
                ],
              ),
              child: Center(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                  child: Text(
                    counter.toString(),
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Transform.translate(
              offset: const Offset(0, -40),
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                  color: Colors.green,
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 5),
                        color: Colors.white.withOpacity(.5),
                        spreadRadius: 2,
                        blurRadius: 5),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        counter++;
                        setState(() {

                        });
                      },
                      style: ElevatedButton.styleFrom(
                        maximumSize: const Size(80, 80),
                        backgroundColor: Colors.white,
                      ),
                      child: Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        counter = 0;
                        setState(() {

                        });
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.red,
                        backgroundColor: Colors.white,
                      ),
                      child: const Text(
                        "Reset",
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
