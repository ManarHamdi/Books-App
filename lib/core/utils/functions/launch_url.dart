import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> customLuanchUrl (context,String? url)async {
  if(url!= null) {
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      launchUrl(uri);
    }
    else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text("Cannot launch $uri") ));
    }
  }
}

