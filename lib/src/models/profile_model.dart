import 'dart:convert';

import 'package:portfolio_core_data/portfolio_core_data.dart';

class ProfileData extends Model {
  final String name;
  final String title;
  final String tagline;
  final String resumeUrl;
  final String email;
  final Map<String, String> socialLinks;

  ProfileData({
    required this.name,
    required this.title,
    required this.tagline,
    required this.resumeUrl,
    required this.email,
    required this.socialLinks,
  });

  // Assuming your profile endpoint returns data matching this structure
  factory ProfileData.fromJson(Map<String, dynamic> json) {
    return ProfileData(
      name: json['name'] ?? 'Your Name',
      title: json['title'] ?? 'Your Title',
      tagline: json['tagline'] ?? 'Your Tagline',
      resumeUrl: json['resumeUrl'] ?? '',
      email: json['email'] ?? '',
      socialLinks: Map<String, String>.from(json['socialLinks'] ?? {}),
    );
  }

  @override
  String toJson() {
    return jsonEncode(toMap());
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'title': title,
      'tagline': tagline,
      'resumeUrl': resumeUrl,
      'email': email,
      'socialLinks': socialLinks
    };
  }
}
