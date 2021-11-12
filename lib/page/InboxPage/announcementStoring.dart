import 'package:flutter/material.dart';
import 'dart:core';
import 'package:cloud_firestore/cloud_firestore.dart';

List<store> displayAnnounce = [];


 // gets the collection named "dates" and returns as a snapshot
  final querySnapshot = FirebaseFirestore.instance.collection('monkey').get();

Future<void> filllist() async{

  final querySnapshot =
      await FirebaseFirestore.instance.collection('monkey').get();

    for (var doc in querySnapshot.docs) {
    displayAnnounce.add(store(
      announcement: doc["announcement"],
      displayDate: doc["displayDate"],
      stamp: doc["timeStamp"],
    ));

    displayAnnounce.sort();

  }

  // displayAnnounce.add("Announce 1");
  // displayAnnounce.add("Announce 2");
  // displayAnnounce.add("Announce 3");
  // displayAnnounce.add("Announce 4");
  // displayAnnounce.add("Announce 5");
  // displayAnnounce.add("Announce 6");
  // displayAnnounce.add("Announce 7");
}

class store implements Comparable<store> {
  late int stamp;
  late String displayDate;
  late String announcement;

  store({
    this.stamp = 0,
    this.displayDate = "displayDate",
    this.announcement = "announcement",
  });

  @override
  int compareTo(store other) {
    return other.stamp - stamp;
  }
}