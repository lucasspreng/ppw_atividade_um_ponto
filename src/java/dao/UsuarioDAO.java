package dao;

import static jdbc.ConnectionFactory.getConnection;
import entidades.Usuario;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UsuarioDAO extends DAO<Usuario> {

    public UsuarioDAO() throws SQLException {
    }// Fim do Construtor

    @Override
    public void incluir(Usuario objt) throws SQLException {
        try {
            String sql = "INSERT INTO usuario"
                    + " (email, senha)"
                    + " VALUES (?, ?);";

            PreparedStatement stmt = getConnection().prepareStatement(sql);
            stmt.setString(1, objt.getEmail());
            stmt.setString(2, objt.getSenha());

            stmt.execute();
            stmt.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public Usuario consultar(int id) throws SQLException {

        try {

            String sql = "SELECT email, senha"
                    + " FROM usuario"
                    + " WHERE id = ?;";

            PreparedStatement stmt = getConnection().prepareStatement(sql);
            stmt.setInt(1, id);

            ResultSet rs = stmt.executeQuery();

            Usuario user = new Usuario();

            if (rs.next()) {
                user.setEmail(rs.getString("email"));
                user.setSenha(rs.getString("senha"));
            }

            rs.close();
            stmt.close();

            return user;

        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void atualizar(Usuario objt) throws SQLException {
        try {
            String sql = "UPDATE usuario SET"
                    + " email = ?,"
                    + " senha = ?,"
                    + " WHERE id = ?;";

            PreparedStatement stmt = getConnection().prepareStatement(sql);
            stmt.setString(1, objt.getEmail());
            stmt.setString(2, objt.getSenha());
            stmt.setInt(3, objt.getId());
            stmt.executeUpdate();
            stmt.close();

        } catch (Exception e) {
            throw new RuntimeException();
        }
    }

    @Override
    public void excluir(int id) throws SQLException {
        try {

            String sql = "DELETE FROM usuario WHERE"
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
