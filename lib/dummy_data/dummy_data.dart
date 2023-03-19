import 'package:instagram_clone_ui/model/post_model.dart';
import 'package:instagram_clone_ui/model/user_model.dart';

/// URL to get random of images
///
/// https://source.unsplash.com/random?sig=index

List<UserModel> users = [
  UserModel(
    username: 'realrealwoman18',
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/tiktok-clone-3ef.appspot.com/o/ig_clone_app%2Fig_profile_pic.jpeg?alt=media&token=ce305661-020a-4ec4-ba79-f5bc951a0e33',
    imagePostUrl:
        'https://images.unsplash.com/photo-1674908850980-13d381e2c5f8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=684&q=80',
    name: 'REAL WOMAN 👩 - Al Girls, AI Photos & Al Art',
  ),
  UserModel(
    username: 'ramdhan.official',
    imageUrl:
        'https://images.unsplash.com/photo-1519085360753-af0119f7cbe7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
    imagePostUrl:
        'https://images.unsplash.com/photo-1674296115670-8f0e92b1fddb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80',
    name: 'Ramdhan',
  ),
  UserModel(
    username: 'dais mulyana',
    imageUrl:
        'https://images.unsplash.com/photo-1639149888905-fb39731f2e6c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=928&q=80',
    imagePostUrl:
        'https://images.unsplash.com/photo-1674704740380-89e62a20f773?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
    name: 'Dais Mulyana',
  ),
  UserModel(
    username: 'rafli',
    imageUrl:
        'https://images.unsplash.com/photo-1674644949503-b77f20451871?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=694&q=80',
    imagePostUrl:
        'https://images.unsplash.com/photo-1669237504319-cc1db5f4fd69?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
    name: 'Rafli Affandi Putra',
  ),
  UserModel(
    username: 'ergina',
    imageUrl:
        'https://images.unsplash.com/photo-1605993439219-9d09d2020fa5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
    imagePostUrl:
        'https://images.unsplash.com/photo-1674156395389-2574986a9c50?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
    name: 'Ergina Kamilia Putri',
  ),
  UserModel(
    username: 'fvckbobs',
    imageUrl:
        'https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1160&q=80',
    imagePostUrl:
        'https://images.unsplash.com/photo-1647534218658-d160bfb47cc2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
    name: 'Boby Atmadja',
  ),
  UserModel(
    username: 'wahyu',
    imageUrl: 'https://source.unsplash.com/random?sig=1',
    imagePostUrl: 'https://source.unsplash.com/random?sig=2',
    name: 'Wahyu Ramdan',
  ),
  UserModel(
    username: 'pacok',
    imageUrl: 'https://source.unsplash.com/random?sig=20',
    imagePostUrl: 'https://source.unsplash.com/random?sig=21',
    name: 'Musyfik',
  ),
  UserModel(
    username: 'nemo',
    imageUrl: 'https://source.unsplash.com/random?sig=2',
    imagePostUrl: 'https://source.unsplash.com/random?sig=3',
    name: 'Asep Husni Mubarok',
  ),
  UserModel(
    username: 'saddam',
    imageUrl: 'https://source.unsplash.com/random?sig=4',
    imagePostUrl: 'https://source.unsplash.com/random?sig=5',
    name: 'Saddam Hussein',
  ),
  UserModel(
    username: 'abeg10',
    imageUrl: 'https://source.unsplash.com/random?sig=6',
    imagePostUrl: 'https://source.unsplash.com/random?sig=7',
    name: 'Alghifari',
  ),
  UserModel(
    username: 'rizandi',
    imageUrl: 'https://source.unsplash.com/random?sig=8',
    imagePostUrl: 'https://source.unsplash.com/random?sig=9',
    name: 'M Rizandi',
  ),
  UserModel(
    username: 'dindameilina',
    imageUrl: 'https://source.unsplash.com/random?sig=10',
    imagePostUrl: 'https://source.unsplash.com/random?sig=11',
    name: 'Dinda Meilina',
  ),
  UserModel(
    username: 'dea',
    imageUrl: 'https://source.unsplash.com/random?sig=12',
    imagePostUrl: 'https://source.unsplash.com/random?sig=13',
    name: 'Dea Sunara',
  ),
  UserModel(
    username: 'uun19',
    imageUrl: 'https://source.unsplash.com/random?sig=14',
    imagePostUrl: 'https://source.unsplash.com/random?sig=15',
    name: 'Nur',
  ),
  UserModel(
    username: 'nida',
    imageUrl: 'https://source.unsplash.com/random?sig=16',
    imagePostUrl: 'https://source.unsplash.com/random?sig=17',
    name: 'Nida Aulia',
  ),
];

List<String> shopList = List.generate(
    10, (index) => 'https://source.unsplash.com/random?sig=$index');

List<PostModel> profilePostsList = [
  // 1
  PostModel(
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/tiktok-clone-3ef.appspot.com/o/ig_clone_app%2Fposts%2FScreenshot%202023-03-19%20at%2010.40.53%20AM.png?alt=media&token=d4db90a9-06e9-480f-8d4f-2a19175cc768',
    isReel: true,
    isCarousel: false,
    caption: "lorem ipsum",
    likesAmount: 106,
    commentsAmount: 20,
    hashtags: '#hotgirl #test',
    carouselImageUrls: [],
  ),
  // 2
  PostModel(
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/tiktok-clone-3ef.appspot.com/o/ig_clone_app%2Fposts%2FScreenshot%202023-03-19%20at%2010.41.19%20AM.png?alt=media&token=f991e122-8706-4df3-88b3-9bf527b08af1',
    isReel: true,
    isCarousel: false,
    caption: "lorem ipsum",
    likesAmount: 106,
    commentsAmount: 20,
    hashtags: '#hotgirl #test',
    carouselImageUrls: [],
  ),
  // 3
  PostModel(
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/tiktok-clone-3ef.appspot.com/o/ig_clone_app%2Fposts%2F336036505_178016208366951_4946357566349123878_n.jpg?alt=media&token=115c4732-79c0-40bf-968c-c3f6e99e166f',
    isReel: false,
    isCarousel: false,
    caption: "lorem ipsum",
    likesAmount: 106,
    commentsAmount: 20,
    hashtags: '#hotgirl #test',
    carouselImageUrls: [],
  ),
  // 4
  PostModel(
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/tiktok-clone-3ef.appspot.com/o/ig_clone_app%2Fposts%2FScreenshot%202023-03-19%20at%2010.45.54%20AM.png?alt=media&token=44f3efbe-a139-461c-a1ed-1181ec11c9a9',
    isReel: false,
    isCarousel: true,
    caption: "lorem ipsum",
    likesAmount: 106,
    commentsAmount: 20,
    hashtags: '#hotgirl #test',
    carouselImageUrls: [],
  ),
];
