import 'package:animal_app/application_layer/utils/statusrequst.dart';

handlingData(response) {
  if (response is StatusRequest) {
    return response;
  } else {
    return StatusRequest.success;
  }
}
