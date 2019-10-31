package cadastro.dao;

import cadastro.entidades.Cidade;
import cadastro.entidades.Estado;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author atila
 */
public class CidadeDAO extends DAO<Cidade> {
    
    public CidadeDAO() throws SQLException {
        
    }

    @Override
    public void salvar(Cidade obj) throws SQLException {
        PreparedStatement stmt = getConnection().prepareStatement(
                "INSERT INTO "
                + "cidade(nome, id_estado); "
                + "VALUES (?, ?);"
        );
        
        stmt.setString(1, obj.getNome());
        stmt.setInt(2, obj.getEstado().getId());
        
        stmt.executeUpdate();
        stmt.close();
    }

    @Override
    public List<Cidade> listarTodos() throws SQLException {
        List<Cidade> lista = new ArrayList<Cidade>();
        
        PreparedStatement stmt = getConnection().prepareStatement(
                "SELECT "
                + "c.id idCidade, "
                + "c.nome nomeCidade, "
                + "e.id idEstado, "
                + "e.nome nomeEstado, "
                + "e.sigla siglaEstado "
                + "FROM "
                + "cidade c, "
                + "estado e "
                + "WHERE c.id_estado = e.id;"
        );
        
        ResultSet rs = stmt.executeQuery();
        
        while (rs.next()) {
            Cidade c = new Cidade();
            Estado e = new Estado();
            
            c.setId(rs.getInt("idCidade"));
            c.setNome(rs.getString("nomeCidade"));
            c.setEstado(e);
            
            e.setId(rs.getInt("idEstado"));
            e.setNome(rs.getString("nomeEstado"));
            e.setSigla(rs.getString("siglaEstado"));
            
            lista.add(c);
        }
        
        rs.close();
        stmt.close();
        
        return lista;
    }

    @Override
    public void atualizar(Cidade obj) throws SQLException {
        
        PreparedStatement stmt = getConnection().prepareStatement(
                "UPDATE cidade "
                + "SET "
                + "nome = ?, "
                + "id_estado = ? "
                + "WHERE id = ?;"
        );
        
        stmt.setString(1, obj.getNome());
        stmt.setInt(2, obj.getEstado().getId());
        stmt.setInt(3, obj.getId());
        
        stmt.executeUpdate();
        stmt.close();
    }

    @Override
    public void excluir(Cidade obj) throws SQLException {
        
        PreparedStatement stmt = getConnection().prepareStatement(
                "DELETE FROM cidade "
                + "WHERE id = ?;"
        );
        
        stmt.setInt(1, obj.getId());
        
        stmt.executeUpdate();
        stmt.close();
        
    }

    @Override
    public Object obterPorId(int id) throws SQLException {
        
        Cidade cidade = null;
        
        PreparedStatement stmt = getConnection().prepareStatement(
                "SELECT "
                + "c.id idCidade, "
                + "c.nome nomeCidade, "
                + "e.id idEstado, "
                + "e.nome nomeEstado, "
                + "e.sigla siglaEstado "
                +"FROM "
                + "cidade c, "
                + "estado e "
                + "WHERE "
                + "c.id = ? AND c.id_estado = e.id;"
        );
        
        stmt.setInt(1, id);
        
        ResultSet rs = stmt.executeQuery();
        
        if (rs.next()) {
            cidade = new Cidade();
            Estado estado = new Estado();
            
            cidade.setId(rs.getInt("idCidade"));
            cidade.setNome(rs.getString("nomeCidade"));
            cidade.setEstado(estado);
            
            estado.setId(rs.getInt("idEstado"));
            estado.setNome(rs.getString("nomeEstado"));
            estado.setSigla(rs.getString("siglaEstado"));
        }
        
        rs.close();
        stmt.close();
        
        return cidade;
    }
    
    
}
