//คลาสนี้ใช้สำหรับจัดการข้อมูลกับตารางในฐานข้อมูลที่จะทำงานด้วย

class Food {
  //สร้างตัวแปรที่ล้อกับชื่อคอลัมน์ในตารางที่เราจะทำงานด้วย
  String? id;
  DateTime? create_at;
  DateTime? foodDate;
  String? foodMeal;
  String? foodName;
  double? foodPrice;
  int? foodPerson;

  //กำหนดคอนสตรัคเตอร์เพื่อใช้สำหรับการกำหนดค่าข้อมูล
  Food({
    this.id,
    this.create_at,
    this.foodDate,
    this.foodMeal,
    this.foodName,
    this.foodPrice,
    this.foodPerson,
  });

  //แปลงข้อมูลจากแอป เพื่อส่งไปยัง Supabase
  Map<String, dynamic> toMap() => {
        'create_at': create_at,
        'foodDate': foodDate,
        'foodMeal': foodMeal,
        'foodName': foodName,
        'foodPrice': foodPrice,
        'foodPerson': foodPerson,
      };

  //แปลงข้อมูลที่รับมาจาก Supabase เพื่อมาใช้ในยังแอป
  factory Food.fromMap(Map<String, dynamic> map) => Food(
        id: map['id'] as String,
        create_at: DateTime.parse(map['create_at'] as String),
        foodDate: DateTime.parse(map['foodDate'] as String),
        foodMeal: map['foodMeal'] as String,
        foodName: map['foodName'] as String,
        foodPrice: double.parse(map['foodPrice'] as String),
        foodPerson: int.parse(map['foodPerson'] as String),
      );
}
