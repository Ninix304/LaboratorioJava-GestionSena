/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package Interfaz;

import Model.Programa;
import java.util.List;

/**
 *
 * @author APRENDIZ
 */
public interface MePrograma {
    public Programa list(int id);
    public List listadopro();
    public boolean registrarpro(Programa pro);
    public boolean actualizarpro(Programa pro);
    public boolean eliminarpro(int id);
}
