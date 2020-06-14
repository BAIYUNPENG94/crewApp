import 'package:crewapp/screens/authenticate/authenticate.dart';
import 'package:crewapp/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:crewapp/models/user.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    print(user);

    //return home or authenticate widget.
    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
