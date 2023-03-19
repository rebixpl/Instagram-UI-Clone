import 'package:instagram_clone_ui/model/post_model.dart';
import 'package:instagram_clone_ui/model/user_model.dart';

/// URL to get random of images
///
/// https://source.unsplash.com/random?sig=index
/// for example. https://source.unsplash.com/random?sig=21

List<UserModel> users = [
  UserModel(
    username: 'realrealwoman18',
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/tiktok-clone-3ef.appspot.com/o/ig_clone_app%2Fig_profile_pic.jpeg?alt=media&token=ce305661-020a-4ec4-ba79-f5bc951a0e33',
    postsList: profilePostsList,
    name: 'REAL WOMAN 👩 - Al Girls, AI Photos & Al Art',
  ),
  UserModel(
    username: 'ramdhan.official',
    imageUrl:
        'https://images.unsplash.com/photo-1519085360753-af0119f7cbe7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
    postsList: profilePostsList,
    name: 'Ramdhan',
  ),
  UserModel(
    username: 'dais mulyana',
    imageUrl:
        'https://images.unsplash.com/photo-1639149888905-fb39731f2e6c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=928&q=80',
    postsList: profilePostsList,
    name: 'Dais Mulyana',
  ),
  UserModel(
    username: 'rafli',
    imageUrl:
        'https://images.unsplash.com/photo-1674644949503-b77f20451871?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=694&q=80',
    postsList: profilePostsList,
    name: 'Rafli Affandi Putra',
  ),
  UserModel(
    username: 'ergina',
    imageUrl:
        'https://images.unsplash.com/photo-1605993439219-9d09d2020fa5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
    postsList: profilePostsList,
    name: 'Ergina Kamilia Putri',
  ),
  UserModel(
    username: 'fvckbobs',
    imageUrl:
        'https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1160&q=80',
    postsList: profilePostsList,
    name: 'Boby Atmadja',
  ),
  UserModel(
    username: 'wahyu',
    imageUrl: 'https://source.unsplash.com/random?sig=1',
    postsList: profilePostsList,
    name: 'Wahyu Ramdan',
  ),
  UserModel(
    username: 'pacok',
    imageUrl: 'https://source.unsplash.com/random?sig=20',
    postsList: profilePostsList,
    name: 'Musyfik',
  ),
  UserModel(
    username: 'nemo',
    imageUrl: 'https://source.unsplash.com/random?sig=2',
    postsList: profilePostsList,
    name: 'Asep Husni Mubarok',
  ),
  UserModel(
    username: 'saddam',
    imageUrl: 'https://source.unsplash.com/random?sig=4',
    postsList: profilePostsList,
    name: 'Saddam Hussein',
  ),
  UserModel(
    username: 'abeg10',
    imageUrl: 'https://source.unsplash.com/random?sig=6',
    postsList: profilePostsList,
    name: 'Alghifari',
  ),
  UserModel(
    username: 'rizandi',
    imageUrl: 'https://source.unsplash.com/random?sig=8',
    postsList: profilePostsList,
    name: 'M Rizandi',
  ),
  UserModel(
    username: 'dindameilina',
    imageUrl: 'https://source.unsplash.com/random?sig=10',
    postsList: profilePostsList,
    name: 'Dinda Meilina',
  ),
  UserModel(
    username: 'dea',
    imageUrl: 'https://source.unsplash.com/random?sig=12',
    postsList: profilePostsList,
    name: 'Dea Sunara',
  ),
  UserModel(
    username: 'uun19',
    imageUrl: 'https://source.unsplash.com/random?sig=14',
    postsList: profilePostsList,
    name: 'Nur',
  ),
  UserModel(
    username: 'nida',
    imageUrl: 'https://source.unsplash.com/random?sig=16',
    postsList: profilePostsList,
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
  // 5
  PostModel(
    imageUrl: 'https://source.unsplash.com/random?sig=21',
    isReel: false,
    isCarousel: false,
    caption: 'lorem ipsum',
    likesAmount: 20,
    commentsAmount: 10,
    hashtags: '#hotgirl #test',
    carouselImageUrls: [],
  ),
  // 6
  PostModel(
    imageUrl: 'https://source.unsplash.com/random?sig=22',
    isReel: false,
    isCarousel: false,
    caption: 'lorem ipsum',
    likesAmount: 20,
    commentsAmount: 10,
    hashtags: '#hotgirl #test',
    carouselImageUrls: [],
  ),
];
