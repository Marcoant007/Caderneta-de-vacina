/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.senaces.dao;

import br.com.senaces.bean.VacinaBean;
import br.com.senaces.factory.ConnectionFactory;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


/**
 *
 * @author sala302b
 */
public class VacinaDAO {

    public void CadastrarVacina(VacinaBean vacina) {
        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;
        
        if (conexao.getConnection()) {
            
            try {
                String sql = "INSERT INTO vacina (nome,doses,intervalo,primeira_dose)"
                        + "VALUES(?,?,?,?)";
                stmt = conexao.connection.prepareStatement(sql);
                stmt.setString(1, vacina.getNome());
                stmt.setInt(2, Integer.parseInt(vacina.getDoses()));
                stmt.setInt(3, Integer.parseInt(vacina.getIntervalo()));
                stmt.setInt(4, Integer.parseInt(vacina.getPrimeiradose()));
                stmt.execute();

                System.out.println("Vacina Salva com sucesso!");
            } catch (Exception e) {
            } finally {
                conexao.close();
            }

        }
    }
    
     public List listarVacina() {
        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;
        ResultSet rs;
        List <VacinaBean> vacina = new ArrayList();
        if (conexao.getConnection()) {

            try {
                String sql = "SELECT * FROM vacina";
                stmt = conexao.connection.prepareStatement(sql);
                rs = stmt.executeQuery();

                while (rs.next()) {
                    VacinaBean v = new VacinaBean();
                    v.setIdvacina(rs.getInt("idvacina"));
                    v.setNome(rs.getString("nome"));
                    v.setDoses(rs.getString("doses"));
                    v.setIntervalo(rs.getString("intervalo"));
                    v.setPrimeiradose(rs.getString("primeira_dose"));
                    vacina.add(v);
        
                    
                }

            } catch (Exception e) {
                System.out.println("Erro ao selecionar usuario: " + e);
            } finally {
                conexao.close();
            }

        }

        return vacina;

    }
}
