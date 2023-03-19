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
    username: 'realrealwoman18',
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/tiktok-clone-3ef.appspot.com/o/ig_clone_app%2Fig_profile_pic.jpeg?alt=media&token=ce305661-020a-4ec4-ba79-f5bc951a0e33',
    postsList: postLists[0],
    name: 'REAL WOMAN 👩 - Al Girls, AI Photos & Al Art',
  ),
  UserModel(
    username: 'ramdhan.official',
    imageUrl:
        'https://images.unsplash.com/photo-1519085360753-af0119f7cbe7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
    postsList: postListsSource[1],
    name: 'Ramdhan',
  ),
  UserModel(
    username: 'dais mulyana',
    imageUrl:
        'https://images.unsplash.com/photo-1639149888905-fb39731f2e6c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=928&q=80',
    postsList: postListsSource[2],
    name: 'Dais Mulyana',
  ),
  UserModel(
    username: 'rafli',
    imageUrl:
        'https://images.unsplash.com/photo-1674644949503-b77f20451871?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=694&q=80',
    postsList: postListsSource[3],
    name: 'Rafli Affandi Putra',
  ),
  UserModel(
    username: 'ergina',
    imageUrl:
        'https://images.unsplash.com/photo-1605993439219-9d09d2020fa5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
    postsList: postListsSource[4],
    name: 'Ergina Kamilia Putri',
  ),
  UserModel(
    username: 'fvckbobs',
    imageUrl:
        'https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1160&q=80',
    postsList: postListsSource[5],
    name: 'Boby Atmadja',
  ),
  UserModel(
    username: 'wahyu',
    imageUrl: 'https://source.unsplash.com/random?sig=1',
    postsList: postListsSource[6],
    name: 'Wahyu Ramdan',
  ),
  UserModel(
    username: 'pacok',
    imageUrl: 'https://source.unsplash.com/random?sig=20',
    postsList: postListsSource[7],
    name: 'Musyfik',
  ),
  UserModel(
    username: 'nemo',
    imageUrl: 'https://source.unsplash.com/random?sig=2',
    postsList: postListsSource[8],
    name: 'Asep Husni Mubarok',
  ),
  UserModel(
    username: 'saddam',
    imageUrl: 'https://source.unsplash.com/random?sig=4',
    postsList: postListsSource[9],
    name: 'Saddam Hussein',
  ),
  UserModel(
    username: 'abeg10',
    imageUrl: 'https://source.unsplash.com/random?sig=6',
    postsList: postListsSource[10],
    name: 'Alghifari',
  ),
  UserModel(
    username: 'rizandi',
    imageUrl: 'https://source.unsplash.com/random?sig=8',
    postsList: postListsSource[11],
    name: 'M Rizandi',
  ),
  UserModel(
    username: 'dindameilina',
    imageUrl: 'https://source.unsplash.com/random?sig=10',
    postsList: postListsSource[12],
    name: 'Dinda Meilina',
  ),
  UserModel(
    username: 'dea',
    imageUrl: 'https://source.unsplash.com/random?sig=12',
    postsList: postListsSource[13],
    name: 'Dea Sunara',
  ),
  UserModel(
    username: 'uun19',
    imageUrl: 'https://source.unsplash.com/random?sig=14',
    postsList: postListsSource[14],
    name: 'Nur',
  ),
  UserModel(
    username: 'nida',
    imageUrl: 'https://source.unsplash.com/random?sig=16',
    postsList: postListsSource[15],
    name: 'Nida Aulia',
  ),
];

List<String> shopList = List.generate(
    10, (index) => 'https://source.unsplash.com/random?sig=$index');
