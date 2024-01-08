void main() {
  print('Statistical Mode');
  print('----------------');
  var data = [2, 3, 9, 7, 5, 3, 7, 3];
  var mode = new Map();
  data.forEach((e) {
    if (!mode.containsKey(e)) {
      mode[e] = 1;
    } else {
      mode[e] = mode[e] + 1;
    }
  });
  var sortedMode = Map.fromEntries(
      mode.entries.toList()..sort((e1, e2) => e2.value - e1.value));
  print(sortedMode);
}
