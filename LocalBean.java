/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.senaces.bean;

import java.io.Serializable;

/**
 *
 * @author sala302b
 */
public class LocalBean implements Serializable{
    
    private int idlocal;
    private String nome;
    private String telefone;
    private int endereco;

    public LocalBean() {
    }

    public LocalBean(int idlocal, String nome, String telefone, int endereco) {
        this.idlocal = idlocal;
        this.nome = nome;
        this.telefone = telefone;
        this.endereco = endereco;
    }

    public int getIdlocal() {
        return idlocal;
    }

    public void setIdlocal(int idlocal) {
        this.idlocal = idlocal;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public int getEndereco() {
        return endereco;
    }

    public void setEndereco(int endereco) {
        this.endereco = endereco;
    }

    

    
}
