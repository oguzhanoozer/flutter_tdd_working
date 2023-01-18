import 'dart:math';

abstract class IMessageSender {
  void sendMessage(String messsage);
}

abstract class ILogger {
  void writeLog(String messsage);
}

class SMSSender extends IMessageSender {
  @override
  void sendMessage(String messsage) {
    print("SMS Sender " + messsage);
  }
}

class EmailSender extends IMessageSender {
  @override
  void sendMessage(String messsage) {
    print("Email Sender " + messsage);
  }
}

class DatabaseLogger extends ILogger {
  @override
  void writeLog(String messsage) {
    print("Database Logger " + messsage);
  }
}

class FileLogger extends ILogger {
  @override
  void writeLog(String messsage) {
    print("File Logger " + messsage);
  }
}

class Process {
  late ILogger _logger;
  late IMessageSender _messageSender;

  Process(ILogger logger, IMessageSender messageSender) {
    _logger = logger;
    _messageSender = messageSender;
  }

  void showProcessAttribute() {
    _logger.writeLog("Log Text");
    _messageSender.sendMessage("Message Text");
  }
}

ILogger createLogger() {
  int _randomLogValue = Random().nextInt(10);
  late ILogger _logger;
  if (_randomLogValue % 2 == 0) {
    _logger = DatabaseLogger();
  } else {
    _logger = FileLogger();
  }
  return _logger;
}

IMessageSender createMessager() {
  int _randomMessagerValue = Random().nextInt(10);
  late IMessageSender _messager;
  if (_randomMessagerValue % 2 == 0) {
    _messager = SMSSender();
  } else {
    _messager = EmailSender();
  }
  return _messager;
}

void main(List<String> args) {
  Process process = Process(createLogger(), createMessager());
  process.showProcessAttribute();
}
