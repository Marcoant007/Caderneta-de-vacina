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
public class AcessoBean implements Serializable{
    
    
    private String senha;
    private String nome;
    private String tipo;
    private int idusuario;

    public AcessoBean() {
    }

    public AcessoBean(String senha, String nome, String tipo, int idusuario) {
        this.senha = senha;
        this.nome = nome;
        this.tipo = tipo;
        this.idusuario = idusuario;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public int getIdusuario() {
        return idusuario;
    }

    public void setIdusuario(int idusuario) {
        this.idusuario = idusuario;
    }

    

    
}



