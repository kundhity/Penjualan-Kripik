package Model;

public class Barang {
    private Integer ID_barang;
    private String nama_barang;
    private Double harga_barang;
    private Jenis_Barang jenis_barang;
    

    public Integer getID_barang() {
        return ID_barang;
    }

    public void setID_barang(Integer ID_barang) {
        this.ID_barang = ID_barang;
    }

    public String getNama_barang() {
        return nama_barang;
    }

    public void setNama_barang(String nama_barang) {
        this.nama_barang = nama_barang;
    }

    public Double getHarga_barang() {
        return harga_barang;
    }

    public void setHarga_barang(Double harga_barang) {
        this.harga_barang = harga_barang;
    }

 
    public Jenis_Barang getJenis_Barang() {
        return jenis_barang;
    }

    public void setID_jenis_barang(Jenis_Barang jenis_barang) {
        this.jenis_barang = jenis_barang;
    }

   
    
}
