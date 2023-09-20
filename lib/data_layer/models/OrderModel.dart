class OrderModel {
  bool? success;
  String? message;
  int? code;
  String? direct;
  List<Data>? data;

  OrderModel({this.success, this.message, this.code, this.direct, this.data});

  OrderModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    code = json['code'];
    direct = json['direct'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['message'] = this.message;
    data['code'] = this.code;
    data['direct'] = this.direct;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? id;
  String? orderNumber;
  int? userId;
  String? billingId;
  String? shippingId;
  String? billingAddress;
  String? shippingAddress;
  String? couponId;
  String? couponAmount;
  String? deliveryCharge;
  String? subTotal;
  String? tax;
  String? grandTotal;
  int? isFreeDelivery;
  int? isOrderSuccessful;
  int? isOrderCompleted;
  String? paymentMethod;
  int? paymentStatus;
  int? orderStatus;
  String? txn;
  String? deliveryAt;
  int? vendorId;
  List<OrderDetails>? orderDetails;

  Data(
      {this.id,
      this.orderNumber,
      this.userId,
      this.billingId,
      this.shippingId,
      this.billingAddress,
      this.shippingAddress,
      this.couponId,
      this.couponAmount,
      this.deliveryCharge,
      this.subTotal,
      this.tax,
      this.grandTotal,
      this.isFreeDelivery,
      this.isOrderSuccessful,
      this.isOrderCompleted,
      this.paymentMethod,
      this.paymentStatus,
      this.orderStatus,
      this.txn,
      this.deliveryAt,
      this.vendorId,
      this.orderDetails});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    orderNumber = json['Order_Number'];
    userId = json['User_Id'];
    billingId = json['Billing_Id'];
    shippingId = json['Shipping_Id'];
    billingAddress = json['billing_address'];
    shippingAddress = json['shipping_address'];
    couponId = json['Coupon_Id'];
    couponAmount = json['Coupon_Amount'];
    deliveryCharge = json['Delivery_Charge'];
    subTotal = json['Sub_Total'];
    tax = json['Tax'];
    grandTotal = json['Grand_Total'];
    isFreeDelivery = json['Is_Free_Delivery'];
    isOrderSuccessful = json['Is_Order_Successful'];
    isOrderCompleted = json['Is_Order_Completed'];
    paymentMethod = json['Payment_Method'];
    paymentStatus = json['Payment_Status'];
    orderStatus = json['Order_Status'];
    txn = json['txn'];
    deliveryAt = json['Delivery_At'];
    vendorId = json['vendor_id'];
    if (json['order_details'] != null) {
      orderDetails = <OrderDetails>[];
      json['order_details'].forEach((v) {
        orderDetails!.add(new OrderDetails.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['Order_Number'] = this.orderNumber;
    data['User_Id'] = this.userId;
    data['Billing_Id'] = this.billingId;
    data['Shipping_Id'] = this.shippingId;
    data['billing_address'] = this.billingAddress;
    data['shipping_address'] = this.shippingAddress;
    data['Coupon_Id'] = this.couponId;
    data['Coupon_Amount'] = this.couponAmount;
    data['Delivery_Charge'] = this.deliveryCharge;
    data['Sub_Total'] = this.subTotal;
    data['Tax'] = this.tax;
    data['Grand_Total'] = this.grandTotal;
    data['Is_Free_Delivery'] = this.isFreeDelivery;
    data['Is_Order_Successful'] = this.isOrderSuccessful;
    data['Is_Order_Completed'] = this.isOrderCompleted;
    data['Payment_Method'] = this.paymentMethod;
    data['Payment_Status'] = this.paymentStatus;
    data['Order_Status'] = this.orderStatus;
    data['txn'] = this.txn;
    data['Delivery_At'] = this.deliveryAt;
    data['vendor_id'] = this.vendorId;
    if (this.orderDetails != null) {
      data['order_details'] =
          this.orderDetails!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class OrderDetails {
  int? id;
  int? orderId;
  int? productId;
  String? productName;
  String? image;
  String? size;
  String? color;
  String? price;
  String? quantity;
  String? totalPrice;
  String? createdAt;
  String? updatedAt;
  String? petId;

  OrderDetails(
      {this.id,
      this.orderId,
      this.productId,
      this.productName,
      this.image,
      this.size,
      this.color,
      this.price,
      this.quantity,
      this.totalPrice,
      this.createdAt,
      this.updatedAt,
      this.petId});

  OrderDetails.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    orderId = json['Order_Id'];
    productId = json['Product_Id'];
    productName = json['Product_Name'];
    image = json['Image'];
    size = json['Size'];
    color = json['Color'];
    price = json['Price'];
    quantity = json['Quantity'];
    totalPrice = json['Total_Price'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    petId = json['pet_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['Order_Id'] = this.orderId;
    data['Product_Id'] = this.productId;
    data['Product_Name'] = this.productName;
    data['Image'] = this.image;
    data['Size'] = this.size;
    data['Color'] = this.color;
    data['Price'] = this.price;
    data['Quantity'] = this.quantity;
    data['Total_Price'] = this.totalPrice;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['pet_id'] = this.petId;
    return data;
  }
}
