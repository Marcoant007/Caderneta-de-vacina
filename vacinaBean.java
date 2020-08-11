/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.senaces.bean;

/**
 *
 * @author sala302b
 */
public class VacinaBean {
    private int idvacina;
    private String nome;
    private String doses;
    private String intervalo;
    private String primeiradose;

    public VacinaBean() {
    }

    public VacinaBean(int idvacina, String nome, String doses, String intervalo, String primeiradose) {
        this.idvacina = idvacina;
        this.nome = nome;
        this.doses = doses;
        this.intervalo = intervalo;
        this.primeiradose = primeiradose;
    }

    public int getIdvacina() {
        return idvacina;
    }

    public void setIdvacina(int idvacina) {
        this.idvacina = idvacina;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getDoses() {
        return doses;
    }

    public void setDoses(String doses) {
        this.doses = doses;
    }

    public String getIntervalo() {
        return intervalo;
    }

    public void setIntervalo(String intervalo) {
        this.intervalo = intervalo;
    }

    public String getPrimeiradose() {
        return primeiradose;
    }

    public void setPrimeiradose(String primeiradose) {
        this.primeiradose = primeiradose;
    }
    
    

   
    
    
    
    
}
