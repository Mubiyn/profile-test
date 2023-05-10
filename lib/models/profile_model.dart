// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:profile_test/models/models.dart';

class ProfileModel {
  final String fullName;
  final String occupation;
  final double rating;
  final String location;
  final String phone;
  final String email;
  final String experience;
  final String joinDate;
  final int completedJobs;
  final String lastSeen;
  final String summary;
  final List<WorkExperienceModel> workExperienceModel;
  final List<String> skillsList;
  final List<JobPortfolio> jobPortfolioList;
  final List<RatingsAndReview> ratingsAndReviewsList;
  ProfileModel({
    required this.fullName,
    required this.occupation,
    required this.rating,
    required this.location,
    required this.phone,
    required this.email,
    required this.experience,
    required this.joinDate,
    required this.completedJobs,
    required this.lastSeen,
    required this.summary,
    required this.workExperienceModel,
    required this.skillsList,
    required this.jobPortfolioList,
    required this.ratingsAndReviewsList,
  });

  ProfileModel copyWith({
    String? fullName,
    String? occupation,
    double? rating,
    String? location,
    String? phone,
    String? email,
    String? experience,
    String? joinDate,
    int? completedJobs,
    String? lastSeen,
    String? summary,
    List<WorkExperienceModel>? workExperienceModel,
    List<String>? skillsList,
    List<JobPortfolio>? jobPortfolioList,
    List<RatingsAndReview>? ratingsAndReviewsList,
  }) {
    return ProfileModel(
      fullName: fullName ?? this.fullName,
      occupation: occupation ?? this.occupation,
      rating: rating ?? this.rating,
      location: location ?? this.location,
      phone: phone ?? this.phone,
      email: email ?? this.email,
      experience: experience ?? this.experience,
      joinDate: joinDate ?? this.joinDate,
      completedJobs: completedJobs ?? this.completedJobs,
      lastSeen: lastSeen ?? this.lastSeen,
      summary: summary ?? this.summary,
      workExperienceModel: workExperienceModel ?? this.workExperienceModel,
      skillsList: skillsList ?? this.skillsList,
      jobPortfolioList: jobPortfolioList ?? this.jobPortfolioList,
      ratingsAndReviewsList:
          ratingsAndReviewsList ?? this.ratingsAndReviewsList,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fullName': fullName,
      'occupation': occupation,
      'rating': rating,
      'location': location,
      'phone': phone,
      'email': email,
      'experience': experience,
      'joinDate': joinDate,
      'completedJobs': completedJobs,
      'lastSeen': lastSeen,
      'summary': summary,
      'workExperienceModel': workExperienceModel.map((x) => x.toMap()).toList(),
      'skillsList': skillsList,
      'jobPortfolioList': jobPortfolioList.map((x) => x.toMap()).toList(),
      'ratingsAndReviewsList':
          ratingsAndReviewsList.map((x) => x.toMap()).toList(),
    };
  }

  factory ProfileModel.fromMap(Map<String, dynamic> map) {
    return ProfileModel(
        fullName: map['fullName'] as String,
        occupation: map['occupation'] as String,
        rating: map['rating'] as double,
        location: map['location'] as String,
        phone: map['phone'] as String,
        email: map['email'] as String,
        experience: map['experience'] as String,
        joinDate: map['joinDate'] as String,
        completedJobs: map['completedJobs'] as int,
        lastSeen: map['lastSeen'] as String,
        summary: map['summary'] as String,
        ratingsAndReviewsList: List<RatingsAndReview>.from(
          (map['ratingsAndReviewsList'] as List<int>).map<RatingsAndReview>(
            (x) => RatingsAndReview.fromMap(x as Map<String, dynamic>),
          ),
        ),
        jobPortfolioList: List<JobPortfolio>.from(
          (map['jobPortfolioList'] as List<int>).map<JobPortfolio>(
            (x) => JobPortfolio.fromMap(x as Map<String, dynamic>),
          ),
        ),
        workExperienceModel: List<WorkExperienceModel>.from(
          (map['workExperienceModel'] as List<int>).map<WorkExperienceModel>(
            (x) => WorkExperienceModel.fromMap(x as Map<String, dynamic>),
          ),
        ),
        skillsList: List<String>.from(
          (map['skillsList'] as List<String>),
        ));
  }

  String toJson() => json.encode(toMap());

  factory ProfileModel.fromJson(String source) =>
      ProfileModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ProfileModel(fullName: $fullName, occupation: $occupation, rating: $rating, location: $location, phone: $phone, email: $email, experience: $experience, joinDate: $joinDate, completedJobs: $completedJobs, lastSeen: $lastSeen, summary: $summary, workExperienceModel: $workExperienceModel, skillsList: $skillsList, jobPortfolioList: $jobPortfolioList, ratingsAndReviewsList: $ratingsAndReviewsList)';
  }

  @override
  bool operator ==(covariant ProfileModel other) {
    if (identical(this, other)) return true;

    return other.fullName == fullName &&
        other.occupation == occupation &&
        other.rating == rating &&
        other.location == location &&
        other.phone == phone &&
        other.email == email &&
        other.experience == experience &&
        other.joinDate == joinDate &&
        other.completedJobs == completedJobs &&
        other.lastSeen == lastSeen &&
        other.summary == summary &&
        listEquals(other.workExperienceModel, workExperienceModel) &&
        listEquals(other.skillsList, skillsList) &&
        listEquals(other.jobPortfolioList, jobPortfolioList) &&
        listEquals(other.ratingsAndReviewsList, ratingsAndReviewsList);
  }

  @override
  int get hashCode {
    return fullName.hashCode ^
        occupation.hashCode ^
        rating.hashCode ^
        location.hashCode ^
        phone.hashCode ^
        email.hashCode ^
        experience.hashCode ^
        joinDate.hashCode ^
        completedJobs.hashCode ^
        lastSeen.hashCode ^
        summary.hashCode ^
        workExperienceModel.hashCode ^
        skillsList.hashCode ^
        jobPortfolioList.hashCode ^
        ratingsAndReviewsList.hashCode;
  }
}
