class PlanetInfo {
  final int position;
  final String name;
  final String website;
  final String iconImage;
  final String description;
  final List<String> images;

  PlanetInfo(
    this.position, {
    this.name,
    this.website,
    this.iconImage,
    this.description,
    this.images,
  });
}

List<PlanetInfo> planets = [
  PlanetInfo(1,
      name: 'Twitter',
      website: 'Twitter.com',
      iconImage: 'assets/Twitter.png',
      description:
          "Twitter is an American microblogging and social networking service on which users post and interact with messages known as tweets. Registered users can post, like, and retweet tweets, but unregistered users can only read them.",),
  PlanetInfo(2,
      name: 'Instagram',
      website: 'Instagram.com',
      iconImage: 'assets/Instagram.png',
      description:
          "Instagram is an American photo and video-sharing social networking service owned by Facebook, Inc. It was created by Kevin Systrom and Mike Krieger and launched in October 2010 on iOS.",),
  PlanetInfo(3,
      name: 'Facebook',
      website: 'Facebook.com',
      iconImage: 'assets/Facebook.png',
      description:
          "Facebook is a social networking site that makes it easy for you to connect and share with family and friends online. Originally designed for college students, Facebook was created in 2004 by Mark Zuckerberg while he was enrolled at Harvard University.",
      ),
  PlanetInfo(4,
      name: 'YouTube',
      website: 'Youtube.com',
      iconImage: 'assets/Youtube.png',
      description:
          "YouTube is a video sharing service that allows users to watch videos posted by other users and upload videos of their own. ... While several companies and organizations also use YouTube to promote their business, the vast majority of YouTube videos are created and uploaded by amateurs.",
      ),
  PlanetInfo(5,
      name: 'Google',
      website: 'Google.com',
      iconImage: 'assets/Google.png',
      description:
          "Originally known as BackRub. Google is a search engine that started development in 1996 by Sergey Brin and Larry Page as a research project at Stanford University to find files on the Internet. Larry and Sergey later decided the name of their search engine needed to change and decide upon Google, which is inspired from the term googol.",
     ),
];
