import 'dart:math';

import 'package:instagram_clone_ui/model/post_model.dart';

/// Post Lists - Custom Made
List<List<PostModel>> postLists = [postListA];

List<PostModel> postListA = [
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

/// Post Lists - Randomly Generated
List<List<PostModel>> postListsRandom = List.generate(
  16,
  (index) => List.generate(
    10,
    (index) => PostModel(
      imageUrl:
          'https://source.unsplash.com/random?sig=${Random().nextInt(1000)}',
      isReel: Random().nextBool(),
      isCarousel:
          Random().nextBool(), //todo: fix this icons intersecting each other
      caption: 'lorem ipsum',
      likesAmount: Random().nextInt(10000),
      commentsAmount: Random().nextInt(889),
      hashtags: '#hotgirl #test',
      carouselImageUrls: [],
    ),
  ),
);
