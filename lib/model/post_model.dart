// ignore_for_file: public_member_api_docs, sort_constructors_first
class PostModel {
  final String imageUrl;
  final bool isReel;
  final bool isCarousel;
  final List<String> carouselImageUrls;
  final String caption;
  final int likesAmount;
  final int commentsAmount;
  final String hashtags;

  PostModel({
    required this.imageUrl,
    required this.isReel,
    required this.isCarousel,
    required this.caption,
    required this.likesAmount,
    required this.commentsAmount,
    required this.hashtags,
    required this.carouselImageUrls,
  });

  @override
  String toString() {
    return 'PostModel(imageUrl: $imageUrl, isReel: $isReel, isCarousel: $isCarousel, carouselImageUrls: $carouselImageUrls, caption: $caption, likesAmount: $likesAmount, commentsAmount: $commentsAmount, hashtags: $hashtags)';
  }
}
