package br.com.senaces.dao;

import br.com.senaces.bean.AcessoBean;
import br.com.senaces.bean.EnderecoBean;
import br.com.senaces.bean.UsuarioBean;
import br.com.senaces.factory.ConnectionFactory;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Date;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class UsuarioDAO {
    
    public AcessoBean logar(AcessoBean usuario) {
        ConnectionFactory conexao = new ConnectionFactory();
        AcessoBean resultado = new AcessoBean();
        ResultSet rs = null;
        PreparedStatement stmt = null;
        if (conexao.getConnection()) {
            try {
                String sql = "SELECT * FROM acesso WHERE login=? AND senha=?";
                /*AQUI DENTRO EU PESQUISO PELO LOGIN E PELA SENHA NO BANCO*/
                stmt = conexao.connection.prepareStatement(sql);
                /* AQUI PREPARO A CONEXÃO*/
                stmt.setString(1, usuario.getNome());
                /* AQUI DENTRO EU PEGO O NOME */
                stmt.setString(2, usuario.getSenha());
                /* AQUI DENTRO EU PEGO A SENHA */
                rs = stmt.executeQuery();
                /*MANDO EXECUTAR*/
                if (rs.next()) {
                    System.out.println("Inicio");
                    resultado.setIdusuario(rs.getInt("usuario"));
                    resultado.setNome(rs.getString("login"));
                    resultado.setTipo(rs.getString("tipo"));
                    System.out.println("FIM");                    
                }
            } catch (Exception e) {
                System.out.println("Erro: " + e);
            } finally {
                conexao.close();
            }
        }
        return resultado;
    }

    /*AQUI É O CARA AONDE EU CRIO O LOGIN, ELE SE CADASTRA E SALVA NO MEU BANCO*/
    public void SalvarAcesso(AcessoBean acesso) {
        ConnectionFactory conexao = new ConnectionFactory();
        //int resultado = 0; /* PRECISO DEFINIR ISSO SEMPRE QUE EU PRECISAR PEGAR UMA CHAVE DE ACESSO EX: IDUSUARIO  MAS TALVEZ EU NEM PRECISE DISSO AQUI*/

        PreparedStatement stmt = null;
        // System.out.println("Usuario: "+usuario.getUsuario());
        if (conexao.getConnection()) {
            try {
                
                String sql = "INSERT INTO acesso (login,senha,tipo,usuario)"
                        + " VALUES(?,?,?,?)";
                stmt = conexao.connection.prepareStatement(sql);
                stmt.setString(1, acesso.getNome());
                stmt.setString(2, acesso.getSenha());
                stmt.setString(3, acesso.getTipo());
                stmt.setInt(4, acesso.getIdusuario());
                
                stmt.execute();
                
                System.out.println("Usuario salvo com sucesso!");
            } catch (Exception e) {
                System.out.println("Error: " + e);
            } finally {
                conexao.close();
            }
        }
        
    }

    /* AQUI PRESTA ATENÇÃO NESSE INT */
    public int salvar(UsuarioBean usuarios) {
        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;
        int resultado = 0;
        if (conexao.getConnection()) {
            try {
                String sql = "INSERT INTO usuario(nome,cpf,pai,mae,rg,registro_civil,etnia,endereco,cartao_sus,nascimento,telefone)"
                        + " VALUES(?,?,?,?,?,?,?,?,?,?,?)";
                stmt = conexao.connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
                /*AQUI PEGA A CONNECTION*/
                stmt.setString(1, usuarios.getNome());
                stmt.setString(2, usuarios.getCpf());
                stmt.setString(3, usuarios.getPai());
                stmt.setString(4, usuarios.getMae());
                stmt.setString(5, usuarios.getRg());
                stmt.setString(6, usuarios.getRegistro());
                stmt.setString(7, usuarios.getEtnia());
                
                
                
                stmt.setInt(8, usuarios.getIdendereco());
                stmt.setString(9, usuarios.getCartao_sus());
                stmt.setDate(10, Date.valueOf(usuarios.getNascimento()));
                stmt.setString(11, usuarios.getTelefone());

                /* IFIZIN PARA PEGAR O ID QUE FOI GERADO E PEGAR O RESULTADO*/
                if (stmt.executeUpdate() > 0) {
                    ResultSet rs = stmt.getGeneratedKeys();
                    
                    if (rs.next()) {
                        resultado = rs.getInt(1);
                        
                    }
                }
                
                System.out.println("Usuario salvo com sucesso!");
            } catch (Exception e) {
                System.out.println("Error: " + e);
            } finally {
                conexao.close();
            }
        }
        return resultado;
    }

    /*ESTE MÉTODO É PARA LISTAR O USUARIO PARA APARECER QUANDO ELE FOR CADASTRADO*/
    public List listarUsuario() {
        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;
        ResultSet rs;
        List<UsuarioBean> usuarios = new ArrayList();
        if (conexao.getConnection()) {
            
            try {
                String sql = "SELECT * FROM usuario";
                stmt = conexao.connection.prepareStatement(sql);
                rs = stmt.executeQuery();
                
                while (rs.next()) {
                    UsuarioBean u = new UsuarioBean();
                    u.setIdusuario(rs.getInt("idusuario"));
                    u.setNome(rs.getString("nome"));
                    u.setCpf(rs.getString("cpf"));
                    u.setPai(rs.getString("pai"));
                    u.setMae(rs.getString("mae"));
                    u.setRg(rs.getString("rg"));
                    u.setTelefone(rs.getString("telefone"));
                    u.setNascimento(rs.getString("nascimento"));
                    u.setCartao_sus(rs.getString("cartao_sus"));
                    u.setIdendereco(rs.getInt("endereco"));
                    usuarios.add(u);
                }
                
            } catch (Exception e) {
                System.out.println("Erro ao selecionar usuario: " + e);
            } finally {
                conexao.close();
            }
            
        }
        
        return usuarios;
        
    }
    
    public int SalvarEndereco(EnderecoBean endereco) {
        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;
        int resultado = 0;
        if (conexao.getConnection()) {
            try {
                String sql = "INSERT INTO endereco(logradouro,bairro,cidade,estado,cep) VALUE(?,?,?,?,?)";
                stmt = conexao.connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
                stmt.setString(1, endereco.getLogradouro());
                stmt.setString(2, endereco.getBairro());
                stmt.setString(3, endereco.getCidade());
                stmt.setString(4, endereco.getEstado());
                stmt.setString(5, endereco.getCep());
                
                if (stmt.executeUpdate() > 0) {
                    ResultSet rs = stmt.getGeneratedKeys();
                    
                    if (rs.next()) {
                        resultado = rs.getInt(1);
                        
                    }
                }
                System.out.println("Endereço salvo com sucesso!");
                
            } catch (Exception e) {
                System.out.println("Error: " + e);
            } finally {
                conexao.close();
            }
            
        }
        return resultado;
    }
    
    public UsuarioBean localizar(int id) {
        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;
        ResultSet rs;
        
        UsuarioBean usuario = new UsuarioBean();
        if (conexao.getConnection()) {
            try {
                String sql = "SELECT * FROM usuario WHERE idusuario = ?";
                stmt = conexao.connection.prepareStatement(sql);
                stmt.setInt(1, id);
                rs = stmt.executeQuery();
                
                if (rs.next()) {
                    
                    usuario.setIdusuario(rs.getInt("idusuario"));
                    usuario.setNome(rs.getString("nome"));
                    usuario.setCpf(rs.getString("cpf"));
                    usuario.setPai(rs.getString("pai"));
                    usuario.setMae(rs.getString("mae"));
                    usuario.setRg(rs.getString("rg"));
                    usuario.setCartao_sus(rs.getString("cartao_sus"));
                    usuario.setNascimento(rs.getString("nascimento"));
                    usuario.setTelefone(rs.getString("telefone"));
                    usuario.setEtnia(rs.getString("etnia"));
                    
                    
                }
                
            } catch (Exception e) {
                System.out.println("Error: " + e);
            } finally {
                conexao.close();
            }
        }
        return usuario;
    }
    
    
    
    public void editar(UsuarioBean usuario) {
        
        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;
        
        if (conexao.getConnection()) {
            
            try {
                String sql = "UPDATE usuario SET nome=?, pai=?, mae=?, nascimento=? , cpf=? , rg=?"
                        + "WHERE idusuario=?";
                
                stmt = conexao.connection.prepareStatement(sql);
                stmt.setString(1, usuario.getNome());
                stmt.setString(2, usuario.getPai());
                stmt.setString(3, usuario.getMae());
                stmt.setDate(4, Date.valueOf(usuario.getNascimento()));
                stmt.setString(5, usuario.getCpf());
                stmt.setString(6, usuario.getRg());
                stmt.setInt(7, usuario.getIdusuario());
                stmt.executeUpdate();
                
            } catch (Exception e) {
                System.out.println("Error: " + e);
            } finally {
                conexao.close();
            }
        }
        
    }
    
    public void excluir(int id, int end) {
        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;
        
        if (conexao.getConnection()) {
            try {
                String sql1 = "DELETE FROM historico WHERE usuario=?";
                String sql2 = "DELETE FROM acesso WHERE usuario=?";
                String sql3 = "DELETE FROM registro_vacinas WHERE usuario_id=?";
                String sql5 = "DELETE FROM endereco WHERE idendereco=?";
                String sql4 = "DELETE FROM usuario WHERE idusuario=?";
                
                stmt = conexao.connection.prepareStatement(sql1);
                stmt.setInt(1, id);
                stmt.executeUpdate();
                
                stmt = conexao.connection.prepareStatement(sql2);
                stmt.setInt(1, id);
                stmt.executeUpdate();
                
                stmt = conexao.connection.prepareStatement(sql3);
                stmt.setInt(1, id);
                stmt.executeUpdate();
                
                stmt = conexao.connection.prepareStatement(sql4);
                stmt.setInt(1, id);
                stmt.executeUpdate();
                
                stmt = conexao.connection.prepareStatement(sql5);
                stmt.setInt(1, end);
                stmt.executeUpdate();
                
            } catch (Exception e) {
                System.out.println("Error: " + e);
            } finally {
                conexao.close();
            }
        }
        
    }
    
    public EnderecoBean localizarEndereco(int id) {
        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;
        ResultSet rs;
        
        EnderecoBean end = new EnderecoBean();
        if (conexao.getConnection()) {
            try {
                String sql = "SELECT * FROM endereco WHERE idendereco = ?";
                stmt = conexao.connection.prepareStatement(sql);
                stmt.setInt(1, id);
                rs = stmt.executeQuery();
                
                if (rs.next()) {
                    end.setLogradouro(rs.getString("logradouro"));
                    end.setBairro(rs.getString("bairro"));
                    end.setCidade(rs.getString("cidade"));
                    end.setCep(rs.getString("cep"));
                    
                }
                
            } catch (Exception e) {
                System.out.println("Error: " + e);
            } finally {
                conexao.close();
            }
        }
      
        return end;
    }
    
    public AcessoBean localizarAcesso(int id) {
        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;
        ResultSet rs;
        
        AcessoBean acesso = new AcessoBean();
        if (conexao.getConnection()) {
            try {
                String sql = "SELECT * FROM acesso WHERE usuario = ?";
                stmt = conexao.connection.prepareStatement(sql);
                stmt.setInt(1, id);
                rs = stmt.executeQuery();
                
                if (rs.next()) {
                    acesso.setIdusuario(rs.getInt("idacesso"));
                    acesso.setNome(rs.getString("login"));
                    acesso.setSenha(rs.getString("senha"));
                    acesso.setTipo(rs.getString("tipo"));
                    
                }
                
            } catch (Exception e) {
                System.out.println("Error: " + e);
            } finally {
                conexao.close();
            }
        }
        return acesso;
    }

    public int localizarMeuEndereco(int id) {
        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;
        ResultSet rs;
        int resultado = 0;
        if (conexao.getConnection()) {
            try {
                String sql = "SELECT endereco FROM usuario WHERE idusuario=?";
                stmt = conexao.connection.prepareStatement(sql);
                stmt.setInt(1, id);
                rs = stmt.executeQuery();
                if (rs.next()) {
                    resultado = rs.getInt("endereco");
                    
                }
            } catch (Exception e) {
                System.out.println("Error" +e);
            }
            finally{
                conexao.close();
            }
            
        }
        return resultado;
               
    }

    
    
}
