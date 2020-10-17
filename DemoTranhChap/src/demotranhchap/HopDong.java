/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package demotranhchap;

/**
 *
 * @author aguyl
 */
public class HopDong {
    public int ma;
    public int maNha;
    public int maKhachhang;
    public int maNhanVienPhuTrach;
    public int tienCoc;
    public String ngay;
    public String tenNhanVien;
    public String tenKhachHang;
    public String duong;
    public String quan;
    public String khuVuc;
    public String thanhPho;


    HopDong (int ma, int maNha, int maKhachhang, int maNhanVienPhuTrach, int tienCoc, String ngay, String tenNhanVien, String tenKhachHang, String duong, String quan, String khuVuc, String thanhPho) {
        this.ma = ma;
        this.maNha = maNha;
        this.maKhachhang = maKhachhang;
        this.maNhanVienPhuTrach = maNhanVienPhuTrach;
        this.tienCoc = tienCoc;
        this.ngay = ngay;
        this.tenNhanVien = tenNhanVien;
        this.tenKhachHang = tenKhachHang;
        this.duong = duong;
        this.quan = quan;
        this.khuVuc = khuVuc;
        this.thanhPho = thanhPho;
    }
}
