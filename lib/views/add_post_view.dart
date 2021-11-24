import 'dart:io';

import 'package:dev_gram/models/post.dart';
import 'package:dev_gram/services/auth.dart';
import 'package:dev_gram/services/firestore_services.dart';
import 'package:dev_gram/services/firebase_storage_services.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:uuid/uuid.dart';

class AddPostView extends StatefulWidget {
  const AddPostView({Key? key}) : super(key: key);

  @override
  _AddPostViewState createState() => _AddPostViewState();
}

class _AddPostViewState extends State<AddPostView> {
  //late File image;
  File? image;
  String comment = "";

  void initState() {
    pickImage();
    super.initState();
  }

  pickImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? pickedImage =
        await _picker.pickImage(source: ImageSource.gallery);
    image = File(pickedImage!.path);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: Text('Add new Post'),
        actionsIconTheme: IconThemeData(color: Colors.black),
      ),
      body: image != null
          ? SafeArea(
              child: Container(
                clipBehavior: Clip.hardEdge,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black38,
                          blurRadius: 5,
                          spreadRadius: 5),
                    ],
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 2.5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                          image: FileImage(image!),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: TextField(
                        onChanged: (value) => comment = value,
                        maxLines: 5,
                        decoration: InputDecoration(
                          hintText: 'Write your Comment',
                          fillColor: Colors.transparent,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () async {
                        Post post = Post(
                            userId: AuthService.getUser().uid,
                            comment: comment,
                            id: Uuid().v1(),
                            imageUrl: '');
                        post.imageUrl =
                            await FirebaseStorageServices.uploadPost(
                                image!, post.id);
                        await FirestoreServices.addPost(post);
                        print("Done!!!");
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 40,
                        margin: EdgeInsets.all(20),
                        alignment: Alignment.center,
                        child: Text('Upload',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700)),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    )
                  ],
                ),
              ),
            )
          : SizedBox(),
    );
  }
}
