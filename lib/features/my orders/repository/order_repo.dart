import 'package:ecommerce_app/features/my%20orders/model/orders.dart';

class OrderRepo {
  List<Order> getOrder() {
    return [
      Order(
        OrderNumber: '12345',
        itemCount: 2,
        totalAmount: 2938.3,
        status: OrderStatus.active,
        imageUri: 'lib/assets/images/shoe.jpg',
        orderDate: DateTime.now().subtract(const Duration(hours: 2)),
      ),
      Order(
        OrderNumber: '25242',
        itemCount: 5,
        totalAmount: 4938.3,
        status: OrderStatus.cancelled,
        imageUri: 'lib/assets/images/shoes2.jpg',
        orderDate: DateTime.now().subtract(const Duration(hours: 2)),
      ),
      Order(
        OrderNumber: '322422',
        itemCount: 1,
        totalAmount: 432.3,
        status: OrderStatus.active,
        imageUri: 'lib/assets/images/laptop.jpg',
        orderDate: DateTime.now().subtract(const Duration(hours: 1)),
      ),
      Order(
        OrderNumber: '64353',
        itemCount: 2,
        totalAmount: 38.3,
        status: OrderStatus.completed,
        imageUri: 'lib/assets/images/shoe2.jpg',
        orderDate: DateTime.now().subtract(const Duration(hours: 3)),
      ),
    ];
  }

  List<Order> getOrdersByStatus(OrderStatus status) {
    return getOrder().where((order) => order.status == status).toList();
  }
}
