package br.com.senaces.servlets;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import br.com.senaces.bean.AcessoBean;
import br.com.senaces.bean.UsuarioBean;
import br.com.senaces.dao.UsuarioDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.PageContext;

/**
 *
 * @author sala302b
 */
public class ValidarLogin extends HttpServlet {

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
            //SESSÃO
            HttpSession sessao = request.getSession();

            if (action.equals("logar")) {
                AcessoBean acesso = new AcessoBean();
                acesso.setNome(request.getParameter("txtEmail"));
                acesso.setSenha(request.getParameter("txtSenha"));

                UsuarioDAO dao = new UsuarioDAO();
                AcessoBean acs = new AcessoBean();

                acs = dao.logar(acesso);
                if (acs.getIdusuario() != 0 && acs.getNome() != null && acs.getTipo() != null) {

                    //acesso.setIdusuario(acs.getIdusuario());
                    //acesso.setTipo();
                    System.out.println("IDVALIDARLOGIN: " + acs.getIdusuario());
                    System.out.println("TIPOVALIDARLOGIN: " + acs.getTipo());

                    sessao.setAttribute("usuario", acs);

                    request.setAttribute("usuario", acs);
                    request.setAttribute("id", acesso);
                    request.getRequestDispatcher("sidebar.jsp").forward(request, response);

                } else {
                    request.getRequestDispatcher("loginerro.jsp").forward(request, response);
                }
            }
            if (action.equals("deslogar")) {
                sessao.invalidate();
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ValidarLogin</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Verificando o usuário</h1>");

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
