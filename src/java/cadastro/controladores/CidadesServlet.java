package cadastro.controladores;

import cadastro.dao.CidadeDAO;
import cadastro.entidades.Cidade;
import cadastro.entidades.Estado;
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author atila
 */
public class CidadesServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String acao = request.getParameter("acao");
        CidadeDAO dao = null;
        RequestDispatcher disp = null;

        try {
            dao = new CidadeDAO();

            if (acao.equals("criar")) {
                String nome = request.getParameter("nome");
                int idEstado = Integer.parseInt(request.getParameter("idEstado"));

                Estado e = new Estado();
                e.setId(idEstado);
                
                Cidade c = new Cidade();
                c.setNome(nome);
                c.setEstado(e);

                dao.salvar(c);

                disp = request.getRequestDispatcher("/formularios/cidades/listagem.jsp");
                
            } else if (acao.equals("alterar")) {

                int id = Integer.parseInt(request.getParameter("id"));
                String nome = request.getParameter("nome");
                int idEstado = Integer.parseInt(request.getParameter("idEstado"));

                Estado e = new Estado();
                e.setId(idEstado);
                
                Cidade c = new Cidade();
                c.setId(id);
                c.setNome(nome);
                c.setEstado(e);
                
                dao.atualizar(c);

                disp = request.getRequestDispatcher("/formularios/cidades/listagem.jsp");
                
            } else if (acao.equals("excluir")) {
                int id = Integer.parseInt(request.getParameter("id"));

                Cidade c = new Cidade();
                c.setId(id);

                dao.excluir(c);

                disp = request.getRequestDispatcher("/formularios/cidades/listagem.jsp");
                
            } else if (acao.equals("prepAlteracao")) {

                int id = Integer.parseInt(request.getParameter("id"));
                Cidade c = (Cidade) dao.obterPorId(id);
                request.setAttribute("cidade", c);

                disp = request.getRequestDispatcher("/formularios/cidades/alterar.jsp");
                
            } else if (acao.equals("prepExclusao")) {

                int id = Integer.parseInt(request.getParameter("id"));
                Cidade c = (Cidade) dao.obterPorId(id);
                request.setAttribute("cidade", c);

                disp = request.getRequestDispatcher("/formularios/cidades/excluir.jsp");
            }
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
        if (disp != null) {
            disp.forward(request, response);
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
