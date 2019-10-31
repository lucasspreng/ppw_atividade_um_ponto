/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cadastroclientes.servicos;

import cadastro.dao.EstadoDAO;
import cadastro.entidades.Estado;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author atila
 */
public class EstadoServices {
    
    public List<Estado> getTodos() {
        List<Estado> lista = new ArrayList<Estado>();
        EstadoDAO dao = null;
        
        try {
            dao = new EstadoDAO();
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
