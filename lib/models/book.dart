class Book {
  final String imageUrl;
  final String title;
  final String summary;
  final String ratingStar;
  final String genre;

  Book({
    required this.imageUrl,
    required this.title,
    required this.summary,
    required this.ratingStar,
    required this.genre,
  });
}

List<Book> books = [
  Book(
    imageUrl:
        'https://fccmansfield.org/img/mockingbird-novel-by-kathryn-erskine-6.jpg',
    title: 'Mocking Bird',
    summary:
        'Unlucky librarians are surrounded solely by people who agree with their opinions.Folks draw battle lines in the sand and declare that a book is either infinitely lovable and the greatest thing since sliced bread, or loathsome beyond belief, the words shaming the very paper they are printed upon. This year, , one particular book has earned that honor.',
    ratingStar: '⭐⭐⭐⭐',
    genre: 'Historical fiction',
  ),
  Book(
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7a/The_Great_Gatsby_Cover_1925_Retouched.jpg/220px-The_Great_Gatsby_Cover_1925_Retouched.jpg',
    title: 'The Great Gatsby',
    summary:
        'The Great Gatsby is a 1925 novel by American writer F. Scott Fitzgerald. Set in the Jazz Age on Long Island, near New York City, the novel depicts first-person narrator Nick Carraway interactions with mysterious millionaire Jay Gatsby and Gatsbys obsession to reunite with his former lover, Daisy Buchanan.',
    ratingStar: '⭐⭐',
    genre: 'Tragedy',
  ),
  Book(
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/en/1/1f/Lovely_Bones_cover.jpg',
    title: "The Lovely Book",
    summary:
        'The Lovely Bones is a 2002 novel by American writer Alice Sebold. It is the story of a teenage girl who, after being raped and murdered, watches from her personal Heaven as her family and friends struggle to move on with their lives while she comes to terms with her own death. The novel received critical praise and became an instant bestseller. A film adaptation, directed by Peter Jackson, who personally purchased the rights, was released in 2009. The novel was also later adapted as a play of the same name, which premiered in England in 2018.',
    ratingStar: '⭐⭐⭐⭐',
    genre: 'Novel',
  ),
  Book(
    imageUrl:
        'https://imgv2-2-f.scribdassets.com/img/audiobook/406076487/original/798f3b4369/1587769634?v=1',
    title: 'Rich Dad Poor Dad',
    summary:
        'Robert Kiyosaki’s easy tips and straight talk will…Explode the myth that you need to earn a high income to become rich,Challenge the belief that your house is an asset,Define once and for all an asset and a liability,Show parents why they can’t rely on the school system to educate kids about money,Clearly lay out what to teach kids about money for their future financial success.',
    ratingStar: '⭐⭐⭐⭐⭐',
    genre: 'Business',
  ),
];
