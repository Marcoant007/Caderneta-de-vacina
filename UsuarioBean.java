/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.senaces.bean;

import java.io.Serializable;
import java.util.Date;

/**
 *
 * @author sala302b
 */
public class UsuarioBean implements Serializable {

    private int idLogin;
    private String usuario;
    private String senha;
    private String nome;
    private String tipo;
    private int idusuario;
    private String cpf;
    private String pai;
    private String mae;
    private String rg;
    private String cep;
    private String cartao_sus;
    private String nascimento;
    private String telefone;
    private String celular;
    private int idendereco;
    private String etnia;
    private String registro;
    private String estado;

    public UsuarioBean() {
    }

    public UsuarioBean(int idLogin, String usuario, String senha, String nome, String tipo, int idusuario, String cpf, String pai, String mae, String rg, String cep, String cartao_sus, String nascimento, String telefone, String celular, int idendereco, String etnia, String registro, String estado) {
        this.idLogin = idLogin;
        this.usuario = usuario;
        this.senha = senha;
        this.nome = nome;
        this.tipo = tipo;
        this.idusuario = idusuario;
        this.cpf = cpf;
        this.pai = pai;
        this.mae = mae;
        this.rg = rg;
        this.cep = cep;
        this.cartao_sus = cartao_sus;
        this.nascimento = nascimento;
        this.telefone = telefone;
        this.celular = celular;
        this.idendereco = idendereco;
        this.etnia = etnia;
        this.registro = registro;
        this.estado = estado;
    }
    
    

    public int getIdLogin() {
        return idLogin;
    }

    public void setIdLogin(int idLogin) {
        this.idLogin = idLogin;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
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

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getPai() {
        return pai;
    }

    public void setPai(String pai) {
        this.pai = pai;
    }

    public String getMae() {
        return mae;
    }

    public void setMae(String mae) {
        this.mae = mae;
    }

    public String getRg() {
        return rg;
    }

    public void setRg(String rg) {
        this.rg = rg;
    }

    public String getCep() {
        return cep;
    }

    public void setCep(String cep) {
        this.cep = cep;
    }

    public String getCartao_sus() {
        return cartao_sus;
    }

    public void setCartao_sus(String cartao_sus) {
        this.cartao_sus = cartao_sus;
    }

    public String getNascimento() {
        return nascimento;
    }

    public void setNascimento(String nascimento) {
        this.nascimento = nascimento;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getCelular() {
        return celular;
    }

    public void setCelular(String celular) {
        this.celular = celular;
    }

    public int getIdendereco() {
        return idendereco;
    }

    public void setIdendereco(int idendereco) {
        this.idendereco = idendereco;
    }

    public String getEtnia() {
        return etnia;
    }

    public void setEtnia(String etnia) {
        this.etnia = etnia;
    }

    public String getRegistro() {
        return registro;
    }

    public void setRegistro(String registro) {
        this.registro = registro;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    
}

   

   