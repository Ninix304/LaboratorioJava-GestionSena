/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author Ninix
 */
public class Ficha {
    int codFicha;
    int cantAprendiz;
    int codPrograma;
    int codAprendiz;
    
    public Ficha() {
    }
    
    public Ficha(int codFicha, int cantAprendiz, int codPrograma, int codAprendiz) {
        this.codFicha = codFicha;
        this.cantAprendiz = cantAprendiz;
        this.codPrograma = codPrograma;
        this.codAprendiz = codAprendiz;
    }
    
    public int getCodFicha() {
        return codFicha;
    }
    
    public void setCodFicha(int codFicha) {
        this.codFicha = codFicha;
    }
    
    public int getCantAprendiz() {
        return cantAprendiz;
    }
    
    public void setCantAprendiz(int cantAprendiz) {
        this.cantAprendiz = cantAprendiz;
    }
    
    public int getCodPrograma() {
        return codPrograma;
    }
    
    public void setCodPrograma(int codPrograma) {
        this.codPrograma = codPrograma;
    }
    
    public int getCodAprendiz() {
        return codAprendiz;
    }
    
    public void setCodAprendiz(int codAprendiz) {
        this.codAprendiz = codAprendiz;
    }
}

