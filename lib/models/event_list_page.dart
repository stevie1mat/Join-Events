import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

Future<List<Event>> fetchEvents(http.Client client) async {
  final response =
      await client.get(Uri.parse('https://cogypecwr.com/app/joinevents.json'));

  // Use the compute function to run parsePhotos in a separate isolate.
  return compute(parseEvents, response.body);
}

// A function that converts a response body into a List<Photo>.
List<Event> parseEvents(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

  return parsed.map<Event>((json) => Event.fromJson(json)).toList();
}

class Event {
  final String name;
  final String month;
  final String date;
  final String url;
  final String color;

  const Event(
      {required this.name,
      required this.month,
      required this.date,
      required this.color,
      required this.url});

  factory Event.fromJson(Map<String, dynamic> json) {
    return Event(
      name: json['name'] as String,
      month: json['month'] as String,
      color: json['color'] as String,
      date: json['date'] as String,
      url: json['url'] as String,
    );
  }
}
