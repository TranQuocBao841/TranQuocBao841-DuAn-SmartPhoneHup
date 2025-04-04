package com.example.SmartPhoneHup.DuAn.controller;

import com.example.SmartPhoneHup.DuAn.model.SanPham;
import com.example.SmartPhoneHup.DuAn.repository.KichThuocRepo;
import com.example.SmartPhoneHup.DuAn.repository.MauSacRepo;
import com.example.SmartPhoneHup.DuAn.repository.SanPhamChiTietRepo;
import com.example.SmartPhoneHup.DuAn.repository.SanPhamRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@RequestMapping("san-pham2")
@Controller
public class SanPhamController2 {
   @Autowired
   SanPhamRepo sanPhamRepo;

   @Autowired
   KichThuocRepo kichThuocRepo;

   @Autowired
   MauSacRepo mauSacRepo;

   @Autowired
   SanPhamChiTietRepo sanPhamChiTietRepo;

   @GetMapping("hien-thi")
   public String HienThiDanhSachSanPham(Model model){
      model.addAttribute("listct",sanPhamChiTietRepo.findAll());
      model.addAttribute("list",sanPhamRepo.findAll());
      return "/ViewSanPham2/hien-thi";
   }


   @GetMapping("/deltal")
   public String ShowChitietSanPham(@RequestParam("id") Integer id, Model model){
      model.addAttribute("listct",sanPhamChiTietRepo.findById(id).get());
      return "/ViewSanPham2/deltal";
   }

   @GetMapping("/timkiem")
   public String timKiemSanPham(@RequestParam(value = "ten", required = false, defaultValue = "") String ten, Model model) {
      List<SanPham> danhSachSanPham = sanPhamRepo.findByTenContainingIgnoreCase(ten);
      model.addAttribute("list", danhSachSanPham);
      model.addAttribute("ten", ten); // Giữ lại giá trị tìm kiếm trên giao diện
      return "ViewSanPham2/hien-thi";
   }
}
