import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class StorageScreen extends StatefulWidget {
  const StorageScreen({super.key});

  @override
  State<StorageScreen> createState() => _StorageScreenState();
}

class _StorageScreenState extends State<StorageScreen> {
  XFile? image;
  String? linkImage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: linkImage == null
            ? InkWell(
                onTap: () async {
                  image =
                      await ImagePicker().pickImage(source: ImageSource.camera);
                  var ref = FirebaseStorage.instance.ref();
                  var child = ref.child(
                      '/image/${image!.name}'); //عملت فولدر اسمه image وعرفته اسم الفايل
                  try {
                    await child.putFile(File(image!.path));
                    linkImage =
                        await child.getDownloadURL(); //لينك تحميل الصوره
                  } catch (e) {
                    print(e.toString());
                  }
                  //.snapshotEvents// تحميل الصورة
                  // .listen((e) {
                  //   //حالة التحميل (ممكن اعرض حاجات هنا)

                  // });
                  setState(() {});
                },
                child: CircleAvatar(
                  radius: 50,
                ))
            : CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage(linkImage ?? ''),
              ),
      ),
    );
  }
}
