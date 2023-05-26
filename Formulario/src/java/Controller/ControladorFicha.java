/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Model.Ficha;
import ModelDao.FichaDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

/**
 *
 * @author APRENDIZ
 */
@WebServlet(name = "ControladorFicha", urlPatterns = {"/ControladorFicha"})
public class ControladorFicha extends HttpServlet {
    String agregar="view/Ficha.jsp";
    String editar="view/EditarF.jsp";
    String listar="view/LFicha.jsp";
    
    Ficha fi = new Ficha();
    FichaDao fidao= new FichaDao();
    
    int codFicha;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ControladorFicha</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControladorFicha at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String acceso = "";
        String action = request.getParameter("accion");
        
        if(action.equalsIgnoreCase("listar")){
            acceso=listar;
        }else if(action.equalsIgnoreCase("agregar")){
        
            acceso=agregar;
        }  
        if(action.equalsIgnoreCase("AgregarFi")){
            int codFicha = Integer.parseInt(request.getParameter("txtCodFicha"));
            int cantAp = Integer.parseInt(request.getParameter("txtCantAp"));
            int codP=Integer.parseInt(request.getParameter("txtCodPro"));
            int codAp=Integer.parseInt(request.getParameter("txtCodAp"));
            
            fi.setCodFicha(codFicha);
            fi.setCantAprendiz(cantAp);
            fi.setCodPrograma(codP);
            fi.setCodAprendiz(codAp);
            fidao.registartFicha(fi);
            acceso=listar;
            
        }else if(action.equalsIgnoreCase("eliminarfi")){
            codFicha=Integer.parseInt(request.getParameter("codficha"));
            fi.setCodFicha(codFicha);
            fidao.eliminarFicha(codFicha);
            acceso=listar;
            

            
            
        }else if(action.equalsIgnoreCase("editar")){
            request.setAttribute("codFicha", request.getParameter("codFicha"));
            
            acceso=editar;
            
        }else if(action.equalsIgnoreCase("EditarFi")){
            
            int codficha = Integer.parseInt(request.getParameter("txtCodFicha"));
            int cantapre = Integer.parseInt(request.getParameter("txtCantAp"));
            int codprod = Integer.parseInt(request.getParameter("txtCodPro"));
            int codaprendiz = Integer.parseInt(request.getParameter("txtCodAp"));
            fi.setCodFicha(codficha);
            fi.setCantAprendiz(cantapre);
            fi.setCodPrograma(codprod);
            fi.setCodAprendiz(codaprendiz);
            fidao.actualizarFicha(fi);
            acceso = listar;
            
            
            
        }
        RequestDispatcher view = request.getRequestDispatcher(acceso);
            view.forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
