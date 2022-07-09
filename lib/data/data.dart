import '../model/post.dart';
import '../model/projects.dart';

List<Post> posts = [
  Post(
    username: "Rishabh Anand",
    postimage:
        'https://live.staticflickr.com/65535/52186896930_9ec08a0913_6k.jpg',
    posttext:
        "As someone who has lived with their grandparents since young, helping the elderly comes innate to me. The satisfaction of helping them with simple tasks is unparalled with any of the feats I have achieved in my Machine Learning endeavours. Strongly urge all to join me next week as",
    timeAgo: '2d',
    totalComments: '300',
    totalLikes: '23',
    userCaption: 'Elderly | Machine Learning | Change Maker',
    useravatar: "https://nuscomputing.com/assets/RishabhAnand.jpg",
  ),
  Post(
    username: "Kaushik Rangaraj",
    postimage: 'https://live.staticflickr.com/65535/52172333362_e735b8bfaa.jpg',
    posttext:
        "I wrote my first hello world at the age of 8 and immediately fell in love with the art of coding. Unlike me, most of my peers did not have the opportunity to discover their potential passion for coding at a young age, which may hinder their performace. CodeCamp allows me to ensure this does not happen as I am able to teach kids how to code, and introduce them to the beutiful art of coding. I hope that with this, more kids start coding and continue it when they're older.",
    timeAgo: '2d',
    totalComments: '300',
    totalLikes: '23',
    userCaption: 'Data Analyst @ Google | Children & Teens Education',
    useravatar: "https://nuscomputing.com/assets/LKaushikRangaraj.jpg",
  ),
  Post(
    username: "Arnav Gupta",
    postimage: 'https://live.staticflickr.com/65535/48320611806_9e36b6b2dd.jpg',
    posttext:
        "I have found that among its other benefits, giving liberates the soul of the giver. Helping the less privileged has always been a religion to me, and I have started my own organisation to make my vision a reality. Outreach like this not helps those in need, but also allows us as humans to gain some peace, and I find that really beautiful. No one can replace the smile that you bring to others. Keep it going everyone! P.S. Raveen, you're amazing.",
    timeAgo: '2d',
    totalComments: '300',
    totalLikes: '23',
    userCaption: 'Vice President @ Computing Giving Club | VP @ JP Morgan',
    useravatar: "https://nuscomputing.com/assets/ArnavGupta.jpg",
  ),
  Post(
    username: "Lo Zhao Wei",
    postimage:
        'https://images.unsplash.com/photo-1593642634524-b40b5baae6bb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2689&q=80',
    posttext:
        "Money is not the only commodity that is fun to give. We can give time, we can give our expertise, we can give our love, or simply give a smile. What does that cost? The point is, none of us can ever run out of something worthwhile to give.",
    timeAgo: '2d',
    totalComments: '300',
    totalLikes: '23',
    userCaption: 'Social Work | Panda @FoodPanda',
    useravatar: "https://nuscomputing.com/assets/LoZhaoWei.jpg",
  ),
  Post(
    username: "Roy Chua",
    postimage: 'https://live.staticflickr.com/879/42889990962_cb348e9a9f.jpg',
    posttext:
        "As we begin our journey of giving, it's important that we ourselves stay fit and healthy for the task at hand. Training our volunteers is just one of the many things I love to do, and I urge all other organisations to do the same and ensure the well-being of their volunteers.",
    timeAgo: '2d',
    totalComments: '300',
    totalLikes: '23',
    userCaption: 'People Person | CPO @ BeepBeep',
    useravatar: "https://nuscomputing.com/assets/RoyChua.jpg",
  ),
  Post(
    username: "Alyssa Savier",
    postimage: 'https://live.staticflickr.com/4545/38292907322_9d9b9fd908.jpg',
    posttext:
        "I am really proud of the hardwork and effort put in place to make ComClub a success. I am thankful for everyone taking time off their busy schedules to do something for the community. I hope everyone had a greatmtime and see the fruits of their labour; I'm sure the beneficiaries have! ",
    timeAgo: '2d',
    totalComments: '300',
    totalLikes: '23',
    userCaption: 'Safety @TikTok | Community Manager',
    useravatar: "https://nuscomputing.com/assets/AlyssaSavier.jpg",
  ),
];

var PROJECTS_CATEGORIES = [
  Projects(
    name: 'CodeCamp 2022',
    image: 'https://live.staticflickr.com/65535/52172333362_e735b8bfaa.jpg',
    gallery: [
      'https://live.staticflickr.com/65535/52173839270_cf3fc25acf.jpg',
      'https://live.staticflickr.com/65535/52172333902_9116b745da.jpg',
      'https://live.staticflickr.com/65535/52172334212_2f6082aabb.jpg',
    ],
    description:
        "NUS CodeCamp 2022 is a project by the Community Service Cell, under the Children Service Project, for School of Computing (SoC). NUS CodeCamp 2022 involves engaging Primary 5 to Secondary 2 children from lower income households. Through interactive lessons, we will introduce them to computational thinking using python. We hope this will kickstart their interest in programming, develop their cognitive skills and provide them with a fun enrichment programme to look forward to.",
    fundings_recieved: 43000,
    fundings_needed: 100000,
    manpower: "27 / 100",
    organisation: "NUS Students Computing Club",
    likes: 204,
  ),
  Projects(
    name: 'Elderly Digital Workshop',
    image: 'https://live.staticflickr.com/65535/52186896675_0e7c4b8bae.jpg',
    gallery: [
      'https://live.staticflickr.com/65535/52185389252_99bce99fb3.jpg',
      'https://live.staticflickr.com/65535/52186898580_927906a3d4.jpg',
      'https://live.staticflickr.com/65535/52186425458_ae5cb30cde.jpg',
    ],
    description:
        "As our world continues to rapidly digitalise, it is becoming increasingly more difficult for the elderly to keep up as there is always something new to learn about. Furthermore, as the pandemic continues to separate families, it is more difficult for the elderly to get help with technology from their loved ones and also keep in touch with them. For this reason, the Elderly Service Committee from the NUS Students Computing Club will be collaborating with Heartware Network to host a Digital Learning Workshop dedicated to the elderly. Over the course of four sessions, volunteers will guide seniors on different digital services, depending on what the seniors would like help with. We will also have specific lesson plans on topics we would like to share with the elderly, which includes: how to avoid and discern scam attempts, setting up social media accounts to keep in touch with their loved ones, teaching them how to use cashless payment methods - such as Paylah! and GrabPay, or how to use food delivery apps like Foodpanda or Grab. This workshop will be a weekly Saturday event during the month of June, lasting around 2 hours per session, and hosted in collaboration with Heartware Network.",
    fundings_recieved: 43000,
    fundings_needed: 100000,
    manpower: "27 / 100",
    organisation: "NUS Students Computing Club",
    likes: 200,
  ),
  Projects(
    name: 'Wikithon',
    image: 'https://live.staticflickr.com/65535/52173585554_da2651e953.jpg',
    gallery: [
      'https://live.staticflickr.com/65535/52173347178_59fefbecd9.jpg',
      'https://live.staticflickr.com/65535/52173336161_f9e1c619a5.jpg',
      'https://live.staticflickr.com/65535/52173346943_95aa8421a7.jpg',
    ],
    description:
        "SocialCollab Wikithon will be a joint collaboration between NUS Students Computing Club, SocialCollab and College of Alice and Peter Tan (CAPT). SocialCollab is an initiative which kickstarts and supports research projects led by student groups from institutions of higher learning to help map out social needs and community assets in Singapore. School of Computing  students will be involved by contributing to a collective knowledge base on social or policy issues of their choice in the form of a wikithon. These students will be paired up with CAPTains who are knowledgeable in their preferred subject area, where they will work together to conduct research and provide more information on social needs and community assets in Singapore. After the event, groups will have the opportunity to come up with a tech solution that improves the existing situation in their respective communities.",
    fundings_recieved: 0,
    fundings_needed: 100000,
    manpower: "27 / 100",
    organisation: "NUS Students Computing Club",
    likes: 20,
  ),
  Projects(
    name: 'Meliorium',
    image: 'https://live.staticflickr.com/65535/49476810417_157cafcc02.jpg',
    gallery: [
      'https://live.staticflickr.com/65535/49498229742_28a4ba3c42.jpg',
      'https://live.staticflickr.com/65535/49054846458_b15c5131bb.jpg',
      'https://live.staticflickr.com/65535/49504500593_caac1fbe8c.jpg',
    ],
    description:
        "Meliorium aims to promote different cultures and aid international students in their assimilation into NUS School of Computing (SoC), both in terms of learning the culture of SoC, as well as familiarising themselves with the physical orientation of the faculty. Coming from different parts of the world, it is likely that international students may not have many friends in Singapore, let alone in SoC. Furthermore, the prevailing COVID-19 situation would have posed an even greater difficulty for international students to facilitate their own interactions with local students. As such, Meliorium serves as a platform to break this barrier, bringing students together in a light-spirited setting and set international students toward a vibrant student life in SoC.",
    fundings_recieved: 0,
    fundings_needed: 100000,
    manpower: "27 / 100",
    organisation: "NUS Students Computing Club",
    likes: 20,
  ),
];
