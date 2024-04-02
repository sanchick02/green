import 'package:green/model/destination_model.dart';

List<Destination> destinationList = [
  Destination(
    destinationName: "Mount Kinabalu",
    state: "Sabah",
    image: "lib/assets/images/kinabalu.jpg",
    description: "Highest mountain in Borneo and Malaysia",
    locationTag: "High-Altitude",
    region: "East"
  ),
  Destination(
    destinationName: "Semporna",
    state: "Sabah",
    image: "lib/assets/images/semporna.jpg",
    description: "World-renowned island paradises like Sipadan",
    locationTag: "Beach",
    region: "East"
  ),
  Destination(
    destinationName: "Sandakan",
    state: "Sabah",
    image: "lib/assets/images/sandakan.jpg",
    description: "Highest mountain in Borneo and Malaysia",
    locationTag: "Beach",
    region: "East"
  ),
  Destination(
    destinationName: "Kundasang",
    state: "Sabah",
    image: "lib/assets/images/Kundasang.webp",
    description: "Highest mountain in Borneo and Malaysia",
    region: "East"
  ),
  Destination(
    destinationName: "Tawau",
    state: "Sabah",
    image: "lib/assets/images/tawau.jpg",
    description: "Highest mountain in Borneo and Malaysia",
    region: "East"
  ),
  Destination(
    destinationName: "Kuching",
    state: "Sarawak",
    image: "lib/assets/images/kuching.jpg",
    description: "Highest mountain in Borneo and Malaysia",
    locationTag: "Food",
    region: "East"
  ),
  Destination(
    destinationName: "Gunung Mulu",
    state: "Sarawak",
    image: "lib/assets/images/mulu.jpg",
    description: "World-renowned island paradises like Sipadan",
    locationTag: "High-Altitude",
    region: "East"
  ),
  Destination(
    destinationName: "Miri",
    state: "Sarawak",
    image: "lib/assets/images/miri.jpg",
    description: "Highest mountain in Borneo and Malaysia",
    locationTag: "Food",
    region: "East"
  ),
  Destination(
    destinationName: "Sibu",
    state: "Sarawak",
    image: "lib/assets/images/sibu.webp",
    description: "Highest mountain in Borneo and Malaysia",
    region: "East"
  ),
  Destination(
    destinationName: "Semenggoh",
    state: "Sarawak",
    image: "lib/assets/images/semenggoh.jpg",
    description: "Highest mountain in Borneo and Malaysia",
    region: "East"
  ),
  Destination(
    destinationName: "Langkawi", 
    state: "Kedah", 
    image: "lib/assets/images/langkawi2.png", 
    description: "Nestled in the tranquil embrace of the Andaman Sea, Langkawi beckons travelers with its captivating blend of natural wonders and cultural treasures. From the architectural marvels of the Langkawi Sky Bridge to the biodiverse wonders of Kilim Karst Geoforest Park, each attraction promises unforgettable moments of discovery and delight. Whether exploring pristine beaches or delving into centuries-old heritage sites, Langkawi offers a tapestry of experiences that leave a lasting impression on all who visit.",
    shortDescription: "Where relaxation meets adventure, offering island hopping, jungle treks, and water sports amidst stunning scenery.",
    locationTag: "Beach",
    region: "West",
    documentID: "1234",
    ),
  Destination(
    destinationName: "Penang", 
    state: "Pulau Pinang", 
    image: "lib/assets/images/penang2.png", 
    description: "Penang is a captivating island destination off Malaysia's northwest coast. Steeped in history and culture, Penang enchants visitors with its UNESCO-listed George Town, where colonial-era architecture mingles with colourful street art and bustling markets. Beyond its cultural allure, Penang delights food lovers with its diverse culinary scene, offering everything from mouthwatering street food to fine dining experiences. With its pristine beaches, vibrant festivals, and warm hospitality, Penang promises a memorable escape for travellers seeking a perfect blend of heritage, gastronomy, and tropical beauty.",
    //shortDescription: "Where relaxation meets adventure, offering island hopping, jungle treks, and water sports amidst stunning scenery.',
    locationTag: "Food",
    region: "West",
    documentID: "1234312",
    ),
  Destination(
    destinationName: "Genting Highland", 
    state: "Pahang", 
    image: "lib/assets/images/genting2.png", 
    description: "Genting Highlands, nestled amidst the Titiwangsa Mountains, beckons visitors with its unique blend of entertainment and natural beauty. Known as the 'City of Entertainment,' this hill resort boasts world-class casinos, indoor theme parks, and a vibrant nightlife scene. Beyond its exhilarating attractions, Genting Highlands offers a refreshing escape from the heat of the lowlands, with cool mountain breezes and panoramic views of the surrounding lush landscapes. Whether seeking adventure or relaxation, Genting Highlands promises an unforgettable retreat for all who venture to its lofty heights.",
    //shortDescription: "Where relaxation meets adventure, offering island hopping, jungle treks, and water sports amidst stunning scenery.',
    locationTag: "High-Altitude",
    region: "West",
    documentID: "1234312",
    ),
  Destination(
    destinationName: "Batu Caves", 
    state: "Selangor", 
    image: "lib/assets/images/batu_cave2.png", 
    description: "Batu Caves, located in Gombak, Selangor, is an iconic destination steeped in history and spirituality. Towering limestone cliffs house a series of cavernous chambers adorned with intricate Hindu shrines and statues, drawing pilgrims and tourists alike to its sacred grounds. The colossal golden statue of Lord Murugan, standing at the entrance, serves as a majestic symbol of devotion and faith. Ascending the steep staircase to the main temple cave, visitors are greeted by the awe-inspiring sight of natural skylights illuminating the cavernous interior. Beyond its religious significance, Batu Caves offers panoramic views of the surrounding countryside, making it a must-visit destination for those seeking cultural immersion and natural beauty in Malaysia.",
    //shortDescription: "Where relaxation meets adventure, offering island hopping, jungle treks, and water sports amidst stunning scenery.',
    locationTag: "Nature",
    region: "West",
    documentID: "1234312",
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

List<AccommodationDetail> accommodationDetailList = [
  AccommodationDetail(
    destinationName: 'Mount Kinabalu',
    title: "Borneo Beach Villas",
    backgroundImage: 'lib/assets/images/kinabalupark.png',
    destination: "Mount Kinabalu",
    location: 'Sabah',
    price: 269,
    description: """• Free cancellation 8 day(s) prior to experience date.
• The tour provider will contact you with further details after the booking is confirmed.
• When making a booking, Malaysian travelers are required to provide their IC numbers, while international travelers should enter their passport numbers.""",
    photos: [
      'lib/assets/images/kinabalupark.png',
      'lib/assets/images/kinabalupark.png'
    ],
  ),
  AccommodationDetail(
    destinationName: 'Mount Kinabalu',
    title: "Borneo Beach Villas",
    backgroundImage: 'lib/assets/images/kinabalupark.png',
    destination: "Mount Kinabalu",
    location: 'Sabah',
    price: 269,
    description: """• Free cancellation 8 day(s) prior to experience date.
• The tour provider will contact you with further details after the booking is confirmed.
• When making a booking, Malaysian travelers are required to provide their IC numbers, while international travelers should enter their passport numbers.""",
    photos: [
      'lib/assets/images/kinabalupark.png',
      'lib/assets/images/kinabalupark.png'
    ],
  ),
  AccommodationDetail(
    destinationName: 'Mount Kinabalu',
    title: "Borneo Beach Villas",
    backgroundImage: 'lib/assets/images/kinabalupark.png',
    destination: "Mount Kinabalu",
    location: 'Sabah',
    price: 269,
    description: """• Free cancellation 8 day(s) prior to experience date.
• The tour provider will contact you with further details after the booking is confirmed.
• When making a booking, Malaysian travelers are required to provide their IC numbers, while international travelers should enter their passport numbers.""",
    photos: [
      'lib/assets/images/kinabalupark.png',
      'lib/assets/images/kinabalupark.png'
    ],
  )
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
        'lib/assets/images/kinabalupark.png'
      ],
      descriptionShort: """• Comfortable Mabul Backpackers Longhouse
• Full board (buffet-style: breakfast, lunch, dinner)""")
];

List<FlightDetail> flightDetailList = [
  FlightDetail(
      destinationName: "Mount Kinabalu",
      title: "Kota Kinabalu (BKI)",
      backgroundImage: "lib/assets/images/airport.png",
      location: "Sabah",
      price: 283,
      description:
          """• Prices always include an estimate of all mandatory taxes and charges.
• Please check all ticket details, final prices, and terms and conditions on the provider’s website before you book.
• Some airlines and travel agencies charge extra for baggage, insurance, or credit card use. They may also charge a service fee.
• Restrictions may apply to young passengers traveling alone.""",
      co2Description:
          "This flight emits 9% less CO2 than a typical flight on this route.",
      flightDepartureTime: "6:05AM - 8:45AM",
      flightReturnTime: "6:05AM - 8:45AM",
      flightDestinationAirline: "KUL - BKI, AirAsia",
      flightType: "Direct",
      flightDuration: "2h40m")
];

