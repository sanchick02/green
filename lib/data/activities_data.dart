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
      'lib/assets/images/kinabalupark.png',
      'lib/assets/images/kinabalupark.png'
    ],
  ),
  ActivityDetail(
    destinationName: 'Mount Kinabalu',
    title: 'Climbing Mount Kinabalu',
    backgroundImage: 'lib/assets/images/mount_kinabalu_activities/climbing_kinabalu1.png',
    location: 'Sabah',
    price: 202.5,
    description:
        "Climbing Mount Kinabalu is an exhilarating experience. With a price of RM 202.50 for a one-day climb, adventurers have the opportunity to conquer Southeast Asia's highest peak. Mount Kinabalu is nestled within Kinabalu Park, covering 754 square kilometres. Climbers can opt for the well-marked paths or challenge themselves with the via ferrata route, providing diverse options for adventurers.",
    photos: [
      'lib/assets/images/mount_kinabalu_activities/climbing_kinabalu2.png',
      'lib/assets/images/mount_kinabalu_activities/climbing_kinabalu3.png',
      'lib/assets/images/mount_kinabalu_activities/climbing_kinabalu4.png'
    ],
  ),
  ActivityDetail(
    destinationName: 'Mount Kinabalu',
    title: 'Kinabalu National Park Tour with Poring Hot Springs',
    backgroundImage: 'lib/assets/images/mount_kinabalu_activities/kinabalu_national_park1.png',
    location: 'Sabah',
    price: 285,
    description:
        "Embark on a memorable journey with the Kinabalu National Park Tour featuring Poring Hot Springs. This tour allows travelers to experience the awe-inspiring beauty of Southeast Asia’s highest peak, Mount Kinabalu, without the grueling climb. Kinabalu National Park, Malaysia's first UNESCO World Heritage Site, is a sanctuary for nature lovers. It showcases the majestic Mount Kinabalu and its diverse ecosystem. Visitors can immerse themselves in the rejuvenating Poring Hot Springs, surrounded by lush greenery. The park is home to a rich biodiversity, boasting 326 bird species, over 100 mammal species, and safeguarding more than 4,500 unique flora and fauna species.",
    photos: [
      'lib/assets/images/mount_kinabalu_activities/kinabalu_national_park2.png',
      'lib/assets/images/mount_kinabalu_activities/kinabalu_national_park3.png',
      'lib/assets/images/mount_kinabalu_activities/kinabalu_national_park4.png'
    ],
  ),
  ActivityDetail(
    destinationName: 'Mount Kinabalu',
    title: 'Kota Kinabalu Half Day City Tour',
    backgroundImage: 'lib/assets/images/mount_kinabalu_activities/half_day_tour1.png',
    location: 'Sabah',
    price: 470,
    description:
        "Experience the vibrant city of Kota Kinabalu with a Half Day City Tour. This approximately three-hour guided tour offers a glimpse into the cultural and architectural wonders of the city. The tour includes visits to iconic landmarks such as the Menara Tun Mustapha, a towering structure standing 30 storeys high, offering panoramic views of the city. You'll also explore the serene City Mosque, known for its stunning architecture, and delve into the rich history and heritage of Sabah at the Sabah State Museum. The tour concludes with a visit to the Signal Hill Observatory Platform, where you can marvel at breathtaking views of Kota Kinabalu's skyline. After an enriching exploration, you'll be safely escorted back to your hotel.",
    photos: [
      'lib/assets/images/mount_kinabalu_activities/half_day_tour2.png',
      'lib/assets/images/mount_kinabalu_activities/half_day_tour3.png',
      'lib/assets/images/mount_kinabalu_activities/half_day_tour4.png',
    ],
  ),
  ActivityDetail(
    destinationName: 'Mount Kinabalu',
    title: 'Klias Wildlife Safari River Cruise',
    backgroundImage: 'lib/assets/images/mount_kinabalu_activities/klias1.png',
    location: 'Sabah',
    price: 274,
    description:
        "Embark on an unforgettable journey through the vibrant mangrove forests with the Klias Wildlife Safari River Cruise. This excursion promises an afternoon filled with wildlife encounters as you drift along the river. Keep your eyes peeled for fascinating creatures such as proboscis monkeys, macaques, crocodiles, and monitor lizards. As the sun sets, the adventure continues with a captivating experience of witnessing fireflies light up the riverside, creating a mesmerizing spectacle. This unique combination of afternoon and after-dark cruises offers a rare opportunity to immerse yourself in the natural beauty and biodiversity of Sabah's Klias Wildlife Sanctuary.",
    photos: [
      'lib/assets/images/mount_kinabalu_activities/klias2.png',
      'lib/assets/images/mount_kinabalu_activities/klias3.png',
      'lib/assets/images/mount_kinabalu_activities/klias4.png',
    ],
  ),
  ActivityDetail(
    destinationName: 'Mount Kinabalu',
    title: 'ATV Adventure at Mount Kinabalu',
    backgroundImage: 'lib/assets/images/mount_kinabalu_activities/atv_adventure1.png',
    location: 'Sabah',
    price: 200,
    description:
        "Embark on an exhilarating ATV Adventure at Mount Kinabalu and explore the stunning highlands of Sabah. This thrilling experience allows you to traverse the rugged terrain of Kundasang on a quad bike, offering adrenaline-pumping excitement and breathtaking views. Choose your adventure path as you visit historical earthquake sites or venture around Desa Dairy Farm, passing by picturesque local villages along the way. Whether you're riding solo or with a companion, this ATV adventure promises an unforgettable journey through the scenic landscapes of Mount Kinabalu.",
    photos: [
      'lib/assets/images/mount_kinabalu_activities/atv_adventure2.png',
      'lib/assets/images/mount_kinabalu_activities/atv_adventure3.png',
      'lib/assets/images/mount_kinabalu_activities/atv_adventure4.png',
    ],
  ),
  ActivityDetail(
    destinationName: 'Mount Kinabalu',
    title: 'Mangrove Kayaking Experience',
    backgroundImage: 'lib/assets/images/mount_kinabalu_activities/mangrove1.png',
    location: 'Sabah',
    price: 389.50,
    description:
        "Immerse yourself in the tranquility of nature with the Mangrove Kayaking Experience. As the morning sun rises, paddle along the serene mangrove path and breathe in the fresh air. Along the way, witness the daily lives of indigenous villagers as they fish, catch crabs, and commute to ports. Arrive at the sunrise point and be mesmerized by the majestic view of Mount Kinabalu unfolding before your eyes. Take a moment to relax and soak in the beauty of the bay while enjoying the breathtaking sunrise view. This kayaking adventure offers a perfect blend of natural splendor and cultural immersion.",
    photos: [
      'lib/assets/images/mount_kinabalu_activities/mangrove2.png',
      'lib/assets/images/mount_kinabalu_activities/mangrove3.png',
      'lib/assets/images/mount_kinabalu_activities/mangrove4.png'
    ],
  ),
  ActivityDetail(
    destinationName: 'Mount Kinabalu',
    title: 'Sapi & Manukan Island Exploration',
    backgroundImage: 'lib/assets/images/mount_kinabalu_activities/sapi_manukan1.png',
    location: 'Sabah',
    price: 290,
    description:
        "Embark on an unforgettable island hopping adventure to Sapi & Manukan Island in the Tunku Abdul Rahman Marine Park. Discover the breathtaking beauty of these pristine islands, each offering a unique and enchanting experience. From sunbathing on sun-kissed beaches to snorkeling in vibrant coral reefs teeming with marine life, there's something for everyone to enjoy. Indulge in scenic boat rides between the islands and immerse yourself in the panoramic viewpoints that offer stunning vistas of the surrounding landscapes. Whether you're seeking relaxation or adventure, Sapi & Manukan Island Exploration promises an unforgettable journey in the heart of Kota Kinabalu.",
    photos: [
      'lib/assets/images/mount_kinabalu_activities/sapi_manukan2.png',
      'lib/assets/images/mount_kinabalu_activities/sapi_manukan3.png',
      'lib/assets/images/mount_kinabalu_activities/sapi_manukan4.png'
    ],
  ),
  ActivityDetail(
    destinationName: 'Mount Kinabalu',
    title: 'Dinawan Private Island Hopping by Speedboat',
    backgroundImage: 'lib/assets/images/mount_kinabalu_activities/dinawan1.png',
    location: 'Sabah',
    price: 374.55,
    description:
        "Escape to the exclusive paradise of Dinawan Private Island with a thrilling day trip from Kota Kinabalu by speedboat. Upon arrival, savor a refreshing welcome drink and receive a briefing about the day's activities. Dive into the crystal-clear waters and embark on an unforgettable snorkeling adventure at two different locations, surrounded by vibrant marine life and colorful coral reefs. After working up an appetite, enjoy a delightful lunch break on the island, indulging in delicious local cuisine. Following lunch, unwind on the pristine beaches or opt for exciting water sports activities such as kayaking or standup paddleboarding. Whether you seek relaxation or adventure, Dinawan Private Island Hopping promises an unparalleled day of fun and exploration.",
    photos: [
      'lib/assets/images/mount_kinabalu_activities/dinawan2.png',
      'lib/assets/images/mount_kinabalu_activities/dinawan3.png',
      'lib/assets/images/mount_kinabalu_activities/dinawan4.png'
    ],
  ),
  ActivityDetail(
    destinationName: 'Kuching',
    title: "Sarawak River Sunset Cruise Experience",
    backgroundImage: 'lib/assets/images/kuching_activities/sarawak_river1.png',
    location: 'Sarawak',
    price: 70.0,
    description: """Embark on a mesmerizing 1.5-hour Sarawak River Sunset Cruise Experience and immerse yourself in the beauty of Kuching's skyline. This scenic cruise offers a rich panoramic view of the city and its famous landmarks, with historical landmarks majestically lining the riverbanks. Cruise past numerous historical landmarks of Kuching while enjoying a breathtaking 360° panoramic view of the city skyline. Indulge in Sarawakian layered cakes (kuih lapis) and enjoy free-flowing orange cordial while listening to live commentary and cultural performances aboard the cruise. Witness the stunning sunset casting hues of orange and pink across the horizon, creating a memorable experience in the heart of Kuching.""",
    photos: [
      'lib/assets/images/kuching_activities/sarawak_river2.png',
      'lib/assets/images/kuching_activities/sarawak_river3.png',
      'lib/assets/images/kuching_activities/sarawak_river4.png'
    ],
  ),
  ActivityDetail(
    destinationName: 'Kuching',
    title: "Half Day Annah Rais Bidayuh Longhouse Tour",
    backgroundImage: 'lib/assets/images/kuching_activities/half_day_annah1.png',
    location: 'Sarawak',
    price: 190.0,
    description: """Embark on a 90-minute drive to begin your journey to Annah Rais Longhouse, home of the Bidayuh tribe. Explore the rich cultural heritage of the Bidayuh tribe within the historic, jungle-built longhouse that has been home to 80 families for centuries. Your guided exploration includes a fascinating journey into the history, architecture, and farming traditions of the Land Dayaks. Witness the ancient practice of human skull worship and delve into the traditions of the Bidayuh Village with a knowledgeable local guide. Immerse yourself in the unique cultural experience of the Bidayuh tribe as you learn about their way of life and traditions.""",
    photos: [
      'lib/assets/images/kuching_activities/half_day_annah2.png',
      'lib/assets/images/kuching_activities/half_day_annah3.png',
      'lib/assets/images/kuching_activities/half_day_annah4.png'
    ],
  ),
  ActivityDetail(
    destinationName: 'Kuching',
    title: "Splash Art Experience",
    backgroundImage: 'lib/assets/images/kuching_activities/splash_art1.png',
    location: 'Sarawak',
    price: 160.0,
    description: """Dive into the world of creativity at our Splash Art Experience workshop – a vibrant experience for all ages! Rediscover the joy of childhood as you let paint splatter and immerse your hands in a colorful masterpiece. Unleash your inner artist and express yourself as you create and splatter vibrant canvases using unique creative tools. Choose your preferred paint colors and start your art journey in the workshop! Whether you're a beginner or a seasoned artist, this immersive experience promises a fun-filled and creative adventure in Kuching.""",
    photos: [
      'lib/assets/images/kuching_activities/splash_art2.png',
      'lib/assets/images/kuching_activities/splash_art3.png',
      'lib/assets/images/kuching_activities/splash_art4.png'
    ],
  ),
  ActivityDetail(
    destinationName: 'Kuching',
    title: "Borneo Cultural Museum",
    backgroundImage: 'lib/assets/images/kuching_activities/museaum1.png',
    location: 'Sarawak',
    price: 16.0,
    description: """The Borneo Cultural Museum is located in the center of Kuching city next to Padang Merdeka. This five-storey building is designed in a modern style, with distinctive architectural features that reflect Sarawak’s unique traditional crafts and rich cultural heritage. Each gallery within this five-storey building offers a different experience. The children’s gallery theme on the second floor is 'Love our Rivers’, the ‘In Harmony with Nature’ gallery is on the third floor, the ‘Time Changes’ gallery is on the fourth floor, and the ‘Objects of Desire’ gallery is on the fifth floor. Visit this museum to delve into the diverse cultural heritage of Sarawak and explore its rich history and traditions.""",
    photos: [
      'lib/assets/images/kuching_activities/museaum2.png',
      'lib/assets/images/kuching_activities/museaum3.png',
      'lib/assets/images/kuching_activities/museaum4.png'
    ],
  ),
  ActivityDetail(
    destinationName: 'Kuching',
    title: "Fun Filled Kayaking Adventure",
    backgroundImage: 'lib/assets/images/kuching_activities/kayaking1.png',
    location: 'Sarawak',
    price: 240.37,
    description: """Experience the thrill and beauty of nature with the Fun Filled Kayaking Adventure in Kuching. This 6-hour kayak adventure takes you to the stunning Sungai Sarawak Kiri, where you can immerse yourself in the lush tropical surroundings. During the kayaking adventure, you will have breaks at a mini waterfall, allowing you to relax and take in the beauty of the surroundings. It is recommended to bring a waterproof camera to capture the stunning moments along the river. Lunch and bottled water are included, ensuring you stay hydrated and energized throughout the day.""",
    photos: [
      'lib/assets/images/kuching_activities/kayaking2.png',
      'lib/assets/images/kuching_activities/kayaking3.png',
      'lib/assets/images/kuching_activities/kayaking4.png'
    ],
  ),
  ActivityDetail(
    destinationName: 'Kuching',
    title: "Jong’s Crocodile Farm",
    backgroundImage: 'lib/assets/images/kuching_activities/jong_crocodile1.png',
    location: 'Sarawak',
    price: 25.0,
    description: "Discover the wonders of wildlife at Jong’s Crocodile Farm, the finest and largest captive breeding crocodile farm in Malaysia. Visitors can have the enchanting experience of walking freely among the Jungle of Borneo, surrounded by lush greenery and exotic wildlife. Witness hundreds of crocodiles in their natural habitat and learn about their behavior and conservation efforts. Additionally, get the chance to see rare species of birds that can only be found on Borneo Island. With its diverse range of wildlife and immersive experiences, Jong’s Crocodile Farm promises an unforgettable adventure for visitors of all ages.",
    photos: [
      'lib/assets/images/kuching_activities/jong_crocodile2.png',
      'lib/assets/images/kuching_activities/jong_crocodile3.png',
      'lib/assets/images/kuching_activities/jong_crocodile4.png'
    ],
  ),
  ActivityDetail(
    destinationName: 'Kuching',
    title: "Satang Island Day Trip with Dolphin Watching",
    backgroundImage: 'lib/assets/images/kuching_activities/satang_island1.png',
    location: 'Sarawak',
    price: 380.0,
    description: "Embark on an unforgettable adventure with the Satang Island Day Trip with Dolphin Watching in Sarawak. Witness the graceful Irrawaddy dolphins and sea birds such as Black Tern & White Tern as you cruise along the coastal waters. Experience the thrill of searching for crocodiles in their natural habitat during a mangrove cruise. Dive into the crystal-clear waters of Satang Island for an exhilarating snorkeling session and visit the Sea Turtle Conservation Centre to learn about the conservation efforts for these majestic creatures. With its combination of wildlife encounters and marine activities, this day trip promises a memorable experience for nature enthusiasts and adventure seekers alike.",
    photos: [
      'lib/assets/images/kuching_activities/satang_island2.png',
      'lib/assets/images/kuching_activities/satang_island3.png',
      'lib/assets/images/kuching_activities/satang_island4.png'
    ],
  ),
  ActivityDetail(
    destinationName: 'Kuching',
    title: "Shared Mangrove & Irrawaddy Dolphin Watching",
    backgroundImage: 'lib/assets/images/kuching_activities/shared_magrove1.png',
    location: 'Sarawak',
    price: 292.12,
    description: "Explore the unique ecosystem of Borneo's mangroves and witness the rare and endangered Irrawaddy dolphins on the Shared Mangrove & Irrawaddy Dolphin Watching tour. Cruise along the Santubong River, home to mangroves teeming with weird and wonderful wildlife, including jumping fish, monitor lizards, and monkeys. Experience the tranquility of this natural habitat and keep your eyes peeled for the elusive Irrawaddy dolphins, known to inhabit these waters. This small-group experience includes 2-way transfers from your Kuching city hotel, ensuring a hassle-free and immersive wildlife encounter.",
    photos: [
      'lib/assets/images/kuching_activities/shared_magrove2.png',
      'lib/assets/images/kuching_activities/shared_magrove3.png',
      'lib/assets/images/kuching_activities/shared_magrove4.png'
    ],
  ),
];

  