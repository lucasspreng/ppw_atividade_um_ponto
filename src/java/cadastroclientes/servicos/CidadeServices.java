
package cadastroclientes.servicos;

import cadastro.dao.CidadeDAO;
import cadastro.entidades.Cidade;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author atila
 */
public class CidadeServices {
    
    public List<Cidade> getTodos() {
        List<Cidade> lista = new ArrayList<Cidade>();
        CidadeDAO dao = null;
        
        try {
            dao = new CidadeDAO();
            lista = dao.listarTodos();
        } catch (SQLException exc) {
            exc.printStackTrace();
        } finally {
            if (dao != null) {
                try {
                    dao.closeConnection();
                } catch (SQLException exc) {
                    exc.printStackTrace();
                }
            }
        }
        
        return lista;
    }
    
}
