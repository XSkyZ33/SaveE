import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:savee/config/Pallete.dart';
import 'package:share_plus/share_plus.dart';

class Info extends StatefulWidget {
  const Info({Key? key}) : super(key: key);

  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> {
  File? file;
  List<String> images = [];
  ImagePicker image = ImagePicker();
  final TextEditingController textController = new TextEditingController();
  getImage() async {
    var img = await image.pickImage(source: ImageSource.gallery);
    setState(() {
      file = File(img!.path);
      images.add(img.path);
    });
  }

  void share(BuildContext context) async {
    if (file != null) {
      await Share.shareFiles(
        images,
        text: textController.text,
      );
    } else {
      await Share.share(
        textController.text,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Info'),
          centerTitle: true,
          backgroundColor: Pallette.kToDark,
        ),
        resizeToAvoidBottomInset: false,
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
                  height: 300,
                  width: 300,
                  color: Colors.black12,
                  child: file == null
                      ? IconButton(
                    onPressed: () {
                      getImage();
                    },
                    icon: const Icon(
                      Icons.add,
                    ),
                  )
                      : Image.file(
                    file!,
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: TextFormField(
                    controller: textController,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Text',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                MaterialButton(
                  onPressed: () {
                    share(context);
                  },
                  color: Pallette.kToDark,
                  child: const Text(
                    'Share',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
              ],
            ),
          ),
    );
  }
}