package dao;

import jdbc.ConnectionFactory;
import java.sql.Connection;
import java.sql.SQLException;

public abstract class DAO<T extends Object> {

    private Connection connection;

    // Construtor DAO para criar uma nova conxão toda a vez que a classe for instanciada
    public DAO() throws SQLException {
        // Chamar o método getConnection da classe ConnectionFactory
        connection
                = ConnectionFactory.getConnection();
    }// Fim do Construtor

    // Método para obter a conexão
    public Connection getConnection() {
        return connection;
    }// Fim do método getConnection

    // Método para encerrar a conexão
    public void closeConnection() throws SQLException {
        connection.close();
    }// Fim do método closeConnection

    // Método abstrato para incluir uma instância de uma entidade de base de dados
    public abstract void incluir(T objt) throws SQLException;

    public abstract T consultar(int id) throws SQLException;

    public abstract void atualizar(T objt) throws SQLException;

    public abstract void excluir(int id) throws SQLException;
    
}// Fim da classe DAO
