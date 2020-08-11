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
public class HistoricoBean implements Serializable {
    
    private String peso;
    private String altura;
    private String Idade;
    private String perimetro;
    private String lancamento;
    private String unidade;
    private int idusuario;

    public HistoricoBean() {
    }

    public HistoricoBean(String peso, String altura, String Idade, String perimetro, String lancamento, String unidade, int idusuario) {
        this.peso = peso;
        this.altura = altura;
        this.Idade = Idade;
        this.perimetro = perimetro;
        this.lancamento = lancamento;
        this.unidade = unidade;
        this.idusuario = idusuario;
    }

    public String getPeso() {
        return peso;
    }

    public void setPeso(String peso) {
        this.peso = peso;
    }

    public String getAltura() {
        return altura;
    }

    public void setAltura(String altura) {
        this.altura = altura;
    }

    public String getIdade() {
        return Idade;
    }

    public void setIdade(String Idade) {
        this.Idade = Idade;
    }

    public String getPerimetro() {
        return perimetro;
    }

    public void setPerimetro(String perimetro) {
        this.perimetro = perimetro;
    }

    public String getLancamento() {
        return lancamento;
    }

    public void setLancamento(String lancamento) {
        this.lancamento = lancamento;
    }

    public String getUnidade() {
        return unidade;
    }

    public void setUnidade(String unidade) {
        this.unidade = unidade;
    }

    public int getIdusuario() {
        return idusuario;
    }

    public void setIdusuario(int idusuario) {
        this.idusuario = idusuario;
    }

    

    

   

   
  

   
    
    
}
