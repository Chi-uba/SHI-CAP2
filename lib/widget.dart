import 'package:flutter/material.dart';

Widget customTextField(
    {required String textFiieldName, required BuildContext context}) {
  return SizedBox(
    height: 60,
    width: MediaQuery.of(context).size.width,
    child: Card(
      color: Colors.white,
      elevation: 5,
      shadowColor: Colors.black,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
              hintText: textFiieldName,
              hintStyle: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 18)),
        ),
      ),
    ),
  );
}

Widget customButton(
    {required String buttonText, required BuildContext context, Function? onSubmit }) {
  return Container(
    height: 60,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.purple[900]
    ),
    child: MaterialButton(
        onPressed: () {
          onSubmit!();
        },
        child: Center(
          child: Text(
            buttonText,
            style: const TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold ),
          ),
        )),
  );
}


