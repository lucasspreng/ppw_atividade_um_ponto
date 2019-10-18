package servlet;

import dao.ClienteDAO;
import dao.UsuarioDAO;
import entidades.Cliente;
import entidades.Conta;
import entidades.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class processaDadosNuBank extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {

        response.setContentType("text/html;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");

        try {

            String acao = request.getParameter("inputAcao");

            if (acao.equals("cliente")) {

                String nome = request.getParameter("nome");
                String endereco = request.getParameter("endereco");
                String bairro = request.getParameter("bairro");
                String numero = request.getParameter("numero");
                String cidade = request.getParameter("cidade");
                String uf = request.getParameter("uf");
                String email = request.getParameter("email");
                String senha = request.getParameter("senha");

                Cliente client = new Cliente();
                client.setNome(nome);
                client.setEndereco(endereco);
                client.setBairro(bairro);
                client.setNumero(numero);
                client.setCidade(cidade);
                client.setUf(uf);
                client.setEmail(email);
                client.setSenha(senha);

                try {
                    ClienteDAO clientDAO = new ClienteDAO();
                    clientDAO.incluir(client);

                    request.setAttribute("clienteCadastrado", client);

                    RequestDispatcher disp = request.getRequestDispatcher("exibeCadastro.jsp");

                    disp.forward(request, response);

                } catch (Exception e) {
                    e.printStackTrace();
                }

            }

            if (acao.equals("conta")) {

                String agencia = request.getParameter("inputAgencia");
                String conta = request.getParameter("inputConta");
                String digito = request.getParameter("inputDigito");

                Conta cont = new Conta();
                cont.setAgencia(agencia);
                cont.setConta(conta);
                cont.setDigito(digito);

                request.setAttribute("acessoConta", cont);

                RequestDispatcher disp = request.getRequestDispatcher("login.jsp");

                disp.forward(request, response);

            }

            if (acao.equals("usuario")) {

                String email = request.getParameter("inputEmail");
                String senha = request.getParameter("inputSenha");

                Usuario user = new Usuario();
                user.setEmail(email);
                user.setSenha(senha);

                try {
                    ClienteDAO clientDAO = new ClienteDAO();
                    Cliente foundUser = new Cliente();
                    foundUser = clientDAO.consultarEmail(user.getEmail(), user.getSenha());

                    if (foundUser.getNome() != null) {

                        request.setAttribute("acessoUsuario", foundUser);

                        RequestDispatcher disp = request.getRequestDispatcher("sistema.jsp");

                        disp.forward(request, response);

                    } else {

                        request.setAttribute("acessoNegado", "Erro: E-mail ou senha incorretos!");

                        RequestDispatcher disp = request.getRequestDispatcher("login.jsp");

                        disp.forward(request, response);

                    }

                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        } catch (Exception e) {

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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(processaDadosNuBank.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(processaDadosNuBank.class.getName()).log(Level.SEVERE, null, ex);
        }
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
