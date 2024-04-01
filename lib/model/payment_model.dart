class Payment {
  final String receiptNo;
  final double total;
  final DateTime dateTime;
  final String paymentMethod;
  final String name;
  final String email;

  Payment({
    required this.receiptNo,
    required this.total,
    required this.dateTime,
    required this.paymentMethod,
    required this.name,
    required this.email,
  });
}