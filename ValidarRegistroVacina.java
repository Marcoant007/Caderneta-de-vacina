/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.senaces.servlets;

import br.com.senaces.bean.RegistroVacinaBean;
import br.com.senaces.dao.LocalDAO;
import br.com.senaces.dao.RegistroVacinaDAO;
import br.com.senaces.dao.UsuarioDAO;
import br.com.senaces.dao.VacinaDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author sala302b
 */
public class ValidarRegistroVacina extends HttpServlet {

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

        try (PrintWriter out = response.getWriter()) {

            RegistroVacinaBean reg = new RegistroVacinaBean();

            String action = request.getParameter("acao");
            System.out.println("acao: " + action);

            if (action.equals("cadastrar")) {

                SimpleDateFormat date = new SimpleDateFormat("yyyy/MM/dd");
                String data = date.format(new Date());

                System.out.println("Dados1:" + request.getParameter("inputUsuario"));
                System.out.println("Dados2:" + request.getParameter("inputVacinas"));
                System.out.println("Dados3:" + request.getParameter("txtLote"));
                System.out.println("Dados4:" + request.getParameter("txtLaboratorio"));
                System.out.println("Dados5:" + request.getParameter("txtDose"));
                System.out.println("Dados6:" + request.getParameter("inputLocais"));
                System.out.println("Dados7:" + request.getParameter("txtAtendente"));
                System.out.println("Dados8:" + request.getParameter("RegData"));

                reg.setUsuario(Integer.parseInt(request.getParameter("inputUsuario")));
                reg.setVacina(Integer.parseInt(request.getParameter("inputVacinas")));
                reg.setLote(request.getParameter("txtLote"));
                reg.setLaboratorio(request.getParameter("txtLaboratorio"));
                reg.setDose(request.getParameter("txtDose"));
                reg.setLocal(Integer.parseInt(request.getParameter("inputLocais")));
                reg.setAtendente(request.getParameter("txtAtendente"));
                reg.setData(data);

                RegistroVacinaDAO dao = new RegistroVacinaDAO();
                dao.cadastrarRegistros(reg);

                VacinaDAO v = new VacinaDAO();
                UsuarioDAO u = new UsuarioDAO();
                LocalDAO l = new LocalDAO();

                request.setAttribute("registroUsuario", u.listarUsuario());
                request.setAttribute("registroVacina", v.listarVacina());
                request.setAttribute("registroLocal", l.ListarLocal());

                request.getRequestDispatcher("listarregistros.jsp").forward(request, response);

            }

            if (action.equals("listar")) {
                /* RegistroVacinaDAO u = new RegistroVacinaDAO();*/

                VacinaDAO v = new VacinaDAO();
                UsuarioDAO u = new UsuarioDAO();
                LocalDAO l = new LocalDAO();

                request.setAttribute("registroUsuario", u.listarUsuario());
                request.setAttribute("registroVacina", v.listarVacina());
                request.setAttribute("registroLocal", l.ListarLocal());

                request.getRequestDispatcher("listarregistros.jsp").forward(request, response);

            }
            if (action.equals("ListarVacina")) {

                int idusuario = Integer.parseInt(request.getParameter("idusuario"));

                RegistroVacinaDAO vacin = new RegistroVacinaDAO();

                request.setAttribute("registro", vacin.gerarCard(idusuario));
                request.getRequestDispatcher("Novocardvacina.jsp").forward(request, response);

            }
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
