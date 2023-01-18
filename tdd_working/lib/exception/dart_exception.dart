import 'dart:io';

main() {
  final int value = 10;

  try {
    //var inputValue = 0;
    //int result = value ~/ int.parse(inputValue.toString());
    divideNumber();
  } on UnsupportedError catch (e) {
    print(e);
  } catch (e) {
    if (e is ErrorModel) {
      print(e.message);
    }
  }
}

int divideNumber() {
  final int value = 10;
  var inputValue = 0;
  if (inputValue == 0) {
    throw ErrorModel("A input value is zero");
  } else {
    return value ~/ int.parse(inputValue.toString());
  }
}

class ErrorModel {
  final String message;

  ErrorModel(this.message);
}
