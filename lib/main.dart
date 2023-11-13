import 'package:flutter/material.dart';
import 'package:untitled/second_screen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'slider.dart';
import 'listview.dart';


void main() => runApp(MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              elevation: 0,
              title: const Text('HOME',
                  style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF1E2831),
                      fontFamily: 'Poppins')),
              centerTitle: true,
              backgroundColor: Colors.white,
              leading: const Icon(Icons.account_circle_outlined,
                  color: Color(0xFF376CD6), size: 42.0),
              actions: [
                IconButton(
                    onPressed: () => {},
                    icon: const Icon(Icons.star,
                        color: Color(0xFF376CD6), size: 42.0))
              ],
            ),
            body: SingleChildScrollView(
              child: Card(
                  child: Column(
                children: [
                  Container(
                    height: 30,
                    color: Colors.white,
                    child: const Center(
                        child: Text('Welcome!',
                            style: TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF1E2831),
                                fontFamily: 'Poppins'))),
                  ),
                  Container(
                    height: 260,
                    child: const MyCarouselSlider(),
                  ),
                  Align(
                      alignment: FractionalOffset.topLeft,
                      child: Container(
                          alignment: Alignment.center,
                          height: 200,
                          width: 350,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(40),
                                bottomRight: Radius.circular(40)),
                            color: Color(0xFF02021E),
                          ),
                          child: Image.asset('assets/images/image 4.png'))),

                  Container(
                      height: 40,
                      child: TextField(
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 15.0),
                              hintText: "Search Country",
                              suffixIcon: const Icon(Icons.search),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                borderSide: const BorderSide(),
                              )))),
                  Container(height: 100, child: ListViewBuilder()),
                ],
              )),
            ))));
