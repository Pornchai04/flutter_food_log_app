//คลาสนี้ใช้สำหรับการเขียนโค้ดคำสั่งตเพื่อทำงานต่างๆกับ Supabase

import 'package:flutter_food_log_app/models/food.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseServices {
  //สร้างObject/Instance/ตัวแทน ที่จะใช้ทำงานกับ Supabase
  final supabase = Supabase.instance.client;

  //ส่วนของเมธอดการทำงานต่างๆกับ Supabase
  //เช่น การเพิ่มข้อมูล การลบข้อมูล การแก้ไขข้อมูล และการดึงข้อมูล ตรวจสอบข้อมูล เป็นต้น

  //สร้างเมธอดสำหรับการดึงข้อมูลทั้งหมดจาก foot_tb ใน Supabase
  Future<List<Food>> getAllFood() async {
    //ดึงข้อมูลทั้งหมดจาก foot_tb ใน Supabase
    final data = await supabase
        .from('food_tb')
        .select('*')
        .order('foodDate', ascending: false);

    //แปลงข้อมูลที่ได้จาก Supabase ซึ่งเป็น JSON มาใช้ในแอป แล้วส่งผลกลับไป ณ จุดเรียกใช้เมธอด
    return data.map<Food>((e) => Food.fromJson(e)).toList();
  }

  //สร้างเมธอดสำหรับการเพิ่มข้อมูลใน foot_tb ใน Supabase
  Future insertFood(Food food) async {
    //เพิ่มข้อมูลใน foot_tb ใน Supabase
    await supabase.from('food_tb').insert(food.toJson());
  }
}
