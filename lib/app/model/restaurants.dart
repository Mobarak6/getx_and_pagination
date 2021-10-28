import 'dart:convert';

Restaurants restaurantsFromJson(String str) =>
    Restaurants.fromJson(json.decode(str));
// Restaurant restaurantFromJson(String str) =>
//     Restaurant.fromJson(json.decode(str));

class Restaurants {
  Restaurants({
    required this.totalSize,
    required this.limit,
    required this.offset,
    required this.restaurants,
  });

  int totalSize;
  String limit;
  String offset;
  List<Restaurant> restaurants;

  factory Restaurants.fromJson(Map<String, dynamic> json) => Restaurants(
        totalSize: json["total_size"],
        limit: json["limit"],
        offset: json["offset"],
        restaurants: List<Restaurant>.from(
            json["restaurants"].map((x) => Restaurant.fromJson(x))),
      );
}

class Restaurant {
  Restaurant({
    this.id,
    this.name,
    this.phone,
    this.email,
    this.logo,
    this.latitude,
    this.longitude,
    this.address,
    this.footerText,
    this.minimumOrder,
    this.comission,
    this.scheduleOrder,
    this.status,
    this.vendorId,
    this.createdAt,
    this.updatedAt,
    this.freeDelivery,
    this.coverPhoto,
    this.delivery,
    this.takeAway,
    this.foodSection,
    this.tax,
    this.zoneId,
    this.reviewsSection,
    this.active,
    this.offDay,
    this.selfDeliverySystem,
    this.posSystem,
    this.deliveryCharge,
    this.open,
    this.availableTimeStarts,
    this.availableTimeEnds,
    this.avgRating,
    this.ratingCount,
    this.gstStatus,
    this.gstCode,
    this.discount,
  });

  int? id;
  String? name;
  String? phone;
  String? email;
  String? logo;
  String? latitude;
  String? longitude;
  String? address;
  dynamic footerText;
  int? minimumOrder;
  int? comission;
  bool? scheduleOrder;
  int? status;
  int? vendorId;
  DateTime? createdAt;
  DateTime? updatedAt;
  bool? freeDelivery;
  String? coverPhoto;
  bool? delivery;
  bool? takeAway;
  bool? foodSection;
  int? tax;
  int? zoneId;
  bool? reviewsSection;
  bool? active;
  String? offDay;
  int? selfDeliverySystem;
  bool? posSystem;
  int? deliveryCharge;
  int? open;
  String? availableTimeStarts;
  String? availableTimeEnds;
  int? avgRating;
  int? ratingCount;
  bool? gstStatus;
  String? gstCode;
  dynamic discount;

  factory Restaurant.fromJson(Map<String, dynamic> json) => Restaurant(
        id: json["id"],
        name: json["name"] ?? '',
        phone: json["phone"] ?? '',
        email: json["email"] ?? '',
        logo: json["logo"],
        latitude: json["latitude"],
        longitude: json["longitude"],
        address: json["address"],
        footerText: json["footer_text"] ?? '',
        minimumOrder: json["minimum_order"],
        comission: json["comission"] ?? 0,
        scheduleOrder: json["schedule_order"],
        status: json["status"],
        vendorId: json["vendor_id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        freeDelivery: json["free_delivery"],
        coverPhoto: json["cover_photo"],
        delivery: json["delivery"],
        takeAway: json["take_away"],
        foodSection: json["food_section"],
        tax: json["tax"],
        zoneId: json["zone_id"],
        reviewsSection: json["reviews_section"],
        active: json["active"],
        offDay: json["off_day"],
        selfDeliverySystem: json["self_delivery_system"],
        posSystem: json["pos_system"],
        deliveryCharge: json["delivery_charge"],
        open: json["open"],
        availableTimeStarts: json["available_time_starts"],
        availableTimeEnds: json["available_time_ends"],
        avgRating: json["avg_rating"],
        ratingCount: json["rating_count "],
        gstStatus: json["gst_status"],
        gstCode: json["gst_code"],
        discount: json["discount"] ?? 0,
      );
}
