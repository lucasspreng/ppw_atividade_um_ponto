package entidades;

public class Conta {

    private int id;
    private String agencia;
    private String conta;
    private String digito;

    public void setId(int id) {
        this.id = id;
    }

    public void setAgencia(String agencia) {
        this.agencia = agencia;
    }

    public void setConta(String conta) {
        this.conta = conta;
    }

    public void setDigito(String digito) {
        this.digito = digito;
    }

    public int getId() {
        return id;
    }

    public String getAgencia() {
        return agencia;
    }

    public String getConta() {
        return conta;
    }

    public String getDigito() {
        return digito;
    }

}
