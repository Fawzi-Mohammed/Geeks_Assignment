void main() {
  const List<int> numbers = [2, 4, 6, 8, 9];
  Set<int> numbersSet = numbers.toSet();
  numbersSet.add(12);
  Map<int, int> numbersMap = {
    for (int values in numbersSet) values: values * 3,
  };
  print(numbersMap);
}
