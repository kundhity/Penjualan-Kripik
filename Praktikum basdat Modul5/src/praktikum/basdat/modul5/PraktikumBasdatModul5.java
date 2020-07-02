package praktikum.basdat.modul5;

import Database.Koneksi;
import java.sql.SQLException;
import java.text.ParseException;
import view.TransaksiView;
/**
 *
 * @author user
 */
public class PraktikumBasdatModul5 {

    /**
     * @param args the command line arguments
     */
     public static void main(String[] args) throws SQLException, ParseException {
        
         new TransaksiView().show();
    }
    
}
