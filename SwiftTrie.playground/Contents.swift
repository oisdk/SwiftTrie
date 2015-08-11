let words = ["hello", "hiya", "hell", "jonah", "jolly", "joseph"].map{$0.characters}

var store = Trie(words)

store
  .map(String.init)


store
  .contains("hello".characters)

store
  .completions("hel".characters)
  .map(String.init)

store
  .remove("jonah".characters)

store
  .completions("jo".characters)
  .map(String.init)
