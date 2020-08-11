/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.senaces.servlets;

import br.com.senaces.bean.AcessoBean;
import br.com.senaces.bean.HistoricoBean;
import br.com.senaces.dao.HistoricoDAO;
import br.com.senaces.dao.UsuarioDAO;
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
public class ValidarHistorico extends HttpServlet {

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

        String action = request.getParameter("acao"); //SELECIONA A ACAO QUE ESTA NO BOTÃO SUBMIT
        System.out.println("acao: " + action);

        if (action.equals("lancamentoHistorico")) {
            UsuarioDAO ush = new UsuarioDAO();

            request.setAttribute("usuarios", ush.listarUsuario());
            request.getRequestDispatcher("historico.jsp").forward(request, response);

        }

        if (action.equals("cadastrar")) { //AÇÃO CADASTRAR DO BOTÃO SUBMIT

            SimpleDateFormat date = new SimpleDateFormat("yyyy/MM/dd");
            String data = date.format(new Date());

            HistoricoBean historico = new HistoricoBean(); //CRIA UM NOVO BEAN PARA SETAR TUDO QUE EU COLOQUEI NO CAMPO 

            int idusuario = Integer.parseInt(request.getParameter("inputUsuario"));

            historico.setAltura(request.getParameter("txtAltura"));
            historico.setPeso(request.getParameter("txtPeso"));
            historico.setIdade(request.getParameter("txtIdade"));
            historico.setPerimetro(request.getParameter("txtPerimetro"));
            historico.setLancamento(data);
            historico.setUnidade(request.getParameter("optionUnidade"));

            //CRIANDO UM NOVO DAO
            historico.setIdusuario(idusuario);
            HistoricoDAO dao = new HistoricoDAO();
            dao.salvarHistorico(historico);
            
            UsuarioDAO ush = new UsuarioDAO();

            request.setAttribute("usuarios", ush.listarUsuario());
            request.getRequestDispatcher("historico_sucesso.jsp").forward(request, response);
        }

        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ValidarHistorico</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ValidarHistorico at " + request.getContextPath() + "</h1>");
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
