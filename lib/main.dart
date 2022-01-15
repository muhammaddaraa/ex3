//-----------------------------------------------------------------------------------------------------------------------------
//? Fill in the following information
//
// SCSJ3623 Mobile Application Programming
// Exercise 3 - HTTP and JSON
//
// Pair Programming
// Member 1's Name: Mohmammed Dara    Matric:Qu-180149       Location: Sulaymaniyah (i.e. where are you currently located)
// Member 2's Name: Hassan Ali    Matric:QU-180098       Location: Sulaymaniyah
// Date and time (s):   22:35, 15-01-2022   (Date and time you conducted the pair programming sessions)
//-----------------------------------------------------------------------------------------------------------------------------
//? This file is fully given.

import 'package:flutter/material.dart';

import 'router.dart';

void main() => runApp(
      MaterialApp(
        title: 'MAP Exercise 3',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.green),
        initialRoute: '/',
        onGenerateRoute: createRoute,
      ),
    );
