void main() {
  String? value;

  // Uncomment to reproduce crash:
  // print(value!.length);

  // Safe version:
  print(value?.length ?? 0);
}
