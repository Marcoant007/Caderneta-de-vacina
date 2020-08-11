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
public class ParceiroBean implements Serializable {
    
    private String nome;
    private String telefone;
    private String contato;
    private String site;
    private String cnpj;
    
    private int idendereco;

    public ParceiroBean() {
    }

    public ParceiroBean(String nome, String telefone, String contato, String site, String cnpj, int idendereco) {
        this.nome = nome;
        this.telefone = telefone;
        this.contato = contato;
        this.site = site;
        this.cnpj = cnpj;
        this.idendereco = idendereco;
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

    public String getContato() {
        return contato;
    }

    public void setContato(String contato) {
        this.contato = contato;
    }

    public String getSite() {
        return site;
    }

    public void setSite(String site) {
        this.site = site;
    }

    public String getCnpj() {
        return cnpj;
    }

    public void setCnpj(String cnpj) {
        this.cnpj = cnpj;
    }

    public int getIdendereco() {
        return idendereco;
    }

    public void setIdendereco(int idendereco) {
        this.idendereco = idendereco;
    }
 
    
}
