enum OrderStatus { active, completed, cancelled }

class Order {
  final String OrderNumber;
  final int itemCount;
  final double totalAmount;
  final OrderStatus status;
  final String imageUri;
  final DateTime orderDate;

  Order({
    required this.OrderNumber,
    required this.itemCount,
    required this.totalAmount,
    required this.status,
    required this.imageUri,
    required this.orderDate,
  });

  String get statusString => status.name;
}
