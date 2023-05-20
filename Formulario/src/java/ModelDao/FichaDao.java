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
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
    @Override
    public boolean eliminarFicha(int codFicha) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    /*public List<Ficha> listarFichas() {
        List<Ficha> lista = new ArrayList<>();
        String sql = "SELECT codficha, cantapre, codprod, codaprendiz FROM ficha";

        try (Connection connection = conexion.getConnection();
             PreparedStatement statement = connection.prepareStatement(sql);
             ResultSet resultSet = statement.executeQuery()) {

            while (resultSet.next()) {
                Ficha ficha = new Ficha();
                ficha.setCodFicha(resultSet.getInt("codficha"));
                ficha.setCantAprendiz(resultSet.getInt("cantapre"));
                ficha.setCodPrograma(resultSet.getInt("codprod"));
                ficha.setCodAprendiz(resultSet.getInt("codaprendiz"));
                lista.add(ficha);
            }

        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Error al listar las fichas: " + e.getMessage());
        }

        return lista;
    }

    public boolean registrarFicha(Ficha ficha) {
        String sql = "INSERT INTO ficha (codficha, cantapre, codprod, codaprendiz) VALUES (?, ?, ?, ?)";

        try (Connection connection = conexion.getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {

            statement.setInt(1, ficha.getCodFicha());
            statement.setInt(2, ficha.getCantAprendiz());
            statement.setInt(3, ficha.getCodPrograma());
            statement.setInt(4, ficha.getCodAprendiz());
            statement.executeUpdate();

            JOptionPane.showMessageDialog(null, "Ficha registrada correctamente");
            return true;

        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Error al registrar la ficha: " + e.getMessage());
            return false;
        }
    }

    public boolean eliminarFicha(int codFicha) {
        String sql = "DELETE FROM ficha WHERE codficha = ?";

        try (Connection connection = conexion.getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {

            statement.setInt(1, codFicha);
            statement.executeUpdate();

            JOptionPane.showMessageDialog(null, "Ficha eliminada correctamente");
            return true;

        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Error al eliminar la ficha: " + e.getMessage());
            return false;
        }
    }*/




}
