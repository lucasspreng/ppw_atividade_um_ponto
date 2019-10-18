package jdbc;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {
    
    static{
        try{
            /*
            Carrega a classe com.mysql.jdbc.Driver que é implementada do Driver
            JDBC
            */
            
            Class.forName("com.mysql.jdbc.Driver");
        }catch(Exception e){
            e.printStackTrace();
        }
    }// Fim do Static
    
    /*
    O méodo getConnection retorna uma conexão com a Base de Dados
    */
    
    public static Connection getConnection() throws SQLException{
     return (Connection) DriverManager.getConnection("jdbc:mysql://localhost/nubank", "root", "");  
    }// Fim do Método getConnection
}// Fim da Classe ConnectionFactory
