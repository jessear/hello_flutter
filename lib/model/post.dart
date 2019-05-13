class Post{
  const Post({
    this.title,
    this.author,
    this.imageUrl
  });
  final String title;
  final String author;
  final String imageUrl;
}

final List<Post> posts = [
  Post(
    title:'aaaa',
    author: 'jesse',
    imageUrl:'http://img2.ph.126.net/GhTvKehSBRoYgoJOGu3ulg==/6630866555073707273.jpg'
  ),
  Post(
      title:'bbbb',
      author: 'jesse',
      imageUrl:'http://img2.ph.126.net/eCAM8Hvdyc4u9woaGI05Gg==/6631443798678211202.jpg'
  ),
  Post(
  title:'cccc',
  author: 'jesse',
  imageUrl:'http://img0.ph.126.net/N4REZo3xltUlk3h_QoDIAw==/6630212345654398890.jpg'
  ),
  Post(
      title:'dddd',
      author: 'jesse',
      imageUrl:'http://img1.ph.126.net/nFF0h7OnRVkt92B3y9_EXA==/6630845664352785817.jpg'
  ),
  Post(
  title:'eeee',
  author: 'jesse',
  imageUrl:'http://img1.ph.126.net/2ltXR9VGPXa_DOMjepWa0g==/6630393765072980554.jpg'
  )
];