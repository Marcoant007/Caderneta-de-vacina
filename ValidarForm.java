/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.senaces.servlets;

import br.com.senaces.bean.AcessoBean;
import br.com.senaces.bean.EnderecoBean;
import br.com.senaces.bean.UsuarioBean;
import br.com.senaces.dao.UsuarioDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author sala302b
 */
public class ValidarForm extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */

            //HttpSession sessao = request.getSession();
            //AcessoBean acesso = new AcessoBean();
            //acesso = (AcessoBean) sessao.getAttribute("usuario");
            String action = request.getParameter("acao");
            if (action.equals("cadastrar")) {
                UsuarioBean user = new UsuarioBean();
                EnderecoBean endereco = new EnderecoBean();
                AcessoBean login = new AcessoBean();

                user.setNome(request.getParameter("txtNome"));
                user.setNascimento(request.getParameter("txtData"));
                user.setTelefone(request.getParameter("txtTelefone"));
                user.setRg(request.getParameter("rg"));
                user.setCpf(request.getParameter("cpf"));
                user.setPai(request.getParameter("txtPai"));
                user.setMae(request.getParameter("txtMae"));
                user.setCartao_sus(request.getParameter("txtSUS"));
                user.setRegistro(request.getParameter("txtRegistro"));
                user.setEtnia(request.getParameter("optionEtnia"));
                endereco.setLogradouro(request.getParameter("txtEndereco"));
                endereco.setCidade(request.getParameter("txtCidade"));
                endereco.setBairro(request.getParameter("txtBairro"));
                endereco.setCep(request.getParameter("txtCEP"));
                endereco.setEstado(request.getParameter("optionEstado"));

                login.setNome(request.getParameter("txtEmail"));
                login.setSenha(request.getParameter("txtSenha"));
                login.setTipo("Usuario");

                UsuarioDAO dao = new UsuarioDAO();
                int result = dao.SalvarEndereco(endereco);
                user.setIdendereco(result);

                int res = dao.salvar(user);
                login.setIdusuario(res);
                dao.SalvarAcesso(login);

                request.setAttribute("acesso", login);
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
            if (action.equals("listar")) {
                UsuarioDAO u = new UsuarioDAO();
                request.setAttribute("usuarios", u.listarUsuario());
                request.getRequestDispatcher("visualizaUsuario.jsp").forward(request, response);
            }
            //PEGANDO OS DADOS DO USUÁRIO PARA O FORMULÁRIO
            if (action.equals("meusdados")) {
                HttpSession sessao = request.getSession();
                
                AcessoBean acs = new AcessoBean();
                acs = (AcessoBean) sessao.getAttribute("usuario");

                //int id = Integer.parseInt(request.getParameter("idusuario"));
                //int id = acesso.getIdusuario();
                int id = acs.getIdusuario();

                UsuarioBean usuar = new UsuarioBean();
                UsuarioDAO daoz = new UsuarioDAO();
                EnderecoBean end = new EnderecoBean();
                AcessoBean acess = new AcessoBean();

                int idendereco = daoz.localizarMeuEndereco(id);

                end = daoz.localizarEndereco(idendereco);
                usuar = daoz.localizar(id);
                acess = daoz.localizarAcesso(id);

                request.setAttribute("acesso", acess);
                request.setAttribute("end", end);
                request.setAttribute("usuario", usuar);

                request.getRequestDispatcher("chamadados.jsp").forward(request, response);
            }
            if (action.equals("editar")) {
                int id = Integer.parseInt(request.getParameter("idusuario"));

                UsuarioBean usuBean = new UsuarioBean();
                UsuarioDAO usuDao = new UsuarioDAO();
                usuBean = usuDao.localizar(id);

                request.setAttribute("usuario", usuBean);
                request.getRequestDispatcher("editarusuario.jsp").forward(request, response);
            }
            if (action.equals("atualizar")) {
                UsuarioBean usuarioBean = new UsuarioBean();
                usuarioBean.setIdusuario(Integer.parseInt(request.getParameter("txtidUsuario")));
                usuarioBean.setNome(request.getParameter("txtNome"));
                usuarioBean.setPai(request.getParameter("txtPai"));
                usuarioBean.setMae(request.getParameter("txtMae"));
                usuarioBean.setNascimento(request.getParameter("txtData"));
                usuarioBean.setCpf(request.getParameter("cpf"));
                usuarioBean.setRg(request.getParameter("rg"));
                System.out.println("idusuario" + usuarioBean.getIdusuario());
                UsuarioDAO usuDAO = new UsuarioDAO();
                usuDAO.editar(usuarioBean);

                request.setAttribute("usuarios", usuDAO.listarUsuario());
                request.getRequestDispatcher("visualizaUsuario.jsp").forward(request, response);
            }
            if (action.equals("atualizarusuario")) {
                UsuarioBean usuarioBean = new UsuarioBean();
                usuarioBean.setIdusuario(Integer.parseInt(request.getParameter("txtidUsuario")));
                usuarioBean.setNome(request.getParameter("txtNome"));
                usuarioBean.setPai(request.getParameter("txtPai"));
                usuarioBean.setMae(request.getParameter("txtMae"));
                usuarioBean.setNascimento(request.getParameter("txtData"));
                usuarioBean.setCpf(request.getParameter("cpf"));
                usuarioBean.setRg(request.getParameter("rg"));

                System.out.println("idusuario" + usuarioBean.getIdusuario());
                UsuarioDAO usuDAO = new UsuarioDAO();
                usuDAO.editar(usuarioBean);

                request.setAttribute("usuarios", usuDAO.listarUsuario());
                request.getRequestDispatcher("Nformulario.jsp").forward(request, response);
            }
            if (action.equals("excluir")) {
                int id = Integer.parseInt(request.getParameter("idusuario"));
                int end = Integer.parseInt(request.getParameter("idendereco"));

                UsuarioDAO daolist = new UsuarioDAO();
                daolist.excluir(id, end);

                request.setAttribute("usuarios", daolist.listarUsuario());
                request.getRequestDispatcher("visualizaUsuario.jsp").forward(request, response);
            }
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ValidarFormulario</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Validar Formulario at</h1>");

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
