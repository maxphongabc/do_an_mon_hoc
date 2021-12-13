// ignore_for_file: unused_import, non_constant_identifier_names
import 'package:flutter/material.dart';

class SanPham{
  final int Id,Gia,So_Luong,Loai_San_Pham_Id;
  final String Ten_Sp,Man_Hinh,He_Dieu_Hanh,Camera_Truoc,Camera_Sau,Chip,Ram,Rom,Sim,Pin,Hinh_Anh,Mo_Ta;
  final bool Ngay_Tao;
  SanPham({
    required this.Id,
    required this.Mo_Ta,
    required this.Ngay_Tao,
    required this.Gia,
    required this.So_Luong,
    required this.Camera_Sau,
    required this.Camera_Truoc,
    required this.Chip,
    required this.He_Dieu_Hanh,
    required this.Hinh_Anh,
    required this.Loai_San_Pham_Id,
    required this.Man_Hinh,
    required this.Pin,
    required this.Ram,
    required this.Rom,
    required this.Sim,
    required this.Ten_Sp,
  });
}