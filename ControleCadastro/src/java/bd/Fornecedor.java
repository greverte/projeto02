/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bd;
import java.util.ArrayList;

/**
 *
 * @author mirel
 */
public class Fornecedor {
    private String nome;
    private String razao;
    private String cnpj;
    private String email;
    private String telefone;
    private String endereco;

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getrazao() {
        return razao;
    }

    public void setrazao(String razao) {
        this.razao = razao;
    }

    public String getcnpj() {
        return cnpj;
    }

    public void setcnpj(String cnpj) {
        this.cnpj = cnpj;
    }
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

 
}

