import 'package:green/model/activity_model.dart';
import 'package:green/model/destination_model.dart';

List<Activity> activitiesList = [
  Activity(
    documentID: 'something',
    name: 'Mulu Caves',
    description: 'description', 
    location: 'mulu caves', 
    price: 30, 
    type: 'Trekking',
    sustainabilityImpact: '20 Green Points', 
    availability: ['available'],
    date: '6/4/2024',
    ticketPrices: '6 & Below: No Charge Student (7 to 17):  MYR 5.00 Adult (18 - 59): MYR 10.00 Senior (60 & Above):  MYR 5.00',
    image: 'lib/assets/images/mulu_caves.png'
    ),

  Activity(
    documentID: 'something2', 
    name: 'Niah Caves', 
    description: 'description', 
    location: 'niah caves', 
    price: 16, 
    type: 'Trekking', 
    sustainabilityImpact: '20 Green Points', 
    availability: ['available'], 
    date: '7/4/2024',
    ticketPrices: '6 & Below: No Charge Child (7 to 18):  MYR 5.00 Adult (19 - 55): MYR 15.00 Senior (56 & Above):  MYR 7.00',
    image: 'lib/assets/images/niah_caves.png',
    ), 
  ];


  List<ActivityDetail> activityDetailList = [
  ActivityDetail(
    destinationName: 'Mount Kinabalu',
    title: 'Kinabalu Park',
    backgroundImage: 'lib/assets/images/kinabalupark.png',
    location: 'Sabah',
    price: 200.0,
    description:
        "Kinabalu Park, the World Heritage Site covers an area of 754 sq km was gazetted as a park in 1964.The basis for the establishment of a protected area in Kinabalu were formed after a report from the Royal Society Kinabalu Scientific expedition in 1962-1964 led by Prof. Corner. It is the first Park in the Malaysian Borneo's state of Sabah.",
    photos: [
      'lib/assets/images/kinabalupark.png',
      'lib/assets/images/kinabalupark.png'
    ],
  ),
  ActivityDetail(
    destinationName: 'Mount Kinabalu',
    title: 'Kinabalu Park',
    backgroundImage: 'lib/assets/images/kinabalupark.png',
    location: 'Sabah',
    price: 200.0,
    description:
        "Kinabalu Park, the World Heritage Site covers an area of 754 sq km was gazetted as a park in 1964.The basis for the establishment of a protected area in Kinabalu were formed after a report from the Royal Society Kinabalu Scientific expedition in 1962-1964 led by Prof. Corner. It is the first Park in the Malaysian Borneo's state of Sabah.",
    photos: [
      'lib/assets/images/kinabalupark.png',
      'lib/assets/images/kinabalupark.png'
    ],
  ),
  ActivityDetail(
    destinationName: 'Mount Kinabalu',
    title: 'Kinabalu Park',
    backgroundImage: 'lib/assets/images/kinabalupark.png',
    location: 'Sabah',
    price: 200.0,
    description:
        "Kinabalu Park, the World Heritage Site covers an area of 754 sq km was gazetted as a park in 1964.The basis for the establishment of a protected area in Kinabalu were formed after a report from the Royal Society Kinabalu Scientific expedition in 1962-1964 led by Prof. Corner. It is the first Park in the Malaysian Borneo's state of Sabah.",
    photos: [
      'lib/assets/images/kinabalupark.png',
      'lib/assets/images/kinabalupark.png'
    ],
  ),
];

  