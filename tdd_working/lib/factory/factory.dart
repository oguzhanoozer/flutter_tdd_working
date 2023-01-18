abstract class IFormat {
  void publish();
}

class XMLFormat extends IFormat {
  @override
  void publish() {
    print("The Data printed as a XML Format");
  }
}

class CSVFormat extends IFormat {
  @override
  void publish() {
    print("The Data printed as a CSV Format");
  }
}

class TXTVFormat extends IFormat {
  @override
  void publish() {
    print("The Data printed as a TXT Format");
  }
}

abstract class IFactory {
  IFormat createFormat();
}

class XMLFactory extends IFactory {
  @override
  IFormat createFormat() {
    return XMLFormat();
  }
}

class CSVFactory extends IFactory {
  @override
  IFormat createFormat() {
    return CSVFormat();
  }
}

class TXTFactory extends IFactory {
  @override
  IFormat createFormat() {
    return TXTVFormat();
  }
}

void main(List<String> args) {
  IFactory _currentFactory;

  _currentFactory = XMLFactory();
  final _format1 = _currentFactory.createFormat();
  _format1.publish();

  _currentFactory = CSVFactory();
  final _format2 = _currentFactory.createFormat();
  _format2.publish();

  _currentFactory = TXTFactory();
  final _format3 = _currentFactory.createFormat();
  _format3.publish();
}
