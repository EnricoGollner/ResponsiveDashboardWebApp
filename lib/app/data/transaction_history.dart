import 'package:responsive_web_app/app/data/enums/transaction_status.dart';

class TransactionHistory {
  final String avatarPath;
  final String label;
  final double amount;
  final String time;
  final TransactionStatus status;

  TransactionHistory({required this.avatarPath, required this.label, required this.amount, required this.time, required this.status});
  
  String get amountAsCurrency => 'R\$${amount.toStringAsFixed(2)}';
}
