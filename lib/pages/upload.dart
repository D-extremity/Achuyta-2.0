// import 'package:acyuta/pages/manualinput.dart';
import 'dart:typed_data';

import 'package:acyuta/getimage/getimage.dart';
import 'package:acyuta/pages/manualinput.dart';
import 'package:acyuta/pages/shcdetail.dart';
// import 'package:acyuta/textrecog/textrecog.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Upload extends StatefulWidget {
  const Upload({super.key});

  @override
  State<Upload> createState() => _UploadState();
}

late Uint8List uploadedimage;
bool found = false;
const titleStyle =
    TextStyle(fontWeight: FontWeight.w600, color: Colors.black, fontSize: 20);

class _UploadState extends State<Upload> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 68, 121, 96),
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black,
        ),
        backgroundColor: Colors.greenAccent,
        title: const Text(
          "अच्युता",
          style: TextStyle(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.w500),
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      backgroundColor: Colors.greenAccent,
                      icon: Image.asset("assets/infor.jpg"),
                      title: const Text(
                        "मृदा स्वास्थ्य कार्ड अपलोड करने के लिए कृपया एक विकल्प चुनें ",
                        style: TextStyle(color: Colors.black),
                      ),
                      content: const Text(
                        "कृपया सुनिश्चित करें कि आपके द्वारा अपलोड किया गया फोटो ठीक से ज़ूम या क्रॉप किया जाना चाहिए ताकि केवल ये मान चित्र में हों या कम से कम मानों के बाईं ओर कुछ भी नहीं होना चाहिए|\nPlease make ensure the photo you upload should be zoomed or cropped properly so that only these values should be in the picture or atleast nothing should be on left side of the values.",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.w600),
                      ),
                      actions: [
                        IconButton(
                            //!
                            onPressed: () async {
                              final image = await pickImage(ImageSource.camera);
                              if (image == null) {
                                // ignore: use_build_context_synchronously
                                ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text(
                                            "No image found (कोई चित्र नहीं मिला)")));
                              }

                              setState(() {
                                uploadedimage = image;
                                found = true;
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const ShcDetail()));
                              });
                            },
                            icon: const Icon(
                              Icons.camera_alt_outlined,
                              size: 50,
                              color: Colors.black,
                            )),
                        const SizedBox(
                          height: 20,
                        ),
                        //!
                        IconButton(
                            onPressed: () async {
                              final image =
                                  await pickImage(ImageSource.gallery);
                              if (image == null) {
                                // ignore: use_build_context_synchronously
                                ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text(
                                            "No image found (कोई चित्र नहीं मिला)")));
                              }

                              setState(() {
                                uploadedimage = image;
                                found = true;
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const ShcDetail()));
                              });
                            },
                            icon: const Icon(
                              Icons.file_copy_outlined,
                              size: 50,
                              color: Colors.black,
                            )),
                        const SizedBox(
                          height: 20,
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text(
                              "रद्द करें",
                              style: TextStyle(color: Colors.red),
                            )),
                      ],
                    );
                  },
                );
              },
              child: Image.asset("assets/uploadimage.png")),
          const SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    backgroundColor: Colors.greenAccent,
                    icon: Image.asset("assets/infor.jpg"),
                    title: const Text(
                      "मृदा स्वास्थ्य कार्ड अपलोड करने के लिए कृपया एक विकल्प चुनें",
                      style: TextStyle(color: Colors.black),
                    ),
                    content: const Text(
                      " कृपया सुनिश्चित करें कि आपके द्वारा अपलोड किया गया फोटो ठीक से ज़ूम या क्रॉप किया जाना चाहिए ताकि केवल ये मान चित्र में हों या कम से कम मानों के बाईं ओर कुछ भी नहीं होना चाहिए|\nPlease make ensure the photo you upload should be zoomed or cropped properly so that only these values should be in the picture or atleast nothing should be on left side of the values.",
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.w600),
                    ),
                    actions: [
                      IconButton(
                          //!
                          onPressed: () async {
                            final image = await pickImage(ImageSource.camera);
                            if (image == null) {
                              // ignore: use_build_context_synchronously
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text(
                                          "No image found (कोई चित्र नहीं मिला)")));
                            }

                            setState(() {
                              uploadedimage = image;
                              found = true;
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const ShcDetail()));
                            });
                          },
                          icon: const Icon(
                            Icons.camera_alt_outlined,
                            size: 50,
                            color: Colors.black,
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      //!
                      IconButton(
                          onPressed: () async {
                            final image = await pickImage(ImageSource.gallery);
                            if (image == null) {
                              // ignore: use_build_context_synchronously
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text(
                                          "No image found (कोई चित्र नहीं मिला)")));
                            }

                            setState(() {
                              uploadedimage = image;
                              found = true;
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const ShcDetail()));
                            });
                          },
                          icon: const Icon(
                            Icons.file_copy_outlined,
                            size: 50,
                            color: Colors.black,
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text(
                            "रद्द करें",
                            style: TextStyle(color: Colors.red),
                          )),
                    ],
                  );
                },
              );
            },
            child: const Card(
              color: Colors.greenAccent,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Upload Your Soil Health Card",
                      style: titleStyle,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "अपना मृदा स्वास्थ्य कार्ड अपलोड करें",
                      style: titleStyle,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ManualInput(),
                ),
              );
            },
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Card(
                elevation: 5,
                color: Colors.greenAccent,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Upload Soil Health Card Manually ",
                        style: titleStyle,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "अपना मृदा स्वास्थ्य कार्ड लिखकर अपलोड करें",
                        style: titleStyle,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
