/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.senaces.dao;

import br.com.senaces.bean.LocalBean;
import br.com.senaces.bean.RegistroVacinaBean;
import br.com.senaces.bean.UsuarioBean;
import br.com.senaces.bean.VacinaBean;
import br.com.senaces.factory.ConnectionFactory;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author sala302b
 */
public class RegistroVacinaDAO {

    public void cadastrarRegistros(RegistroVacinaBean reg) {
        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;

        if (conexao.getConnection()) {
            try {
                String sql = "INSERT INTO registro_vacinas(vacina,lote,laboratorio,dose,local,atendente,data,usuario_id)"
                        + " VALUES(?,?,?,?,?,?,?,? ) ";
                stmt = conexao.connection.prepareStatement(sql);
                stmt.setInt(1, reg.getVacina());
                stmt.setString(2, reg.getLote());
                stmt.setString(3, reg.getLaboratorio());
                stmt.setString(4, reg.getDose());
                stmt.setInt(5, reg.getLocal());
                stmt.setInt(6, Integer.parseInt(reg.getAtendente()));
                stmt.setString(7, reg.getData());
                stmt.setInt(8, reg.getUsuario());
                stmt.execute();

                System.out.println("Registro salvo com sucesso!");
            } catch (Exception e) {
                System.out.println("Error: " + e);
            } finally {
                conexao.close();
            }

        }

    }

    public List gerarCard(int idusuario) {
        ConnectionFactory conexao = new ConnectionFactory();
        PreparedStatement stmt = null;
        ResultSet rs;
        List<RegistroVacinaBean> Listavacina = new ArrayList();
        if (conexao.getConnection()) {
            try {
                String sql = "SELECT r.idregistro_vacinas as idregistro_vacinas, r.vacina as idvacina, r.lote as lote, r.laboratorio as laboratorio, r.local as idlocal,"
                        + "r.atendente as idatendente, r.dose as dose , r.data as data, r.usuario_id as idusuario,"
                        + "v.nome as vacina, l.nome as local, u.nome as atendente "
                        + "FROM registro_vacinas as r, usuario as u, local as l, vacina as v "
                        + "WHERE r.usuario_id = u.idusuario AND r.vacina = v.idvacina AND r.local = l.idlocal AND r.usuario_id = ? order by r.idregistro_vacinas asc ";
                stmt = conexao.connection.prepareStatement(sql);
                stmt.setInt(1, idusuario);
                rs = stmt.executeQuery();
                while (rs.next()) {                    
                    RegistroVacinaBean r = new RegistroVacinaBean();
                    r.setLote(rs.getString("lote"));
                    r.setLaboratorio(rs.getString("laboratorio"));
                    r.setDose(rs.getString("dose"));
                    r.setData(rs.getString("data"));
                    r.setNome_vacina(rs.getString("vacina"));
                    r.setNome_local(rs.getString("local"));
                    r.setAtendente(rs.getString("atendente"));
                    Listavacina.add(r);
                }                
            } catch (Exception e) {
                System.out.println("Erro: " + e);
            } finally {
                conexao.close();
            }
        }
        return Listavacina;
    }

}
