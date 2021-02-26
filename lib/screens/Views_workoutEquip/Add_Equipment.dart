import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:orange_fitness/screens/services/crud.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:async';
import 'dart:io';

class Add_Equipments extends StatefulWidget {
  @override
  _Add_EquipmentsState createState() => _Add_EquipmentsState();
}

class _Add_EquipmentsState extends State<Add_Equipments> {
  String title, description;
  File selectedImage;
  bool _isloading = false;
  CrudMethods crudMethods = new CrudMethods();

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      selectedImage = image;
    });
  }

  uploadEquipment() async {
    if (selectedImage != null) {
      setState(() {
        _isloading = true;
      });
// uploading image to firebase storage
      FirebaseStorage storage = FirebaseStorage.instance;
      Reference ref = storage.ref().child("image1" + DateTime.now().toString());
      UploadTask uploadTask = ref.putFile(selectedImage);
      uploadTask.then((res) {
        res.ref.getDownloadURL();
        print('this is url $res');
      });
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Workout',
              style: TextStyle(
                  color: Colors.deepOrangeAccent.shade100, fontSize: 22),
            ),
            Text('Equipments',
                style: TextStyle(color: Colors.blue[800], fontSize: 22))
          ],
        ),
        backgroundColor: Colors.black,
        elevation: 0.0,
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              uploadEquipment();
            },
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Icon(Icons.file_upload)),
          )
        ],
      ),
      body: _isloading
          ? Container(
              alignment: Alignment.center,
              child: CircularProgressIndicator(),
            )
          : Container(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      getImage();
                    },
                    child: selectedImage != null
                        ? Container(
                            margin: EdgeInsets.symmetric(horizontal: 16),
                            height: 150,
                            child: Image.file(selectedImage),
                            width: MediaQuery.of(context).size.width,
                          )
                        : Container(
                            margin: EdgeInsets.symmetric(horizontal: 16),
                            height: 150,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(6)),
                            width: MediaQuery.of(context).size.width,
                            child: Icon(
                              Icons.add_a_photo,
                              color: Colors.black45,
                            ),
                          ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: <Widget>[
                        TextField(
                          decoration: InputDecoration(hintText: 'title '),
                          onChanged: (val) {
                            title = val;
                          },
                        ),
                        TextField(
                          decoration: InputDecoration(hintText: 'Descrption'),
                          onChanged: (val) {
                            description = val;
                          },
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
    );
  }
}
