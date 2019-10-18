package dao;

import static jdbc.ConnectionFactory.getConnection;
import entidades.Cliente;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.JOptionPane;

public class ClienteDAO extends DAO<Cliente> {

    public ClienteDAO() throws SQLException {
    }// Fim do Construtor

    @Override
    public void incluir(Cliente objt) throws SQLException {
        try {
            String sql = "INSERT INTO cliente"
                    + " (nome, endereco, bairro, numero, cidade, uf, email, senha)"
                    + " VALUES (?, ?, ?, ?, ?, ?, ?, ?);";

            PreparedStatement stmt = getConnection().prepareStatement(sql);
            stmt.setString(1, objt.getNome());
            stmt.setString(2, objt.getEndereco());
            stmt.setString(3, objt.getBairro());
            stmt.setString(4, objt.getNumero());
            stmt.setString(5, objt.getCidade());
            stmt.setString(6, objt.getUf());
            stmt.setString(7, objt.getEmail());
            stmt.setString(8, objt.getSenha());

            stmt.execute();
            stmt.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public Cliente consultar(int id) throws SQLException {

        try {

            String sql = "SELECT nome, endereco, bairro, numero, cidade, uf, email, senha"
                    + " FROM cliente"
                    + " WHERE id = ?;";

            PreparedStatement stmt = getConnection().prepareStatement(sql);
            stmt.setInt(1, id);

            ResultSet rs = stmt.executeQuery();

            Cliente cliente = new Cliente();

            if (rs.next()) {
                cliente.setNome(rs.getString("nome"));
                cliente.setEndereco(rs.getString("endereco"));
                cliente.setBairro(rs.getString("bairro"));
                cliente.setNumero(rs.getString("numero"));
                cliente.setCidade(rs.getString("cidade"));
                cliente.setUf(rs.getString("uf"));
                cliente.setEmail(rs.getString("email"));
                cliente.setSenha(rs.getString("senha"));
            }

            rs.close();
            stmt.close();

            return cliente;

        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void atualizar(Cliente objt) throws SQLException {
        try {
            String sql = "UPDATE cliente SET"
                    + " nome = ?,"
                    + " endereco = ?,"
                    + " bairro = ?,"
                    + " numero = ?,"
                    + " cidade = ?,"
                    + " uf = ?,"
                    + " email = ?,"
                    + " senha = ?,"
                    + " WHERE id = ?;";

            PreparedStatement stmt = getConnection().prepareStatement(sql);
            stmt.setString(1, objt.getNome());
            stmt.setString(2, objt.getEndereco());
            stmt.setString(3, objt.getBairro());
            stmt.setString(4, objt.getNumero());
            stmt.setString(5, objt.getCidade());
            stmt.setString(6, objt.getUf());
            stmt.setString(7, objt.getEmail());
            stmt.setString(8, objt.getSenha());
            stmt.setInt(9, objt.getId());

            stmt.executeUpdate();
            stmt.close();

        } catch (Exception e) {
            throw new RuntimeException();
        }
    }

    @Override
    public void excluir(int id) throws SQLException {
        try {

            String sql = "DELETE FROM cliente WHERE"
                    + " id = ?";

            PreparedStatement stmt = getConnection().prepareStatement(sql);
            stmt.setInt(1, id);
            stmt.executeUpdate();
            stmt.close();

        } catch (Exception e) {
            throw new RuntimeException();
        }
    }

    public Cliente consultarEmail(String email, String senha) throws SQLException {

        try {

            String sql = "SELECT nome, endereco, bairro, numero, cidade, uf, email, senha"
                    + " FROM cliente"
                    + " WHERE email LIKE ? AND senha LIKE ?;";

            PreparedStatement stmt = getConnection().prepareStatement(sql);
            stmt.setString(1, email);
            stmt.setString(2, senha);

            ResultSet rs = stmt.executeQuery();

            Cliente cliente = new Cliente();
            if (rs.next()) {
                cliente.setNome(rs.getString("nome"));
                cliente.setEndereco(rs.getString("endereco"));
                cliente.setBairro(rs.getString("bairro"));
                cliente.setNumero(rs.getString("numero"));
                cliente.setCidade(rs.getString("cidade"));
                cliente.setUf(rs.getString("uf"));
                cliente.setEmail(rs.getString("email"));
                cliente.setSenha(rs.getString("senha"));
            }

            rs.close();
            stmt.close();

            return cliente;

        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

}
