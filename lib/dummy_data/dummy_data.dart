import 'package:instagram_clone_ui/dummy_data/post_lists.dart';
import 'package:instagram_clone_ui/model/post_model.dart';
import 'package:instagram_clone_ui/model/user_model.dart';

/// URL to get random of images
///
/// https://source.unsplash.com/random?sig=index
/// for example. https://source.unsplash.com/random?sig=21

// Currently used post list data source
List<List<PostModel>> postListsSource = postListsRandom;

List<UserModel> users = [
  UserModel(
    username: 'influcom_pl',
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/tiktok-clone-3ef.appspot.com/o/ig_clone_app%2Fposts%2FNew%20Logo.png?alt=media&token=b22af923-db59-46eb-8be6-f9491a30b229',
    postsList: postLists[1],
    name: 'INFLUCOM - Influencer Marketing Platform',
    followersAmount: 3119,
    followingAmount: 903,
  ),
  UserModel(
    username: 'ramdhan.official',
    imageUrl:
        'https://images.unsplash.com/photo-1519085360753-af0119f7cbe7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
    postsList: postListsSource[1],
    name: 'Ramdhan',
    followersAmount: 43,
    followingAmount: 355,
  ),
  UserModel(
    username: 'dais mulyana',
    imageUrl:
        'https://images.unsplash.com/photo-1639149888905-fb39731f2e6c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=928&q=80',
    postsList: postListsSource[2],
    name: 'Dais Mulyana',
    followersAmount: 3339,
    followingAmount: 6855,
  ),
  UserModel(
    username: 'rafli',
    imageUrl:
        'https://images.unsplash.com/photo-1674644949503-b77f20451871?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=694&q=80',
    postsList: postListsSource[3],
    name: 'Rafli Affandi Putra',
    followersAmount: 29,
    followingAmount: 35,
  ),
  UserModel(
    username: 'ergina',
    imageUrl:
        'https://images.unsplash.com/photo-1605993439219-9d09d2020fa5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
    postsList: postListsSource[4],
    name: 'Ergina Kamilia Putri',
    followersAmount: 399,
    followingAmount: 855,
  ),
  UserModel(
    username: 'fvckbobs',
    imageUrl:
        'https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1160&q=80',
    postsList: postListsSource[5],
    name: 'Boby Atmadja',
    followersAmount: 23,
    followingAmount: 38,
  ),
  UserModel(
    username: 'wahyu',
    imageUrl: 'https://source.unsplash.com/random?sig=1',
    postsList: postListsSource[6],
    name: 'Wahyu Ramdan',
    followersAmount: 12312,
    followingAmount: 4322,
  ),
  UserModel(
    username: 'pacok',
    imageUrl: 'https://source.unsplash.com/random?sig=20',
    postsList: postListsSource[7],
    name: 'Musyfik',
    followersAmount: 38123,
    followingAmount: 91,
  ),
  UserModel(
    username: 'nemo',
    imageUrl: 'https://source.unsplash.com/random?sig=2',
    postsList: postListsSource[8],
    name: 'Asep Husni Mubarok',
    followersAmount: 399,
    followingAmount: 35,
  ),
  UserModel(
    username: 'saddam',
    imageUrl: 'https://source.unsplash.com/random?sig=4',
    postsList: postListsSource[9],
    name: 'Saddam Hussein',
    followersAmount: 5345,
    followingAmount: 231,
  ),
  UserModel(
    username: 'abeg10',
    imageUrl: 'https://source.unsplash.com/random?sig=6',
    postsList: postListsSource[10],
    name: 'Alghifari',
    followersAmount: 10,
    followingAmount: 23,
  ),
  UserModel(
    username: 'rizandi',
    imageUrl: 'https://source.unsplash.com/random?sig=8',
    postsList: postListsSource[11],
    name: 'M Rizandi',
    followersAmount: 4441,
    followingAmount: 312,
  ),
  UserModel(
    username: 'dindameilina',
    imageUrl: 'https://source.unsplash.com/random?sig=10',
    postsList: postListsSource[12],
    name: 'Dinda Meilina',
    followersAmount: 441,
    followingAmount: 3234,
  ),
  UserModel(
    username: 'dea',
    imageUrl: 'https://source.unsplash.com/random?sig=12',
    postsList: postListsSource[13],
    name: 'Dea Sunara',
    followersAmount: 0,
    followingAmount: 13,
  ),
  UserModel(
    username: 'uun19',
    imageUrl: 'https://source.unsplash.com/random?sig=14',
    postsList: postListsSource[14],
    name: 'Nur',
    followersAmount: 92,
    followingAmount: 122,
  ),
  UserModel(
    username: 'nida',
    imageUrl: 'https://source.unsplash.com/random?sig=16',
    postsList: postListsSource[15],
    name: 'Nida Aulia',
    followersAmount: 799,
    followingAmount: 335,
  ),
];

List<String> shopList = List.generate(
    10, (index) => 'https://source.unsplash.com/random?sig=$index');
