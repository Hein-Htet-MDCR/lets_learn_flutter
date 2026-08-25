void main() async {
  getMessage().then((value) {
    print(value);
  });

  print(await getMessageAsyc());

  print("Print 3");
}

Future<String> getMessage() {
  return Future.delayed(Duration(seconds: 3), () => "Print 1");
}

Future<String> getMessageAsyc() async {
  return Future.delayed(Duration(seconds: 2), () => "Print 2");
}
