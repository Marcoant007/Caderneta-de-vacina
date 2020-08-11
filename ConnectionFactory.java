package br.com.senaces.factory;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class ConnectionFactory {

    public Connection connection = null;
    private final String DRIVER = "com.mysql.jdbc.Driver";
    private final String DBNAME = "dbcadernetavacinamarco";
    private final String URL = "jdbc:mysql://localhost:3307/dbcadernetavacina?useTimezone=true&serverTimezone=UTC";
    private final String LOGIN = "root";
    private final String SENHA = "mordekai07";

    public boolean getConnection() {
        try {
            Class.forName(DRIVER);
            connection = DriverManager.getConnection(URL, LOGIN, SENHA);
            System.out.println("Conectado com Sucesso!");
            return true;

        } catch (ClassNotFoundException erro) {
            System.out.println("Driver não encontrado..." + erro);
            return false;
        } catch (SQLException e) {
            System.out.println("Falha ao conectar..." + e);
            return false;
        } catch (Exception e) {
            System.out.println("Falha geral ao conectar..." + e);
            return false;
        }
    }

    public void close() {
        try {
            connection.close();
            // JOptionPane.showMessageDialog(null, "Desconectado do Banco de Dados!");
        } catch (SQLException erro) {
            System.out.println("Erro ao Desconectar do Banco de Dados: "+erro);
        } catch (Exception e){
            System.out.println("Erro geral ao Desconectar do Banco de Dados: "+e);
        }
    }
}
