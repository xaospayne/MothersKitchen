import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UserDishImage extends StatefulWidget {
  @override
  _UserDishImageState createState() => _UserDishImageState();
}

class _UserDishImageState extends State<UserDishImage> {

File _pickedImage;
  void _pickImage()async{
    final picker = ImagePicker();
    final pickedImage = await picker.getImage(source: ImageSource.gallery);
    final pickedImageFile = File(pickedImage.path);
    setState(() {
    _pickedImage = pickedImageFile;
  });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        InkWell(
          onTap: _pickImage,
          child: CircleAvatar(
            backgroundColor: Colors.grey,
            backgroundImage: _pickedImage!= null ? FileImage(_pickedImage): null,
            radius: 100,
            ),
          ),
      ],
    );
  }
}
