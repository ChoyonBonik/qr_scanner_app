import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:qr_scanner_app/ui/style.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String data = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 20,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: QrImage(
                    data: data,
                    backgroundColor: Colors.white,
                    size: 300.0,
                    version: QrVersions.auto,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  width: 300.0,
                  child: TextField(
                    onChanged: (value){
                      setState(() {
                        data = value;
                      });
                    },
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      hintText: "Type the Data",
                      filled: true,
                      fillColor: AppStyle.textInputColor,
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              child: Center(child: Text('@ https://github.com/ChoyonBonik', style: TextStyle(
                color: Colors.white60,
              ),)),
            ),
          ),
        ],
      ),
    );
  }
}