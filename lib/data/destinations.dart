import 'package:green/model/acommodation_model.dart';
import 'package:green/model/destination_model.dart';
import 'package:green/model/flight_detail_model.dart';
import 'package:green/model/tour_detail_model.dart';

List<Destination> destinationList = [
  Destination(
    destinationName: "Mount Kinabalu",
    location: "Sabah",
    backgroundImage: "lib/assets/images/kinabalu.jpg",
    destinationDescription: "Highest mountain in Borneo and Malaysia",
    locationTag: "High-Altitude",
    region: "East"
  ),
  Destination(
    destinationName: "Semporna",
    location: "Sabah",
    backgroundImage: "lib/assets/images/semporna.jpg",
    destinationDescription: "World-renowned island paradises like Sipadan",
    locationTag: "Beach",
    region: "East"
  ),
  Destination(
    destinationName: "Sandakan",
    location: "Sabah",
    backgroundImage: "lib/assets/images/sandakan.jpg",
    destinationDescription: "Highest mountain in Borneo and Malaysia",
    locationTag: "Beach",
    region: "East"
  ),
  Destination(
    destinationName: "Kundasang",
    location: "Sabah",
    backgroundImage: "lib/assets/images/Kundasang.webp",
    destinationDescription: "Highest mountain in Borneo and Malaysia",
    region: "East"
  ),
  Destination(
    destinationName: "Tawau",
    location: "Sabah",
    backgroundImage: "lib/assets/images/tawau.jpg",
    destinationDescription: "Highest mountain in Borneo and Malaysia",
    region: "East"
  ),
  Destination(
    destinationName: "Kuching",
    location: "Sarawak",
    backgroundImage: "lib/assets/images/kuching.jpg",
    destinationDescription: "Highest mountain in Borneo and Malaysia",
    locationTag: "Food",
    region: "East"
  ),
  Destination(
    destinationName: "Gunung Mulu",
    location: "Sarawak",
    backgroundImage: "lib/assets/images/mulu.jpg",
    destinationDescription: "World-renowned island paradises like Sipadan",
    locationTag: "High-Altitude",
    region: "East"
  ),
  Destination(
    destinationName: "Miri",
    location: "Sarawak",
    backgroundImage: "lib/assets/images/miri.jpg",
    destinationDescription: "Highest mountain in Borneo and Malaysia",
    locationTag: "Food",
    region: "East"
  ),
  Destination(
    destinationName: "Sibu",
    location: "Sarawak",
    backgroundImage: "lib/assets/images/sibu.webp",
    destinationDescription: "Highest mountain in Borneo and Malaysia",
    region: "East"
  ),
  Destination(
    destinationName: "Semenggoh",
    location: "Sarawak",
    backgroundImage: "lib/assets/images/semenggoh.jpg",
    destinationDescription: "Highest mountain in Borneo and Malaysia",
    region: "East"
  ),
  Destination(
    destinationName: "Langkawi", 
    location: "Kedah", 
    backgroundImage: "lib/assets/images/langkawi2.png", 
    longDescription: "Nestled in the tranquil embrace of the Andaman Sea, Langkawi beckons travelers with its captivating blend of natural wonders and cultural treasures. From the architectural marvels of the Langkawi Sky Bridge to the biodiverse wonders of Kilim Karst Geoforest Park, each attraction promises unforgettable moments of discovery and delight. Whether exploring pristine beaches or delving into centuries-old heritage sites, Langkawi offers a tapestry of experiences that leave a lasting impression on all who visit.",
    // shortDescription: "Where relaxation meets adventure, offering island hopping, jungle treks, and water sports amidst stunning scenery.",
    locationTag: "Beach",
    region: "West",
    documentID: "1234",
    ),
  Destination(
    destinationName: "Penang", 
    location: "Pulau Pinang", 
    backgroundImage: "lib/assets/images/penang2.png", 
    longDescription: "Penang is a captivating island destination off Malaysia's northwest coast. Steeped in history and culture, Penang enchants visitors with its UNESCO-listed George Town, where colonial-era architecture mingles with colourful street art and bustling markets. Beyond its cultural allure, Penang delights food lovers with its diverse culinary scene, offering everything from mouthwatering street food to fine dining experiences. With its pristine beaches, vibrant festivals, and warm hospitality, Penang promises a memorable escape for travellers seeking a perfect blend of heritage, gastronomy, and tropical beauty.",
    //shortDescription: "Where relaxation meets adventure, offering island hopping, jungle treks, and water sports amidst stunning scenery.',
    locationTag: "Food",
    region: "West",
    documentID: "1234312",
    ),
  Destination(
    destinationName: "Genting Highland", 
    location: "Pahang", 
    backgroundImage: "lib/assets/images/genting2.png", 
    longDescription: "Genting Highlands, nestled amidst the Titiwangsa Mountains, beckons visitors with its unique blend of entertainment and natural beauty. Known as the 'City of Entertainment,' this hill resort boasts world-class casinos, indoor theme parks, and a vibrant nightlife scene. Beyond its exhilarating attractions, Genting Highlands offers a refreshing escape from the heat of the lowlands, with cool mountain breezes and panoramic views of the surrounding lush landscapes. Whether seeking adventure or relaxation, Genting Highlands promises an unforgettable retreat for all who venture to its lofty heights.",
    //shortDescription: "Where relaxation meets adventure, offering island hopping, jungle treks, and water sports amidst stunning scenery.',
    locationTag: "High-Altitude",
    region: "West",
    documentID: "1234312",
    ),
  Destination(
    destinationName: "Batu Caves", 
    location: "Selangor", 
    backgroundImage: "lib/assets/images/batu_cave2.png", 
    longDescription: "Batu Caves, located in Gombak, Selangor, is an iconic destination steeped in history and spirituality. Towering limestone cliffs house a series of cavernous chambers adorned with intricate Hindu shrines and statues, drawing pilgrims and tourists alike to its sacred grounds. The colossal golden statue of Lord Murugan, standing at the entrance, serves as a majestic symbol of devotion and faith. Ascending the steep staircase to the main temple cave, visitors are greeted by the awe-inspiring sight of natural skylights illuminating the cavernous interior. Beyond its religious significance, Batu Caves offers panoramic views of the surrounding countryside, making it a must-visit destination for those seeking cultural immersion and natural beauty in Malaysia.",
    //shortDescription: "Where relaxation meets adventure, offering island hopping, jungle treks, and water sports amidst stunning scenery.',
    locationTag: "Nature",
    region: "West",
    documentID: "1234312",
    ),  
];

List<AccommodationDetail> accommodationDetailList = [
//   AccommodationDetail(
//     destinationName: 'Mount Kinabalu',
//     title: "Borneo Beach Villas",
//     backgroundImage: 'lib/assets/images/kinabalupark.png',
//     destination: "Mount Kinabalu",
//     location: 'Sabah',
//     price: 269,
//     description: """• Free cancellation 8 day(s) prior to experience date.
// • The tour provider will contact you with further details after the booking is confirmed.
// • When making a booking, Malaysian travelers are required to provide their IC numbers, while international travelers should enter their passport numbers.""",
//     photos: [
//       'lib/assets/images/kinabalupark.png',
//       'lib/assets/images/kinabalupark.png'
//     ],
//   ),
//   AccommodationDetail(
//     destinationName: 'Mount Kinabalu',
//     title: "Borneo Beach Villas",
//     backgroundImage: 'lib/assets/images/kinabalupark.png',
//     destination: "Mount Kinabalu",
//     location: 'Sabah',
//     price: 269,
//     description: """• Free cancellation 8 day(s) prior to experience date.
// • The tour provider will contact you with further details after the booking is confirmed.
// • When making a booking, Malaysian travelers are required to provide their IC numbers, while international travelers should enter their passport numbers.""",
//     photos: [
//       'lib/assets/images/kinabalupark.png',
//       'lib/assets/images/kinabalupark.png'
//     ],
//   ),
//   AccommodationDetail(
//     destinationName: 'Mount Kinabalu',
//     title: "Borneo Beach Villas",
//     backgroundImage: 'lib/assets/images/kinabalupark.png',
//     destination: "Mount Kinabalu",
//     location: 'Sabah',
//     price: 269,
//     description: """• Free cancellation 8 day(s) prior to experience date.
// • The tour provider will contact you with further details after the booking is confirmed.
// • When making a booking, Malaysian travelers are required to provide their IC numbers, while international travelers should enter their passport numbers.""",
//     photos: [
//       'lib/assets/images/kinabalupark.png',
//       'lib/assets/images/kinabalupark.png'
//     ],
//   )
  AccommodationDetail(
    destinationName: 'Mount Kinabalu',
    title: "Casuarina Tanjung Aru Hotel",
    backgroundImage: 'lib/assets/images/kinabalu_accommodation/casuarina1.png',
    destination: "Mount Kinabalu",
    location: 'Sabah',
    price: 75,
    description: "Providing an ideal mix of value, comfort, and convenience, Casuarina Tanjung Aru Hotel offers an array of amenities designed for travelers like you. You’ll enjoy relaxing rooms that offer a refrigerator and air conditioning, and you can stay connected during your stay as Casuarina Tanjung Aru Hotel offers guests free internet access. The small hotel features 24-hour front desk, 24-hour check-in, and room service. Plus, Casuarina Tanjung Aru Hotel offers free breakfast, providing a pleasant respite from your busy day.",
    photos: [
      'lib/assets/images/kinabalu_accommodation/casuarina2.png',
      'lib/assets/images/kinabalu_accommodation/casuarina3.png',
      'lib/assets/images/kinabalu_accommodation/casuarina4.png'
    ],
  ),
  AccommodationDetail(
    destinationName: 'Mount Kinabalu',
    title: "Holiday Inn Express",
    backgroundImage: 'lib/assets/images/kinabalu_accommodation/holiday_inn1.png',
    destination: "Mount Kinabalu",
    location: 'Sabah',
    price: 216,
    description: """Located in the city center of Kota Kinabalu, Holiday Inn Express is a 13-minute drive from Kota Kinabalu International Airport and within a short walking distance of shopping malls, bustling markets, local attractions, and activities. Enjoy restful sleep with high-quality bedding and a choice of soft or firm pillows in the hotel's 250 contemporary twin- or queen-bedded rooms. Families may also opt for rooms with sofa beds that can accommodate up to three guests. Amenities and facilities cover everything a traveler needs, including Free Express Start Breakfast or a Grab & Go option, free and fast Wi-Fi, coffee- and tea-making facilities in every room, a 24-hour gym, a Business Centre, a self-service launderette, a 12-person meeting room, and beverages and light meals available at the Great Room.""",
    photos: [
      'lib/assets/images/kinabalu_accommodation/holiday_inn2.png',
      'lib/assets/images/kinabalu_accommodation/holiday_inn3.png',
      'lib/assets/images/kinabalu_accommodation/holiday_inn4.png'
    ],
  ),
  AccommodationDetail(
    destinationName: 'Mount Kinabalu',
    title: "Hyatt Regency Kinabalu",
    backgroundImage: 'lib/assets/images/kinabalu_accommodation/hyatt1.png',
    destination: "Mount Kinabalu",
    location: 'Sabah',
    price: 323,
    description: """Unwind in one of our 288 spacious rooms and suites, all exquisitely designed with sophisticated comfort in mind, plus some of the best views in Kota Kinabalu including those of the sparkling South China Sea or the Kinabalu city surroundings. This luxury hotel in Sabah is a mere 15-minute drive from Kota Kinabalu International Airport, offering a central location in the heart of the city close to tourist attractions and stunning views of the famed sunsets in Kota Kinabalu. Whether it's a dip in the blue waters of the outdoor pool, a relaxing massage at the Avantang Spa and fitness centre, or a party at our Shenanigan's Fun Pub, our Kota Kinabalu hotel in Sabah has it all for you.""",
    photos: [
      'lib/assets/images/kinabalu_accommodation/hyatt2.png',
      'lib/assets/images/kinabalu_accommodation/hyatt3.png',
      'lib/assets/images/kinabalu_accommodation/hyatt4.png'
    ],
  ),
  AccommodationDetail(
    destinationName: 'Kuching',
    title: "The Waterfront Hotel",
    backgroundImage: 'lib/assets/images/kuching_accommodation/waterfront1.png',
    destination: "Kuching",
    location: 'Sarawak',
    price: 296,
    description: """In The Heart of Kuching's Legacy Historic District, The Waterfront Hotel is a brand new 5-star boutique hotel located in the heart of the Legacy Square historic district of Kuching. The hotel has a commanding view of the iconic State Legislative building (DUN) and the Governor's Palace (Astana) to the North and the Merdeka field (Padang) and the historic Sarawak Museum (built in 1874) to the South. The Artrageous feature of the hotel is the mission to promote local artists, be it music to handicrafts to art. The Waterfront Hotel's friendly, personal service, accompanying thoughtful amenities, and Artrageous theme will leave guests with a unique and luxurious experience.""",
    photos: [
      'lib/assets/images/kuching_accommodation/waterfront2.png',
      'lib/assets/images/kuching_accommodation/waterfront3.png',
      'lib/assets/images/kuching_accommodation/waterfront4.png'
    ],
  ),
  AccommodationDetail(
    destinationName: 'Kuching',
    title: "Pullman Kuching",
    backgroundImage: 'lib/assets/images/kuching_accommodation/pullman1.png',
    destination: "Kuching",
    location: 'Sarawak',
    price: 279,
    description: """Standing tall in the heart of Kuching City on top of Mathies Hill, Pullman Kuching offers luxury 5-star comfort with contemporary features and a stunning panoramic view of the Sarawak River. An essential address for get-togethers with outstanding facilities right in the city's golden triangle, the cosmopolitan and stylish Pullman Kuching has been welcoming international guests with its astounding hospitality since its inception in 2010. The hotel is adjacent to a two-storey city life-style shopping centre "Hills Shopping Mall" and within walking distance to commercial centre and city attractions.""",
    photos: [
      'lib/assets/images/kuching_accommodation/pullman2.png',
      'lib/assets/images/kuching_accommodation/pullman3.png',
      'lib/assets/images/kuching_accommodation/pullman4.png'
    ],
  ),
  AccommodationDetail(
    destinationName: 'Kuching',
    title: "Hilton Kuching",
    backgroundImage: 'lib/assets/images/kuching_accommodation/hilton1.png',
    destination: "Kuching",
    location: 'Sarawak',
    price: 425,
    description: """The Hilton Kuching is located in the heart of the charming city of Kuching, overlooking the tranquil Sarawak River. Kuching's landmark, the hotel commands the best view of the gently winding river and other captivating sights. 20 minutes' drive (11 km) from Kuching International Airport, while the commercial centre and city attractions such as the Main Bazaar, Kuching Waterfront, and the Tua Pek Kong Temple are a mere walk away. Modern shopping centres are reachable on foot, as are classic old historical sites nearby. The hotel makes the perfect base to explore Kuching!""",
    photos: [
      'lib/assets/images/kuching_accommodation/hilton2.png',
      'lib/assets/images/kuching_accommodation/hilton3.png',
      'lib/assets/images/kuching_accommodation/hilton4.png'
    ],
  ),
];

List<TourDetail> tourDetailList = [
  TourDetail(
      destinationName: "Mount Kinabalu",
      title: "3D2N Snorkeling Package",
      backgroundImage: "lib/assets/images/package1.jpg",
      location: "Sabah",
      price: 499,
      description: """
• Tun Sakaran Marine Park Island Hopping or Mabul Day Trip
• Mataking Three Island Day Trip
• Snorkeling equipment
• 2-night stay in Semporna City A-Hotel
• Tawau airport transfer to Semporna
• Snorkeling and lunch
• Day tour return transfer
• Insurance (Medical Fee RM1500)""",
      description2: """• Free cancellation 8 day(s) prior to experience date.
• The tour provider will contact you with further details after the booking is confirmed.
• When making a booking, Malaysian travelers are required to provide their IC numbers, while international travelers should enter their passport numbers.""",
      photos: [
        'lib/assets/images/kinabalupark.png',
        'lib/assets/images/kinabalupark.png',
        'lib/assets/images/kinabalupark.png'
      ],
      descriptionShort: """• Comfortable Mabul Backpackers Longhouse
• Full board (buffet-style: breakfast, lunch, dinner)"""),
TourDetail(
    destinationName: "Mount Kinabalu",
    title: "Mantanani Island Snorkeling Tour",
    backgroundImage: "lib/assets/images/kinabalu_tours/mantanani1.png",
    location: "Sabah",
    price: 720.57,
    description: "- Feel comfortable and confident in the water during a snorkelling tour of Mantanani Island that’s designed with beginner snorkelers and swimmers in mind.\n- A small group limited to 15 ensures that you receive personalised attention from your guide as you learn basic safety skills that reveal an underwater wonderland of diverse marine life.\n- Immerse yourself in the crystal-clear waters of Mantanani Island and discover vibrant coral reefs teeming with colourful fish, all while guided by experienced instructors who prioritise your safety and enjoyment throughout the journey.",
    description2: "- Package includes:\n  - Pick-up and drop-off from Kota Kinabalu City Hotels\n  - Transport by Air-Conditioned Car/Coach\n  - BBQ Lunch\n  - Use of snorkelling equipment\n  - Entry/Admission ticket to Mantanani Island",
    photos: [
      'lib/assets/images/kinabalu_tours/mantanani2.png',
      'lib/assets/images/kinabalu_tours/mantanani3.png',
      'lib/assets/images/kinabalu_tours/mantanani4.png'
    ],
    descriptionShort: "- Feel comfortable and confident in the water during a snorkelling tour of Mantanani Island that’s designed with beginner snorkelers and swimmers in mind.",
  ),
TourDetail(
    destinationName: "Mount Kinabalu",
    title: "River Cruise & Fireflies Tour",
    backgroundImage: "lib/assets/images/kinabalu_tours/river_cruise1.png",
    location: "Sabah",
    price: 243.44,
    description: "- Explore the Klias Wetlands on this all-day guided tour from Kota Kinabalu.\n- Cruise down the Klias River in search of proboscis monkeys, long-tailed macaques, the rare silver langur, and other local wildlife.\n- At dusk, enjoy a village-style dinner before traveling through the mangrove swamp to see the fireflies’ flickering lights.",
    description2: "- Package includes:\n  - Sweet delicacy from the locals\n  - All Fees and Taxes\n  - Dinner\n  - Entry/Admission - Klias Wetlands",
    photos: [
      'lib/assets/images/kinabalu_tours/river_cruise2.png',
      'lib/assets/images/kinabalu_tours/river_cruise3.png',
      'lib/assets/images/kinabalu_tours/river_cruise4.png'
    ],
    descriptionShort: "- Explore the Klias Wetlands on this all-day guided tour from Kota Kinabalu.",
  ),
TourDetail(
    destinationName: "Mount Kinabalu",
    title: "Mount Kinabalu Climbing 2 Days 1 Night",
    backgroundImage: "lib/assets/images/kinabalu_tours/climbing1.png",
    location: "Sabah",
    price: 4527.91,
    description: "- Adventure seekers visiting Borneo should not miss the chance to climb Mount Kinabalu during their time on the island.\n- Join a small group and spend two days summiting the 13,435-foot (4,095-meter) mountain that is featured on Sabah’s state flag.\n- This climb is quite challenging and is only suitable for those with good physical fitness and climbing experience.",
    description2: "- Package includes:\n  - Overnight accommodation\n  - Hotel pickup and drop-off (Seat-in-coach)\n  - Mountain Guide\n  - Insurance\n  - Climbing Permit\n  - Certificate\n  - Breakfast\n  - Lunch\n  - Dinner",
    photos: [
      'lib/assets/images/kinabalu_tours/climbing2.png',
      'lib/assets/images/kinabalu_tours/climbing3.png',
      'lib/assets/images/kinabalu_tours/climbing4.png'
    ],
    descriptionShort: "- Adventure seekers visiting Borneo should not miss the chance to climb Mount Kinabalu during their time on the island.",
  ),
TourDetail(
    destinationName: "Kuching",
    title: "Marvellous Creature Orangutan: Sarawak Semenggoh Wildlife Centre Tour",
    backgroundImage: "lib/assets/images/kuching_tours/marvellous1.png",
    location: "Sarawak",
    price: 304.86,
    description: "- This convenient door-to-door tour, in a group no larger than 10, spares you the hassle of self-drive, while ensuring you arrive in time for the morning feeding, when the orangutans are easiest to see.\n- Free hotel pick up & drop off from your hotel located at Kuching City Centre (1km radius). An additional USD 40 surcharge for hotel pickup outside 1km radius from the city centre is applicable and payable on the day of your activity.\n- Surcharge 30% to be applied during super peak / festive season & must be paid on the day of travel.",
    description2: "- Package includes:\n  - Air-conditioned vehicle\n  - English Speaking Driver\n  - Hotel pick up & drop off (city centre 1 km radius only)",
    photos: [
      'lib/assets/images/kuching_tours/marvellous2.png',
      'lib/assets/images/kuching_tours/marvellous3.png',
      'lib/assets/images/kuching_tours/marvellous4.png'
    ],
    descriptionShort: "- This convenient door-to-door tour spares you the hassle of self-drive, while ensuring you arrive in time for the morning feeding.",
  ),
TourDetail(
    destinationName: "Kuching",
    title: "Half-Day Heritage Bike Tour in Kuching",
    backgroundImage: "lib/assets/images/kuching_tours/half_day1.png",
    location: "Sarawak",
    price: 221.80,
    description: "- The ride is around 17km (10.5633 miles) and takes about 4.5 hours, with regular stops. Children are welcome with an adult.\n- Apart from cycling around the heritage buildings and monuments, you will be taking a cruise across the Sarawak River on a traditional Sampan boat. You will be taken through the track of the rural Malay Kampong along the bank of the Sarawak River, exploring the village and savoring the variety of traditional Malay foods.\n- Next, you will be exploring an open-air market of Kubah Ria, a must-visit market for visitors. You can find most of Kuching's favorite foods here, such as tropical local fruits, vegetables, and local handicrafts.",
    description2: "- Package includes:\n  - Bicycle and helmet\n  - Bottled water, food tasting, and light refreshments\n  - Professional English-speaking local guide",
    photos: [
      'lib/assets/images/kuching_tours/half_day2.png',
      'lib/assets/images/kuching_tours/half_day3.png',
      'lib/assets/images/kuching_tours/half_day4.png'
    ],
    descriptionShort: "- Enjoy a scenic bike ride around heritage buildings and monuments, a cruise across the Sarawak River, and exploration of a local market.",
  ),
TourDetail(
    destinationName: "Kuching",
    title: "Sarawak Cultural Village Half Day Tour",
    backgroundImage: "lib/assets/images/kuching_tours/sarawak_cultural1.png",
    location: "Sarawak",
    price: 175.00,
    description: "- Travel the landscapes of Malaysia to visit the famed Sarawak Cultural Village at the foothills of Mount Santubong and Discover the stories of 7 of Malaysia’s ethnic tribes: Iban, Bidayuh, Penan, Orang Ulu, Melanau, Malay, and Chinese.\n- Admire replicas of the tribes’ traditional homes – intricately detailed down to the type of wood, landscaping, and more while listening to fascinating tales from lively storyteller guides as they take you around to explore the cultural village.\n- Travel with ease to and from the city and Sarawak Cultural Village with a convenient transfer service from your hotel.",
    description2: "- Package includes:\n  - Admission to Sarawak Cultural Village\n  - English-speaking guide\n  - Bottled drinking water\n  - Round-trip transfers to and from your hotel",
    photos: [
      'lib/assets/images/kuching_tours/sarawak_cultural2.png',
      'lib/assets/images/kuching_tours/sarawak_cultural3.png',
      'lib/assets/images/kuching_tours/sarawak_cultural4.png'
    ],
    descriptionShort: "- Discover the stories of Malaysia's ethnic tribes and explore their traditional homes at Sarawak Cultural Village.",
  ),
];

List<FlightDetail> flightDetailList = [
//   FlightDetail(
//       destinationName: "Mount Kinabalu",
//       title: "Kota Kinabalu (BKI)",
//       backgroundImage: "lib/assets/images/airport.png",
//       location: "Sabah",
//       price: 283,
//       description:
//           """• Prices always include an estimate of all mandatory taxes and charges.
// • Please check all ticket details, final prices, and terms and conditions on the provider’s website before you book.
// • Some airlines and travel agencies charge extra for baggage, insurance, or credit card use. They may also charge a service fee.
// • Restrictions may apply to young passengers traveling alone.""",
//       co2Description:
//           "This flight emits 9% less CO2 than a typical flight on this route.",
//       flightDepartureTime: "6:05AM - 8:45AM",
//       flightReturnTime: "6:05AM - 8:45AM",
//       flightDestinationAirline: "KUL - BKI, AirAsia",
//       flightType: "Direct",
//       flightDuration: "2h40m"),
  FlightDetail(
    destinationName: "Mount Kinabalu",
    title: "Malaysia Airlines",
    backgroundImage: "lib/assets/images/airport.png",
    location: "Sabah",
    price: 733,
    description: "- Prices always include an estimate of all mandatory taxes and charges.\n- Please check all ticket details, final prices, and terms and conditions on the provider’s website before you book.\n- Some airlines and travel agencies charge extra for baggage, insurance, or credit card use. They may also charge a service fee.\n- Restrictions may apply to young passengers traveling alone.",
    co2Description: "This flight emits 12% less CO2 than a typical flight on this route.",
    flightDepartureTime: "Departs: KLIA at 7:30AM",
    flightReturnTime: "Returns: Kota Kinabalu (BKI) at 10:10AM",
    flightDestinationAirline: "KUL - BKI, Malaysia Airlines",
    flightType: "Direct",
    flightDuration: "Duration: 2h 40m",
  ),
FlightDetail(
    destinationName: "Mount Kinabalu",
    title: "Firefly",
    backgroundImage: "lib/assets/images/airport.png",
    location: "Sabah",
    price: 1008,
    description: "- Prices always include an estimate of all mandatory taxes and charges.\n- Please check all ticket details, final prices, and terms and conditions on the provider’s website before you book.\n- Some airlines and travel agencies charge extra for baggage, insurance, or credit card use. They may also charge a service fee.\n- Restrictions may apply to young passengers traveling alone.",
    co2Description: "This flight emits 15% less CO2 than a typical flight on this route.",
    flightDepartureTime: "Departs: KLIA at 8:00AM",
    flightReturnTime: "Returns: Kota Kinabalu (BKI) at 9:50PM",
    flightDestinationAirline: "KUL - PEN - BKI, Firefly",
    flightType: "1 stop",
    flightDuration: "Duration: 13h50m",
  ),

FlightDetail(
    destinationName: "Kuching",
    title: "AirAsia",
    backgroundImage: "lib/assets/images/airport.png",
    location: "Sarawak",
    price: 298,
    description: "- Prices include all taxes and charges.\n- Please review all ticket details, final prices, and terms and conditions on the provider’s website before booking.\n- Some airlines and travel agencies may charge additional fees for baggage, insurance, or credit card use. Service fees may also apply.\n- Restrictions may apply for unaccompanied minors.",
    co2Description: "This flight has a carbon emissions level equivalent to standard flights on this route.",
    flightDepartureTime: "Departs: KLIA at 10:30AM",
    flightReturnTime: "Returns: Kuching at 12:20PM",
    flightDestinationAirline: "KUL - KCH, AirAsia",
    flightType: "Non-stop",
    flightDuration: "Duration: 1h 50m",
  ),

FlightDetail(
    destinationName: "Kuching",
    title: "Malaysia Airlines",
    backgroundImage: "lib/assets/images/airport.png",
    location: "Sarawak",
    price: 463,
    description: "- Prices include all taxes and charges.\n- Please review all ticket details, final prices, and terms and conditions on the provider’s website before booking.\n- Some airlines and travel agencies may charge additional fees for baggage, insurance, or credit card use. Service fees may also apply.\n- Restrictions may apply for unaccompanied minors.",
    co2Description: "This flight has a carbon emissions level equivalent to standard flights on this route.",
    flightDepartureTime: "Departs: KLIA at 8:45AM",
    flightReturnTime: "Returns: Kuching at 10:35AM",
    flightDestinationAirline: "KUL - KCH, Malaysia Airlines",
    flightType: "Non-stop",
    flightDuration: "Duration: 1h 50m",
  ),

FlightDetail(
    destinationName: "Kuching",
    title: "Firefly",
    backgroundImage: "lib/assets/images/airport.png",
    location: "Sarawak",
    price: 899,
    description: "- Prices include all taxes and charges.\n- Please review all ticket details, final prices, and terms and conditions on the provider’s website before booking.\n- Some airlines and travel agencies may charge additional fees for baggage, insurance, or credit card use. Service fees may also apply.\n- Restrictions may apply for unaccompanied minors.",
    co2Description: "This flight emits 9% less CO2 than a typical flight on this route.",
    flightDepartureTime: "Departs: KLIA at 7:30AM",
    flightReturnTime: "Returns: Kuching at 6:40PM",
    flightDestinationAirline: "KUL - PEN - KCH, Firefly",
    flightType: "1-stop",
    flightDuration: "Duration: 11h 10m",
  ),


];

