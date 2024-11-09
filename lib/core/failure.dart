abstract class Failure {
  final String message;

  const Failure(this.message);
}

class MessageError extends Failure {
  MessageError(super.message);
}
