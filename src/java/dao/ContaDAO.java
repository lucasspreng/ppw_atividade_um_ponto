package dao;

import static jdbc.ConnectionFactory.getConnection;
import entidades.Conta;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ContaDAO extends DAO<Conta> {

    public ContaDAO() throws SQLException {
    }// Fim do Construtor

    @Override
    public void incluir(Conta objt) throws SQLException {
        try {
            String sql = "INSERT INTO conta"
                    + " (agencia, conta, digito)"
                    + " VALUES (?, ?, ?);";

            PreparedStatement stmt = getConnection().prepareStatement(sql);
            stmt.setString(1, objt.getAgencia());
            stmt.setString(2, objt.getConta());
            stmt.setString(2, objt.getDigito());

            stmt.execute();
            stmt.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public Conta consultar(int id) throws SQLException {

        try {

            String sql = "SELECT email, senha"
                    + " FROM conta"
                    + " WHERE id = ?;";

            PreparedStatement stmt = getConnection().prepareStatement(sql);
            stmt.setInt(1, id);

            ResultSet rs = stmt.executeQuery();

            Conta conta = new Conta();

            if (rs.next()) {
                conta.setAgencia(rs.getString("agencia"));
                conta.setConta(rs.getString("conta"));
                conta.setDigito(rs.getString("digito"));
            }

            rs.close();
            stmt.close();

            return conta;

        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void atualizar(Conta objt) throws SQLException {
        try {
            String sql = "UPDATE conta SET"
                    + " agencia = ?,"
                    + " conta = ?,"
                    + " digito = ?,"
                    + " WHERE id = ?;";

            PreparedStatement stmt = getConnection().prepareStatement(sql);
            stmt.setString(1, objt.getAgencia());
            stmt.setString(2, objt.getConta());
            stmt.setString(3, objt.getDigito());
            stmt.setInt(4, objt.getId());
            stmt.executeUpdate();
            stmt.close();

        } catch (Exception e) {
            throw new RuntimeException();
        }
    }

    @Override
    public void excluir(int id) throws SQLException {
        try {

            String sql = "DELETE FROM conta WHERE"
                    + " id = ?";

            PreparedStatement stmt = getConnection().prepareStatement(sql);
            stmt.setInt(1, id);
            stmt.executeUpdate();
            stmt.close();

        } catch (Exception e) {
            throw new RuntimeException();
        }
    }

}
