import 'package:flutter/material.dart';
import 'package:google_clone/presentation/pages/homepage.dart';

var onGenerate = (RouteSettings settings) {
  if (settings.name == '/') {
    return MaterialPageRoute(builder: (builder) => const Homepage());
  }
 
};
