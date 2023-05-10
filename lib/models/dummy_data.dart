import 'package:profile_test/models/models.dart';
import 'package:profile_test/resources/resources.dart';
import 'package:profile_test/resources/strings.dart';

final dummyProfile = ProfileModel(
    fullName: 'Samuel Dominic',
    occupation: 'Fashion Designer, Male',
    rating: 5.0,
    location: 'Lagos, Nigeria.',
    phone: '+234 813 970 3721',
    email: 'samdee@gmail.com',
    experience: 'Expert',
    joinDate: '19th August, 2021',
    completedJobs: 300,
    lastSeen: '4 Hours Ago',
    summary: kLongText,
    workExperienceModel: [
      WorkExperienceModel(
          role: 'CEO/ Founder',
          name: 'Samdom Fashion House',
          date: 'June 2018- Present'),
      WorkExperienceModel(
          role: 'Tailoring Apprentice',
          name: 'Maydan Tailoring House',
          date: 'June 2011- May 2018')
    ],
    skillsList: [
      'Fitting',
      'Sewing',
      'Measurement Taking',
      'Amendment'
    ],
    jobPortfolioList: [
      JobPortfolio(image: image1PNG, name: 'Jumpsuit Dress'),
      JobPortfolio(image: image2PNG, name: 'Ankara Gown'),
      JobPortfolio(image: image3PNG, name: '3- Piece Suit')
    ],
    ratingsAndReviewsList: [
      RatingsAndReview(
          name: 'Allen Daniels',
          picture: avatarPNG,
          rating: 5.0,
          time: '17 Hours Ago',
          description: kLongText)
    ]);
