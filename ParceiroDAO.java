/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.senaces.dao;

import br.com.senaces.bean.ParceiroBean;
import br.com.senaces.factory.ConnectionFactory;
import java.sql.PreparedStatement;

/**
 *
 * @author sala302b
 */
public class ParceiroDAO {
    
    public void SalvarParceiro (ParceiroBean parceiro ) {
     ConnectionFactory conexao = new ConnectionFactory();
     
     PreparedStatement stmt = null;
        if (conexao.getConnection()) {
            try {
                String sql = "INSERT INTO parceiro(nome,telefone,contato,site,cnpj,endereco)"
                        + "VALUES(?,?,?,?,?,?)";
               stmt = conexao.connection.prepareStatement(sql);
               stmt.setString(1, parceiro.getNome());
               stmt.setString(2, parceiro.getTelefone());
               stmt.setString(3, parceiro.getContato());
               stmt.setString(4, parceiro.getSite());
               stmt.setString(5, parceiro.getCnpj());
               stmt.setInt(6,parceiro.getIdendereco());
               stmt.execute();
               
                
                
                
                
               System.out.println("Usuario salvo com sucesso!"); 
            } catch (Exception e) {
                System.out.println("Error: " + e);
            } finally {
                conexao.close();
  
            
            
        }
     
     
     
     
     
     
    }
    
}}
