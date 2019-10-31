package cadastroclientes.servicos;

import cadastro.dao.CidadeDAO;
import cadastro.dao.ClienteDAO;
import cadastro.entidades.Cliente;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author atila
 */
public class ClienteServices {

    public List<Cliente> getTodos() {
        List<Cliente> lista = new ArrayList<Cliente>();
        ClienteDAO dao = null;

        try {
            dao = new ClienteDAO();
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
