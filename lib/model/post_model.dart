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
}
