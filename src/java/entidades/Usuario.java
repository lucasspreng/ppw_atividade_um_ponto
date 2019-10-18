package entidades;

public class Usuario {
    
    private int id;
    private String email;
    private String senha;

    public void setId(int id) {
        this.id = id;
    }
        
    public void setEmail(String email) {
        this.email = email;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public int getId() {
        return id;
    }
        
    public String getEmail() {
        return email;
    }

    public String getSenha() {
        return senha;
    }
    
}
