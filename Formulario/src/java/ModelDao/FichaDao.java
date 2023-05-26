package ModelDao;

import Config.Conexion;
import Interfaz.MeFicha;
import Model.Aprendiz;
import Model.Ficha;
import Model.Programa;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JOptionPane;

public class FichaDao implements MeFicha{
    
    Ficha fi = new Ficha();
    Conexion cn= new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;

        @Override
    public Ficha list(int codFicha) {
        String sql = "select * from ficha where codficha ="+codFicha;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                fi.setCodFicha(rs.getInt("codficha"));
                fi.setCantAprendiz(rs.getInt("cantapre"));
                fi.setCodPrograma(rs.getInt("codprod"));
                fi.setCodAprendiz(rs.getInt("codaprendiz"));
                
            }
            
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null,"Aprendiz no encontrado");
        }
        return fi;
    }

    @Override
    public List listaFichas() {
        ArrayList<Ficha> lista = new ArrayList<Ficha>();
     String sql = "select * from ficha";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Ficha fi = new Ficha();
                fi.setCodFicha(rs.getInt("codficha"));
                fi.setCantAprendiz(rs.getInt("cantapre"));
                fi.setCodPrograma(rs.getInt("codprod"));
                fi.setCodAprendiz(rs.getInt("codaprendiz"));
                lista.add(fi);
            }
        } catch (Exception e) {
        }
        return lista;
    }
    

    @Override
    public boolean registartFicha(Ficha fi) {
        String sql = "INSERT INTO ficha (codficha, cantapre, codprod, codaprendiz) VALUES ('"+fi.getCodFicha()+"','"+fi.getCantAprendiz()+"','"+fi.getCodPrograma()+"','"+fi.getCodAprendiz()+"')";

        try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
            
            
            JOptionPane.showMessageDialog(null, "Ficha registrada correctamente");

        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Error al registrar la ficha: " + e.getMessage());
        }
        return false;
    }

    @Override
    public boolean actualizarFicha(Ficha fi) {
String sql = "UPDATE ficha SET cantapre='" + fi.getCantAprendiz() + "', codprod='" + fi.getCodPrograma() + "', codaprendiz='" + fi.getCodAprendiz() + "' WHERE codficha='" + fi.getCodFicha() + "'";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
            JOptionPane.showMessageDialog(null,"ficha actualizada");
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null,"ficha no actualizada"+e.getMessage());
        }
        return false;    
    }
    
    @Override
    public boolean eliminarFicha(int codFicha) {
        String sql="delete from ficha where codficha="+codFicha;
        try {
            con = cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
}