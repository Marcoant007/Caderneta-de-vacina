/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.senaces.servlets;

import br.com.senaces.bean.EnderecoBean;
import br.com.senaces.bean.ParceiroBean;
import br.com.senaces.dao.UsuarioDAO;
import br.com.senaces.dao.ParceiroDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author sala302b
 */
public class ValidarParceiros extends HttpServlet {

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

          String action = request.getParameter("acao");
          System.out.println("acao: " + action);
          if (action.equals("cadastrar")) {
                ParceiroBean parc = new ParceiroBean();
                EnderecoBean parcend = new EnderecoBean();

                parc.setNome(request.getParameter("txtRazaoParceiro"));
                parc.setCnpj(request.getParameter("txtCnpjParceiro"));
                parc.setContato(request.getParameter("txtContatoParceiro"));
                parc.setSite(request.getParameter("txtSiteParceiro"));
                parc.setTelefone(request.getParameter("txtTelefoneParceiro"));
                parcend.setLogradouro(request.getParameter("txtEnderecoParceiro"));
                parcend.setEstado(request.getParameter("optionEstado"));
                parcend.setCidade(request.getParameter("txtCidadeParceiro"));
                parcend.setCep(request.getParameter("txtCepParceiro"));
                parcend.setBairro(request.getParameter("txtBairroParceiro"));

                UsuarioDAO dao = new UsuarioDAO();
                ParceiroDAO daoend = new ParceiroDAO();

                int salvaend = dao.SalvarEndereco(parcend);
                
                parc.setIdendereco(salvaend);
                daoend.SalvarParceiro(parc);
                request.getRequestDispatcher("parceiros_sucesso.jsp").forward(request, response);
           }

            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ValidarParceiros</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ValidarParceiros at " + request.getContextPath() + "</h1>");

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
