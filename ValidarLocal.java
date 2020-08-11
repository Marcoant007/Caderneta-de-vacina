/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.senaces.servlets;

import br.com.senaces.bean.EnderecoBean;
import br.com.senaces.bean.LocalBean;
import br.com.senaces.dao.LocalDAO;
import br.com.senaces.dao.UsuarioDAO;
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
public class ValidarLocal extends HttpServlet {

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
            System.out.println("acao:" +action);
            
            if (action.equals("cadastrar")) {
                
                LocalBean local = new LocalBean();
                EnderecoBean localend = new EnderecoBean();
                
                
                local.setNome(request.getParameter("txtLocal"));
                local.setTelefone(request.getParameter("txtTelefoneLocal"));
                localend.setBairro(request.getParameter("txtBairroLocal"));
                localend.setCep(request.getParameter("txtCepLocal"));
                localend.setCidade(request.getParameter("txtCidadeLocal"));
                localend.setEstado(request.getParameter("optionEstado"));
                localend.setLogradouro(request.getParameter("txtEnderecoLocal"));
                
                UsuarioDAO daoend = new UsuarioDAO();
                
                LocalDAO dao = new LocalDAO();
                
                int SalvLocal = daoend.SalvarEndereco(localend);
                System.out.println("Teste "+SalvLocal);
                
                local.setEndereco(SalvLocal);
                dao.cadastrarLocal(local);
                
                request.setAttribute("local", local);
                request.getRequestDispatcher("Local_Sucesso.jsp").forward(request, response);
                
                
            }
            
            
            
            
            
            
            
            
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ValidarLocal</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ValidarLocal at " + request.getContextPath() + "</h1>");
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
