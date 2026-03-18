//คลาสนี้ใช้สำหรับการเขียนโค้ดคำสั่งตเพื่อทำงานต่างๆกับ Supabase

import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseServices {
  //สร้างObject/Instance/ตัวแทน ที่จะใช้ทำงานกับ Supabase
  final SupabaseClient = Supabase.instance.client;

  //ส่วนของเมธอดการทำงานต่างๆกับ Supabase
  //เช่น การเพิ่มข้อมูล การลบข้อมูล การแก้ไขข้อมูล และการดึงข้อมูล ตรวจสอบข้อมูล เป็นต้น
}
