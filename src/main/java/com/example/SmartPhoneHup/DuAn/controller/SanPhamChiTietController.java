package com.example.SmartPhoneHup.DuAn.controller;

import com.example.SmartPhoneHup.DuAn.model.SanPhamChiTiet;
import com.example.SmartPhoneHup.DuAn.repository.KichThuocRepo;
import com.example.SmartPhoneHup.DuAn.repository.MauSacRepo;
import com.example.SmartPhoneHup.DuAn.repository.SanPhamChiTietRepo;
import com.example.SmartPhoneHup.DuAn.repository.SanPhamRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/san-pham-chi-tiet")
public class SanPhamChiTietController {

    @Autowired
    private SanPhamChiTietRepo chiTietRepo;

    @Autowired
    private SanPhamRepo sanPhamRepo;

    @Autowired
    private MauSacRepo mauSacRepo;

    @Autowired
    private KichThuocRepo kichThuocRepo;

    // Hiển thị form thêm chi tiết sản phẩm
    @GetMapping("/them")
    public String formThem(Model model) {
        model.addAttribute("sanPhamChiTiet", new SanPhamChiTiet());
        model.addAttribute("dsSanPham", sanPhamRepo.findAll());
        model.addAttribute("dsMauSac", mauSacRepo.findAll());
        model.addAttribute("dsKichThuoc", kichThuocRepo.findAll());
        return "/ViewSanPhamCT/add";
    }

    // Lưu chi tiết sản phẩm
    @PostMapping("/save")
    public String save(@ModelAttribute SanPhamChiTiet ct) {
        String maSPCT = "SPCT" + System.currentTimeMillis();
        ct.setMaSpct(maSPCT); // set giá trị vào entity
        chiTietRepo.save(ct); // hoặc gọi service.save(ct)
        return "redirect:/san-pham-chi-tiet/hien-thi";
    }


    // Danh sách chi tiết sản phẩm
    @GetMapping("/hien-thi")
    public String list(Model model) {
        model.addAttribute("dsChiTiet", chiTietRepo.findAll());
        return "ViewSanPhamCT/hien-thi";
    }

    @GetMapping("/update")
    public String showUpdate(@RequestParam("id") Integer id, Model model) {
        model.addAttribute("sanPhamChiTiet", chiTietRepo.findById(id).get());

        // Gợi ý: load lại dữ liệu cho dropdown nếu bạn dùng chung form với thêm mới
        model.addAttribute("dsSanPham", sanPhamRepo.findAll());
        model.addAttribute("dsMauSac", mauSacRepo.findAll());
        model.addAttribute("dsKichThuoc", kichThuocRepo.findAll());

        return "/ViewSanPhamCT/update"; // hoặc cùng form với thêm mới nếu bạn tái sử dụng
    }


    @PostMapping("/update")
    public String update(SanPhamChiTiet sanPhamChiTiet){
        chiTietRepo.save(sanPhamChiTiet);
        return "redirect:/san-pham-chi-tiet/hien-thi";
    }

    @GetMapping("/delete")
    public String delete(@RequestParam("id") Integer id){
        chiTietRepo.deleteById(id);
        return "redirect:/san-pham-chi-tiet/hien-thi";
    }
}

