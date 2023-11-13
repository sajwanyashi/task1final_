import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'list2.dart';

void main() => runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text('Country Details',
              style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  fontFamily: 'Poppins')),
          centerTitle: true,
          backgroundColor: Color(0xFF1E2831),
          leading: Icon(Icons.arrow_back, color: Colors.white, size: 42.0),
        ),
        body: Stack(
          children: [
            Container(color: Colors.white),
            Container(
                height: 200,
                width: 600,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40)),
                    color: Color(0xFF1E2831)),
                child: Text('India',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFFFFFF),
                        fontFamily: 'ZenAntique'))),
            Positioned(
                top: 60,
                left: 25,
                child: Image.asset('assets/images/ticketBackground.png',
                    scale: 1.2)),
            Positioned(
                top: 260,
                child: Padding(
                    padding: EdgeInsets.all(15),
                    //apply padding to all four sides
                    child: Row(children: [
                      Text('Code    ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF1E2831),
                              fontFamily: 'Poppins')),
                      Text('Capital                      ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF1E2831),
                              fontFamily: 'Poppins')),
                      Text('ISD',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF1E2831),
                              fontFamily: 'Poppins'))
                    ]))),
            Positioned(
                top: 300,
                child: Padding(
                    padding: EdgeInsets.all(15),
                    //apply padding to all four sides
                    child: Row(children: [
                      Text('IN    ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF1E2831),
                              fontFamily: 'Poppins')),
                      Text('NewDelhi                      ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF1E2831),
                              fontFamily: 'Poppins')),
                      Text('+91',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF1E2831),
                              fontFamily: 'Poppins'))
                    ]))),
            Positioned(
                top: 350,
                left: 80,
                child: Container(
                    height: 70,
                    width: 200,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(40),
                            bottomRight: Radius.circular(40),
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40)),
                        color: Color(0xFF1E2831)),
                    child: Row(children: [
                      Text('        Wikipedia',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFFFFFFF),
                              fontFamily: 'ZenAntique')),
                    ]))),
            Positioned(
                top: 400,
                left: 70,
                child: Container(
                    height: 40,
                    child: TextField(
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 15.0),
                            hintText: "Search City",
                            suffixIcon: const Icon(Icons.search),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              borderSide: const BorderSide(),
                            ))))),
            Positioned(
              top: 300,
              left: 70,
              child: Container(height: 100, child: List()),
            )
          ],
        ))));