import 'package:acyuta/pages/preferences.dart';
import 'package:acyuta/result/output.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

class ManualInput extends StatefulWidget {
  const ManualInput({super.key});

  @override
  State<ManualInput> createState() => _ManualInputState();
}

dynamic resultList;

final TextEditingController _getPh = TextEditingController();
final TextEditingController _getN = TextEditingController();
final TextEditingController _getS = TextEditingController();
final TextEditingController _getPhos = TextEditingController();
final TextEditingController _getpotassium = TextEditingController();
final TextEditingController _getB = TextEditingController();
final TextEditingController _getZn = TextEditingController();
final TextEditingController _getIr = TextEditingController();

class _ManualInputState extends State<ManualInput> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 154, 231, 194),
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                resultList = resultOut(
                    boronInput: double.parse(_getB.text),
                    ironInput: double.parse(_getIr.text),
                    nitrogenInput: double.parse(_getN.text),
                    zincInput: double.parse(_getZn.text),
                    sulphurInput: double.parse(_getS.text),
                    phInput: double.parse(_getPh.text),
                    phosInput: double.parse(_getPhos.text),
                    potasInput: double.parse(_getpotassium.text));
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Preferences()));
              },
              icon: const Icon(
                Icons.upload,
                color: Colors.black,
                size: 30,
              ),
            )
          ],
          backgroundColor: Colors.greenAccent,
          title: const Text(
            "अच्युता",
            style: TextStyle(
                color: Colors.black, fontSize: 30, fontWeight: FontWeight.w500),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: [
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: _getPh,
                onTapOutside: (event) {
                  return FocusScope.of(context).requestFocus(FocusNode());
                },
                style: const TextStyle(color: Colors.black, fontSize: 15),
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  fillColor: Color.fromARGB(255, 92, 154, 124),
                  filled: true,
                  labelText: "Ph",
                  labelStyle: TextStyle(color: Colors.black, fontSize: 20),
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
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: _getN,
                onTapOutside: (event) {
                  return FocusScope.of(context).requestFocus(FocusNode());
                },
                style: const TextStyle(color: Colors.black, fontSize: 15),
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  fillColor: Color.fromARGB(255, 92, 154, 124),
                  filled: true,
                  labelText: "Nitrogen",
                  labelStyle: TextStyle(color: Colors.black, fontSize: 20),
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
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: _getPhos,
                onTapOutside: (event) {
                  return FocusScope.of(context).requestFocus(FocusNode());
                },
                style: const TextStyle(color: Colors.black, fontSize: 15),
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  fillColor: Color.fromARGB(255, 92, 154, 124),
                  filled: true,
                  labelText: "Phosphorus",
                  labelStyle: TextStyle(color: Colors.black, fontSize: 20),
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
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: _getpotassium,
                onTapOutside: (event) {
                  return FocusScope.of(context).requestFocus(FocusNode());
                },
                style: const TextStyle(color: Colors.black, fontSize: 15),
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  fillColor: Color.fromARGB(255, 92, 154, 124),
                  filled: true,
                  labelText: "Potassium",
                  labelStyle: TextStyle(color: Colors.black, fontSize: 20),
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
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: _getS,
                onTapOutside: (event) {
                  return FocusScope.of(context).requestFocus(FocusNode());
                },
                style: const TextStyle(color: Colors.black, fontSize: 15),
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  fillColor: Color.fromARGB(255, 92, 154, 124),
                  filled: true,
                  labelText: "Sulphur",
                  labelStyle: TextStyle(color: Colors.black, fontSize: 20),
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
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: _getZn,
                onTapOutside: (event) {
                  return FocusScope.of(context).requestFocus(FocusNode());
                },
                style: const TextStyle(color: Colors.black, fontSize: 15),
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  fillColor: Color.fromARGB(255, 92, 154, 124),
                  filled: true,
                  labelText: "Zinc",
                  labelStyle: TextStyle(color: Colors.black, fontSize: 20),
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
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: _getB,
                onTapOutside: (event) {
                  return FocusScope.of(context).requestFocus(FocusNode());
                },
                style: const TextStyle(color: Colors.black, fontSize: 15),
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  fillColor: Color.fromARGB(255, 92, 154, 124),
                  filled: true,
                  labelText: "Boron",
                  labelStyle: TextStyle(color: Colors.black, fontSize: 20),
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
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: _getIr,
                onTapOutside: (event) {
                  return FocusScope.of(context).requestFocus(FocusNode());
                },
                style: const TextStyle(color: Colors.black, fontSize: 15),
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  fillColor: Color.fromARGB(255, 92, 154, 124),
                  filled: true,
                  labelText: "Iron",
                  labelStyle: TextStyle(color: Colors.black, fontSize: 20),
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
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
