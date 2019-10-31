
package cadastro.dao;

import cadastro.jdbc.ConnectionFactory;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author atila
 */
public abstract class DAO<T extends Object> { /*Limite de extensao de um objeto do tipo T*/
    
    private Connection connection;
    
    //Contrutor DAO para criar uma nova conexão toda vez que a classe for instanciada
    
    public DAO()throws SQLException {
        //chamar o método getConnection da classe ConnectionFactory
        
        connection = ConnectionFactory.getConnection();
    }
    
    //Cria um metodo para obter a conexao
    
    public Connection getConnection(){
        return connection;
    }
    
    //método para encerrar a conexão
    
    public void closeConnection() throws SQLException {
        connection.close();
    }
    
    //Método abstrato para incluir uma instância de uma entidade da base de dados
    
    public abstract void salvar(T obj) throws SQLException;
    
    public abstract List listarTodos() throws SQLException;
    
    public abstract void atualizar(T obj) throws SQLException;
    
    public abstract void excluir(T obj) throws SQLException;
    
    public abstract Object obterPorId(int id) throws SQLException;
    
} //fim da classe DAO
