import '../model/post.dart';
import '../model/projects.dart';

List<Post> posts = [
  Post(
    username: "Rish",
    postimage:
        'https://img-cdn.inc.com/image/upload/images/panoramic/GettyImages-1236193308_505783_sizvhl.jpg',
    posttext:
        "I'm proud to say that I'm a ML Master. Also first day at work, kinda nervous",
    timeAgo: '2d',
    totalComments: '300',
    totalLikes: '23',
    userCaption: 'Data Science | Machine Learning | A Nerd',
    useravatar: "https://nuscomputing.com/assets/RishabhAnand.jpg",
  ),
  Post(
    username: "Kaushik",
    postimage:
        'https://upload.wikimedia.org/wikipedia/commons/3/32/Googleplex_HQ_%28cropped%29.jpg',
    posttext:
        "I love Data. I love Google cuz its collecting all your data. More data for me.",
    timeAgo: '2d',
    totalComments: '300',
    totalLikes: '23',
    userCaption: 'Data Analyst @ Google | Sport Director @ Computing Club',
    useravatar: "https://nuscomputing.com/assets/LKaushikRangaraj.jpg",
  ),
  Post(
    username: "Arnav Gupta",
    postimage:
        'https://i.natgeofe.com/n/4def1048-f5e5-4973-ad3a-e188a97d363f/regents-street-london-england.jpg',
    posttext:
        "So glad I moved here. Everything is amazing here, except that Raveen is not here. Miss that guy",
    timeAgo: '2d',
    totalComments: '300',
    totalLikes: '23',
    userCaption: 'Vice President @ Computing Club',
    useravatar: "https://nuscomputing.com/assets/ArnavGupta.jpg",
  ),
  Post(
    username: "Tony",
    postimage:
        'https://images.unsplash.com/photo-1593642634524-b40b5baae6bb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2689&q=80',
    posttext: "Hey there I am using Linkedin. ",
    timeAgo: '2d',
    totalComments: '300',
    totalLikes: '23',
    userCaption: 'Data Science | Machine Learning',
    useravatar:
        "https://www.pinkvilla.com/files/styles/contentpreview/public/Tony%20Stark%20main.jpg?itok=dOOaowa0",
  ),
  Post(
    username: "Tony",
    postimage:
        'https://images.unsplash.com/photo-1593642634524-b40b5baae6bb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2689&q=80',
    posttext: "Hey there I am using Linkedin. ",
    timeAgo: '2d',
    totalComments: '300',
    totalLikes: '23',
    userCaption: 'Data Science | Machine Learning',
    useravatar:
        "https://www.pinkvilla.com/files/styles/contentpreview/public/Tony%20Stark%20main.jpg?itok=dOOaowa0",
  ),
  Post(
    username: "Tony",
    postimage:
        'https://images.unsplash.com/photo-1593642634524-b40b5baae6bb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2689&q=80',
    posttext: "Hey there I am using Linkedin. ",
    timeAgo: '2d',
    totalComments: '300',
    totalLikes: '23',
    userCaption: 'Data Science | Machine Learning',
    useravatar:
        "https://www.pinkvilla.com/files/styles/contentpreview/public/Tony%20Stark%20main.jpg?itok=dOOaowa0",
  ),
];

var PROJECTS_CATEGORIES = [
  Projects(
    name: 'Batam Build',
    image: 'https://nuscomputing.com/assets/LoZhaoWei.jpg',
    gallery: [
      'assets/images/batamBuild1.webp',
      'assets/images/batamBuild2.jpeg',
      'assets/images/batamBuild3.webp',
    ],
    description:
        "Don't have enough time to commit to a Global Village trip or looking for a nearer destination? Build with us on Batam Island instead! Batam Build is designed as a short-term alternative for those who are unable to take a long break. Builds can be as short as 1 day, where participants can leave in the morning, build for half a day and return to Singapore in the evening. The maximum trip length for Batam Build is 2 days. Since 2014, Habitat's building efforts in Batam have been focused on transforming Kabil Village, a sub-district of Nongsa located in the Western side of the island. 40% of its over 20,000 residents live in substandard houses built using scrap wood and tin sheets. These small shacks are susceptible to water leaks, floods and sometimes structural collapse during the monsoon season. Habitat aims to improve the standard of living for 1,000 families through the reconstruction of new homes, improving the current water, drainage and electricity system.",
    fundings_recieved: 43000,
    fundings_needed: 100000,
    manpower: "27 / 100",
    organisation: "Habitat for Humanity Singapore",
    likes: 204,
  ),
  Projects(
    name: 'Global Village',
    image: 'https://nuscomputing.com/assets/AlyssaSavier.jpg',
    gallery: [
      'assets/images/globalVillage1.jpg',
      'assets/images/globalVillage2.jpg',
      'assets/images/globalVillage3.jpg',
    ],
    description:
        "About Global Village: Building safe & affordable homes for families living in poverty Global Village gives volunteers in Singapore the opportunity to travel abroad and work with low-income communities across Asia-Pacific to improve families' access to decent living conditions. Volunteers will work as a team alongside the families that Habitat partner to build safe and affordable houses that these families can call home. Working side-by-side with the local community also offers the opportunity to immerse yourselves in the local culture and experience daily life in the host community. More importantly, the experience transforms lives: both for the volunteers and for partner families who see that there are “outsiders” who care enough to help them break the cycle of poverty.",
    fundings_recieved: 43000,
    fundings_needed: 100000,
    manpower: "27 / 100",
    organisation: "Habitat for Humanity Singapore",
    likes: 200,
  ),
  Projects(
    name: 'V·Village',
    image: 'https://nuscomputing.com/assets/RoyChua.jpg',
    gallery: [
      'assets/images/virtualVillage1.jpg',
      'assets/images/virtualVillage2.jpg',
      'assets/images/virtualVillage3.jpg',
    ],
    description:
        "V·Village (Virtual Village) is a way for you to transport yourself live to a Habitat house building project you support, wherever it may be in the world. Although it has been two years since we have been unable to travel for overseas builds, we still firmly believe that we have a responsibility to fight poverty not just locally but support overseas housing needs. Many families have a hard time thriving at home during the pandemic. Donate and witness the house transformation here in our time lapse photo. Your donation will go a long way to ensure that more homeowners have a safe and secure place to call home.",
    fundings_recieved: 0,
    fundings_needed: 100000,
    manpower: "27 / 100",
    organisation: "Habitat for Humanity Singapore",
    likes: 20,
  ),
  Projects(
    name: 'V·Village',
    image: 'https://nuscomputing.com/assets/RoyChua.jpg',
    gallery: [
      'assets/images/virtualVillage1.jpg',
      'assets/images/virtualVillage2.jpg',
      'assets/images/virtualVillage3.jpg',
    ],
    description:
        "V·Village (Virtual Village) is a way for you to transport yourself live to a Habitat house building project you support, wherever it may be in the world. Although it has been two years since we have been unable to travel for overseas builds, we still firmly believe that we have a responsibility to fight poverty not just locally but support overseas housing needs. Many families have a hard time thriving at home during the pandemic. Donate and witness the house transformation here in our time lapse photo. Your donation will go a long way to ensure that more homeowners have a safe and secure place to call home.",
    fundings_recieved: 0,
    fundings_needed: 100000,
    manpower: "27 / 100",
    organisation: "Habitat for Humanity Singapore",
    likes: 20,
  ),
];
