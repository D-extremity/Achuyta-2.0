import 'package:acyuta/pages/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 68, 121, 96),
      body: Padding(
        padding: EdgeInsets.only(
            top: size.height * 0.1,
            right: 8,
            left: 8,
            bottom: size.height * 0.1),
        child: Card(
          color: const Color.fromARGB(255, 123, 229, 178),
          child: Stack(
            fit:StackFit.expand,
            children: [
              LayoutBuilder(
                builder: (context, constraints) {
                  return ListView(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Image.asset(
                        "assets/farmericon.png",
                        width: constraints.maxWidth * 0.7,
                        height: constraints.maxHeight * 0.3,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          onTapOutside: (event) {
                            return FocusScope.of(context)
                                .requestFocus(FocusNode());
                          },
                          style:
                              const TextStyle(color: Colors.black, fontSize: 15),
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            fillColor: Color.fromARGB(255, 92, 154, 124),
                            filled: true,
                            labelText: "Phone Number/Email/Username",
                            labelStyle:
                                TextStyle(color: Colors.black, fontSize: 20),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            size: 40,
                            Icons.check_box,
                            color: Colors.green,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          onTapOutside: (event) {
                            return FocusScope.of(context)
                                .requestFocus(FocusNode());
                          },
                          style:
                              const TextStyle(color: Colors.black, fontSize: 15),
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            fillColor: Color.fromARGB(255, 92, 154, 124),
                            filled: true,
                            labelText: "OTP/Password",
                            labelStyle:
                                TextStyle(color: Colors.black, fontSize: 20),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const HomeScreen(),
                            ),
                          );
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Card(
                            color: Colors.green,
                            child: Center(
                              child: Text(
                                "आगे बढ़ें",
                                style:
                                    TextStyle(color: Colors.black, fontSize: 40),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
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
