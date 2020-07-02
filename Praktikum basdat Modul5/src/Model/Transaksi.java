package Model;

import java.util.ArrayList;
import java.util.Date;

public class Transaksi {
    private Integer ID_transaksi;
    private Owner owner;
    private Barang barang;
    private Date tgl_transaksi;
    private Barang nama_barang;
    private Integer jumlah_barang;
    private Double total_harga;
    private Double bayar;
    private Double kembalian;
    private Integer Harga_Barang;
    private ArrayList<Transaksi> arrTransaksi;

    public Integer getID_transaksi() {
        return ID_transaksi;
    }

    public void setID_transaksi(Integer ID_transaksi) {
        this.ID_transaksi = ID_transaksi;
    }


    public Owner getOwner() {
        return owner;
    }

    public void setOwner(Owner owner) {
        this.owner = owner;
    }


    public Barang getBarang() {
        return barang;
    }

    public void setbarang(Barang barang) {
        this.barang = barang;
    }

    public Barang getNama_barang() {
        return nama_barang;
    }

    public void setNama_barang(Barang nama_barang) {
        this.nama_barang = nama_barang;
    }

    public Date getTgl_transaksi() {
        return tgl_transaksi;
    }

    public void setTgl_transaksi(Date tgl_transaksi) {
        this.tgl_transaksi = tgl_transaksi;
    }

    public Integer getJumlah_barang() {
        return jumlah_barang;
    }

    public void setJumlah_barang(Integer jumlah_barang) {
        this.jumlah_barang = jumlah_barang;
    }

    public Double getTotal_harga() {
        return total_harga;
    }

    public void setTotal_harga(Double total_harga) {
        this.total_harga = total_harga;
    }

    public Double getBayar() {
        return bayar;
    }

    public void setBayar(Double bayar) {
        this.bayar = bayar;
    }

    public Double getKembalian() {
        return kembalian;
    }

    public void setKembalian(Double kembalian) {
        this.kembalian = kembalian;
    }

    public ArrayList<Transaksi> getArrTransaksi() {
        return arrTransaksi;
    }

    public void setArrTransaksi(ArrayList<Transaksi> arrTransaksi) {
        this.arrTransaksi = arrTransaksi;
    }

    public Integer getHarga_Barang() {
        return Harga_Barang;
    }

    public void setHarga_Barang(Integer Harga_Barang) {
        this.Harga_Barang = Harga_Barang;
    }
    
    
    
}

