import 'package:ecommerce_app/features/notifications/models/notification_type.dart';
import 'package:flutter/material.dart';

class NotificationRepository {
  List<NotificationItem> getNotifications(){
    return [
      NotificationItem(
        title: 'order Confirmed', 
      message: 'Your order #123456 has been confirmed and is being processed.', 
      time: '2 minutes ago', 
      type: NotificationType.order,
      isRead: true ),
      NotificationItem(
        title: 'Special Offer!', 
      message: 'Get 20% off on all shoes this weekend.', 
      time: '1 hour ago', 
      type: NotificationType.promo,
      isRead: true ),
      NotificationItem(
        title: 'Out for Delivery', 
      message: 'Your order #123443 is out for delivery', 
      time: '7 minutes ago', 
      type: NotificationType.delivery,
      isRead: true ),
      NotificationItem(
        title: 'Payment Successful', 
      message: 'Payment for order #432323 was successful', 
      time: '2 minutes ago', 
      type: NotificationType.payment,
      isRead: true )
    ];
  }
}