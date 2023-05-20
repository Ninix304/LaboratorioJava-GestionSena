/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package Interfaz;

import Model.Ficha;
import java.util.List;

/**
 *
 * @author Ninix
 */
public interface MeFicha {
    public Ficha list(int codFicha);
    public List listaFichas();
    public boolean registartFicha(Ficha fi);
    public boolean actualizarFicha(Ficha fi);
    public boolean eliminarFicha(int codFicha);
}
