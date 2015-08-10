var numbers = Trie([[1, 2, 3], [4, 5, 6], [1, 2, 3, 4], [1, 2], [5, 4, 3], [8]])

numbers.contains([4, 5, 6])

numbers.contains([4, 5])

numbers.remove([4, 5, 6])

numbers.insert([7, 3, 1])

let secondNums = Trie([[2, 2, 2], [3, 3, 3]])

numbers.union(secondNums)

func makeTrie(from: [Int]) -> Trie<Int> {
  return Trie((0..<3).map { n in
    from.map { $0 + n }
  })
}

numbers.flatMap(makeTrie)