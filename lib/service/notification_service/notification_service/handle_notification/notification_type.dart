import '../notification_utils/payload_model.dart';

abstract class NotificationType {
  executeNotification(PayloadModel payload);
}
