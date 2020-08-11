/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.senaces.dao;

import br.com.senaces.bean.LocalBean;
import br.com.senaces.factory.ConnectionFactory;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author sala302b
 */
public class LocalDAO {

    public void cadastrarLocal(LocalBean local) {
        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;
        if (conexao.getConnection()) {
            try {
                String sql = "INSERT INTO local (nome,telefone,endereco)"
                        + "Values(?,?,?)";

                stmt = conexao.connection.prepareStatement(sql);
                stmt.setString(1, local.getNome());
                stmt.setString(2, local.getTelefone());
                stmt.setInt(3, local.getEndereco());
                stmt.execute();

                System.out.println("Usuario salvo com sucesso!");
            } catch (Exception e) {
                System.out.println("Error: " + e);
            } finally {
                conexao.close();
            }

        }

    }

    public List ListarLocal() {

        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;
        ResultSet rs;
        List<LocalBean> Local = new ArrayList();
        if (conexao.getConnection()) {

            try {
                String sql = "SELECT * FROM local";
                stmt = conexao.connection.prepareStatement(sql);
                rs = stmt.executeQuery();

                while (rs.next()) {
                    LocalBean l = new LocalBean();

                    l.setIdlocal(rs.getInt("idlocal"));
                    l.setNome(rs.getString("nome"));
                    Local.add(l);

                }

            } catch (Exception e) {
                System.out.println("Erro ao selecionar usuario: " + e);
            } finally {
                conexao.close();
            }
        }
        return Local;

    }
}
