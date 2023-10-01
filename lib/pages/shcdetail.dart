// import 'package:acyuta/getimage/getimage.dart';
import 'package:acyuta/pages/preferences.dart';
import 'package:acyuta/pages/upload.dart';
import 'package:acyuta/result/output.dart';
import 'package:acyuta/textrecog/textrecog.dart';
import 'package:flutter/material.dart';

class ShcDetail extends StatefulWidget {
  const ShcDetail({super.key});

  @override
  State<ShcDetail> createState() => _ShcDetailState();
}

class _ShcDetailState extends State<ShcDetail> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 68, 121, 96),
        appBar: AppBar(
          leading: const BackButton(
            color: Colors.black,
          ),
          backgroundColor: Colors.greenAccent,
          title: const Text(
            "अच्युता",
            style: TextStyle(color: Colors.black, fontSize: 30),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Stack(
                fit: StackFit.expand,
                children: [
                  ListView(
                    children: [
                      Image.memory(
                        uploadedimage,
                        width: constraints.maxWidth,
                        height: constraints.maxHeight / 3,
                      ),
                      const Text(
                        "यदि यह डेटा आपके मृदा स्वास्थ्य कार्ड डेटा से मेल नहीं खा रहा है, तो कृपया मैन्युअल इनपुट का उपयोग करें |",
                        style: TextStyle(color: Colors.red, fontSize: 15),
                      ),
                      Table(
                        border: TableBorder.all(
                            color: Colors.black,
                            style: BorderStyle.solid,
                            width: 2),
                        children: [
                          const TableRow(children: [
                            Column(
                              children: [
                                Text(
                                  "Chemical (रसायन)",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  "Quantity Present (उपलब्ध मात्रा)",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20),
                                )
                              ],
                            ),
                          ]),
                          //!
                          TableRow(children: [
                            const Column(
                              children: [
                                Text(
                                  "pH (पीएच)",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 10),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  "$phfromCard",
                                  style: const TextStyle(
                                      color: Colors.black, fontSize: 10),
                                )
                              ],
                            ),
                          ]),
                          //!
                          TableRow(children: [
                            const Column(
                              children: [
                                Text(
                                  "N (Nitrogen)\nनाइट्रोजन",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 10),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  "$nitrogenfromCard",
                                  style: const TextStyle(
                                      color: Colors.black, fontSize: 10),
                                )
                              ],
                            ),
                          ]),
                          //!
                          TableRow(children: [
                            const Column(
                              children: [
                                Text(
                                  "P(Phosphorus)\nफास्फोरस",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 10),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  "$phosphorusfromCard",
                                  style: const TextStyle(
                                      color: Colors.black, fontSize: 10),
                                )
                              ],
                            ),
                          ]),
                          //!
                          TableRow(children: [
                            const Column(
                              children: [
                                Text(
                                  "K(Potassium)\nपोटैशियम",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 10),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  "$potassiumfromCard",
                                  style: const TextStyle(
                                      color: Colors.black, fontSize: 10),
                                )
                              ],
                            ),
                          ]),
                          //!
                          TableRow(children: [
                            const Column(
                              children: [
                                Text(
                                  "S(Sulphur)\nसल्फर",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 10),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  "$sulphurfromCard",
                                  style: const TextStyle(
                                      color: Colors.black, fontSize: 10),
                                )
                              ],
                            ),
                          ]),
                          //!
                          TableRow(children: [
                            const Column(
                              children: [
                                Text(
                                  "Z(Zinc)\nज़िंक",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 10),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  "$zincfromCard",
                                  style: const TextStyle(
                                      color: Colors.black, fontSize: 10),
                                )
                              ],
                            ),
                          ]),
                          //!
                          TableRow(children: [
                            const Column(
                              children: [
                                Text(
                                  "B(Boron)\nबोरोन",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 10),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  "$boronfromCard",
                                  style: const TextStyle(
                                      color: Colors.black, fontSize: 10),
                                )
                              ],
                            ),
                          ]),
                          //!
                          TableRow(children: [
                            const Column(
                              children: [
                                Text(
                                  "Fe(Iron)\n",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 10),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  "$ironfromCard",
                                  style: const TextStyle(
                                      color: Colors.black, fontSize: 10),
                                )
                              ],
                            ),
                          ]),
                          //!
                          TableRow(children: [
                            const Column(
                              children: [
                                Text(
                                  "Mn(Manganese)\nमैंगनीज",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 10),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  "$manganesefromCard",
                                  style: const TextStyle(
                                      color: Colors.black, fontSize: 10),
                                )
                              ],
                            ),
                          ]),
                          //!
                          TableRow(children: [
                            const Column(
                              children: [
                                Text(
                                  "Cu(Copper\n",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 10),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  "$copperfromCard",
                                  style: const TextStyle(
                                      color: Colors.black, fontSize: 10),
                                )
                              ],
                            ),
                          ]),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),

                      ElevatedButton(
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.greenAccent)),
                          onPressed: () {
                            List resultList = resultOut(
                                boronInput: boronfromCard,
                                ironInput: ironfromCard,
                                nitrogenInput: nitrogenfromCard,
                                zincInput: zincfromCard,
                                sulphurInput: sulphurfromCard,
                                phInput: phfromCard,
                                phosInput: phosphorusfromCard,
                                potasInput: potassiumfromCard);
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Preferences(
                                  resultList: resultList,
                                ),
                              ),
                            );
                          },
                          child: const Text(
                            "आगे बढ़ें",
                            style: TextStyle(fontSize: 30, color: Colors.black),
                          ))

                      // Text("$copperfromCard"),
                    ],
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
