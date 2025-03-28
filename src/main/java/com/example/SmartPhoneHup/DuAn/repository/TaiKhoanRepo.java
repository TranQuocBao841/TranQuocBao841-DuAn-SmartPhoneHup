package com.example.SmartPhoneHup.DuAn.repository;

import com.example.SmartPhoneHup.DuAn.model.SanPhamChiTiet;
import com.example.SmartPhoneHup.DuAn.model.TaiKhoan;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface TaiKhoanRepo extends JpaRepository<TaiKhoan,Integer> {
    TaiKhoan findByTenDangNhapAndMatKhau(String tenDangNhap, String matKhau);
    boolean existsByTenDangNhap(String tenDangNhap);

    Optional<TaiKhoan> findByTenDangNhap(String tenDangNhap);
}
