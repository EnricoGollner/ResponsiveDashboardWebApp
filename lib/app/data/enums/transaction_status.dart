enum TransactionStatus {
  completed,
  waiting,
}

extension TransactionStatusExtension on TransactionStatus {
  String get description => switch (this) {
    TransactionStatus.completed => 'Completed',
    TransactionStatus.waiting => 'Waiting for Payment',
  };
}