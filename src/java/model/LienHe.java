
/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author hoang
 */
public class LienHe {
    
    
    private String HoVaTen;
    private String SDT;
    private String Email;
    private String DiaChi;
    private String TieuDe;
    private String NoiDung;

    public LienHe() {
    }

    public LienHe(String HoVaTen, String SDT, String Email, String DiaChi, String TieuDe, String NoiDung) {
        this.HoVaTen = HoVaTen;
        this.SDT = SDT;
        this.Email = Email;
        this.DiaChi = DiaChi;
        this.TieuDe = TieuDe;
        this.NoiDung = NoiDung;
    }

    public String getHoVaTen() {
        return HoVaTen;
    }

    public void setHoVaTen(String HoVaTen) {
        this.HoVaTen = HoVaTen;
    }

    public String getSDT() {
        return SDT;
    }

    public void setSDT(String SDT) {
        this.SDT = SDT;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getDiaChi() {
        return DiaChi;
    }

    public void setDiaChi(String DiaChi) {
        this.DiaChi = DiaChi;
    }

    public String getTieuDe() {
        return TieuDe;
    }

    public void setTieuDe(String TieuDe) {
        this.TieuDe = TieuDe;
    }

    public String getNoiDung() {
        return NoiDung;
    }

    public void setNoiDung(String NoiDung) {
        this.NoiDung = NoiDung;
    }

    @Override
    public String toString() {
        return "LienHe{" + "HoVaTen=" + HoVaTen + ", SDT=" + SDT + ", Email=" + Email + ", DiaChi=" + DiaChi + ", TieuDe=" + TieuDe + ", NoiDung=" + NoiDung + '}';
    }

}
