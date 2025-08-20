/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Empleado;
import modelo.EmpleadoDAO;
import modelo.Publicidad;
import modelo.PublicidadDAO;

/**
 *
 * @author ISAAC
 */
public class Controlador extends HttpServlet {
    Empleado empleado = new Empleado();
    EmpleadoDAO empleadoDao = new EmpleadoDAO();
    Publicidad publicidad = new Publicidad();
    PublicidadDAO publicidadDao = new PublicidadDAO();
    int codEmpleado;
    int codPublicidad;
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
        String menu = request.getParameter("menu");
        String accion = request.getParameter("accion");
        if (menu.equals("Principal")){
            request.getRequestDispatcher("Principal.jsp").forward(request, response);
        }else if(menu.equals("Empleado")){
            request.getRequestDispatcher("Empleado.jsp").forward(request, response);
        }else if (menu.equals("PrincipalEmpleado")){
            request.getRequestDispatcher("PrincipalEmpleados.jsp").forward(request, response);
        }else if (menu.equals("Publicidad")) {
            switch (accion) {
                case "Listar":
                    List listaPublicidad = publicidadDao.listar();
                    request.setAttribute("publicidades", listaPublicidad);
                    break;
                case"Agregar":
                    String fInicio = request.getParameter("txtFechaInicio");
                    java.sql.Date fechaInicio = java.sql.Date.valueOf(fInicio);
                    String fFin = request.getParameter("txtFechaFin");
                    java.sql.Date fechaFin = java.sql.Date.valueOf(fFin);
                    Double cost = Double.valueOf(request.getParameter("txtCostos"));
                    String colab = request.getParameter("txtColaboradores");
                    int carro = Integer.valueOf(request.getParameter("txtCodigoCarro"));
                    publicidad.setFechaInicio(fechaInicio);
                    publicidad.setFechaFin(fechaFin);
                    publicidad.setCostos(cost);
                    publicidad.setColaboradores(colab);
                    publicidad.setCodigoCarro(carro);
                    publicidadDao.agregar(publicidad);
                    request.getRequestDispatcher("Controlador?menu=Publicidad&accion=Listar").forward(request, response);
                    break;
                case"Editar":
                    codPublicidad = Integer.parseInt(request.getParameter("codigoPublicidad"));
                    Publicidad p = publicidadDao.listarCodigoPublicidad(codPublicidad);
                    request.setAttribute("publicidad", p);
                    request.getRequestDispatcher("Controlador?menu=Publicidad&accion=Listar").forward(request, response);
                    break;
                case"Actualizar":
                    String fInicioPu = request.getParameter("txtFechaInicio");
                    java.sql.Date fechaInicioPu = java.sql.Date.valueOf(fInicioPu);
                    String fFinPu = request.getParameter("txtFechaFin");
                    java.sql.Date fechaFinPu = java.sql.Date.valueOf(fFinPu);
                    Double costPu = Double.valueOf(request.getParameter("txtCostos"));
                    String colabPu = request.getParameter("txtColaboradores");
                    int carroPu = Integer.valueOf(request.getParameter("txtCodigoCarro"));
                    publicidad.setFechaInicio(fechaInicioPu);
                    publicidad.setFechaFin(fechaFinPu);
                    publicidad.setCostos(costPu);
                    publicidad.setColaboradores(colabPu);
                    publicidad.setCodigoCarro(carroPu);
                    publicidad.setCodigoPublicidad(codPublicidad);
                    publicidadDao.actualizar(publicidad);
                    request.getRequestDispatcher("Controlador?menu=Publicidad&accion=Listar").forward(request, response);
                    break;
                case"Eliminar":
                    codPublicidad = Integer.parseInt(request.getParameter("codigoPublicidad"));
                    publicidadDao.eliminar(codPublicidad);
                    request.getRequestDispatcher("Controlador?menu=Publicidad&accion=Listar").forward(request, response);
                    break;
            }
            request.getRequestDispatcher("Publicidad.jsp").forward(request, response);
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
        processRequest(request, response);
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
