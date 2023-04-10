import 'package:flutter/material.dart';

class NewMemberSecond extends StatelessWidget {
  const NewMemberSecond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios_new_rounded, color: Colors.red,),
      ),
    );
  }
}
