void main() {
  printItems(['Apple', 'Banana', 'Grapes'], 'Fruits');
}

void printItems(List<String> items, [String title = 'item List']) {
  print(title);
  for (int i = 0; i < items.length; i++) {
    print('${i + 1}  ${items[i]} ');
  }
}
