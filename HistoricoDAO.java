/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.senaces.dao;

import br.com.senaces.bean.HistoricoBean;
import br.com.senaces.factory.ConnectionFactory;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author sala302b
 */
public class HistoricoDAO {
    
    public void salvarHistorico(HistoricoBean historico){
        
    
    ConnectionFactory conexao = new ConnectionFactory();
    PreparedStatement stmt = null;
    
    
        if (conexao.getConnection()) {
            try {
                String sql = "INSERT INTO historico (peso,altura,idade,perimetro,lancamento,usuario,unidade)"
                        + "VALUES(?,?,?,?,?,?,?)";
                
                stmt = conexao.connection.prepareStatement(sql);
                
                stmt.setFloat(1, Float.parseFloat(historico.getPeso()));
                stmt.setFloat(2, Float.parseFloat(historico.getAltura()));
                stmt.setInt(3, Integer.parseInt(historico.getIdade()));
                stmt.setFloat(4, Float.parseFloat(historico.getPerimetro()));
                
                stmt.setString(5, historico.getLancamento());
                stmt.setInt(6, historico.getIdusuario());
                stmt.setString(7, historico.getUnidade());
                stmt.execute();
                
               
                
                
                
                System.out.println("Historico salvo com sucesso!");
            } catch (Exception e) {
                  System.out.println("Error: " + e);
            }finally {
                conexao.close();
            }
        }
        }
    
    
}
