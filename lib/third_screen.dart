

import 'package:flutter/material.dart';
import 'slider2.dart';

void main()=> runApp(MaterialApp(
    home:Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text('City Details',
              style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  fontFamily: 'Poppins')
          ),
          centerTitle:true,
          backgroundColor: Color(0xFF1E2831),
          leading: Icon(Icons.arrow_back, color: Colors.white, size: 42.0),
        ),
        body: Column(
            children:[
              Container(
                  height: 60,
                  width: 600,
                  decoration:  const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40)),
                      color: Color(0xFF1E2831)),
                  child: Text('New York',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFFFFFFF),
                          fontFamily: 'ZenAntique'))),
              Container(
                  height: 600,
                  child: const CarouselSlider()
              )
            ]
        )
    )));