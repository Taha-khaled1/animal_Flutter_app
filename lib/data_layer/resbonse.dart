import 'package:animal_app/presentation_layer/resources/msnge_api.dart';

import 'database/connectdatabase.dart';

dynamic getServices() async {
  Curd curd = Curd();
  var respons = await curd.getrequest(
    APiMange.services,
  );

  return respons;
}

dynamic getCateogerys() async {
  Curd curd = Curd();
  var respons = await curd.getrequest(
    APiMange.categorys,
  );

  return respons;
}

dynamic getHome() async {
  Curd curd = Curd();
  var respons = await curd.getrequest(
    APiMange.homePage,
  );

  return respons;
}

dynamic getSingleServices(int id) async {
  Curd curd = Curd();
  var respons = await curd.getrequest(
    "${APiMange.singleServices}/$id",
  );

  return respons;
}

dynamic getSingleProduct(int id) async {
  Curd curd = Curd();
  var respons = await curd.getrequest(
    "${APiMange.singleProduct}/$id",
  );

  return respons;
}

dynamic getSinglePet(int id) async {
  Curd curd = Curd();
  var respons = await curd.getrequest(
    "${APiMange.singlepet}/$id",
  );

  return respons;
}
