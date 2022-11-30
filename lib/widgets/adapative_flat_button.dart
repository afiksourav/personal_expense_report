import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io' show Platform;
import 'package:intl/intl.dart';
import 'new_transaction.dart';

class AdaptiveFlatButton extends StatelessWidget {
  const AdaptiveFlatButton({super.key, required this.text, required this.handler});
  
  final String text;
  final  VoidCallback handler;
 

  @override
  Widget build(BuildContext context) {
    return  Platform.isIOS
                        ? CupertinoButton(
                          color: Colors.blue,
                            onPressed: handler,
                            child:  Text(
                              text,
                              style: TextStyle(
                                color: Color.fromARGB(255, 167, 22, 212),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        : TextButton(
                            onPressed: handler,
                            child:  Text(
                              text,
                              style: TextStyle(
                                color: Color.fromARGB(255, 167, 22, 212),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          );
  }
}