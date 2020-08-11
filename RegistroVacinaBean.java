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
public class RegistroVacinaBean implements Serializable {
    
    private int vacina;
    private String lote;
    private String laboratorio;
    private String dose;
    private int local;
    private String atendente;
    private String data;
    private int usuario;
    private String nome_vacina;
    private String nome_local; 

    public RegistroVacinaBean(int vacina, String lote, String laboratorio, String dose, int local, String atendente, String data, int usuario, String nome_vacina, String nome_local) {
        this.vacina = vacina;
        this.lote = lote;
        this.laboratorio = laboratorio;
        this.dose = dose;
        this.local = local;
        this.atendente = atendente;
        this.data = data;
        this.usuario = usuario;
        this.nome_vacina = nome_vacina;
        this.nome_local = nome_local;
    }

    public RegistroVacinaBean() {
    }

    public int getVacina() {
        return vacina;
    }

    public void setVacina(int vacina) {
        this.vacina = vacina;
    }

    public String getLote() {
        return lote;
    }

    public void setLote(String lote) {
        this.lote = lote;
    }

    public String getLaboratorio() {
        return laboratorio;
    }

    public void setLaboratorio(String laboratorio) {
        this.laboratorio = laboratorio;
    }

    public String getDose() {
        return dose;
    }

    public void setDose(String dose) {
        this.dose = dose;
    }

    public int getLocal() {
        return local;
    }

    public void setLocal(int local) {
        this.local = local;
    }

    public String getAtendente() {
        return atendente;
    }

    public void setAtendente(String atendente) {
        this.atendente = atendente;
    }

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }

    public int getUsuario() {
        return usuario;
    }

    public void setUsuario(int usuario) {
        this.usuario = usuario;
    }

    public String getNome_vacina() {
        return nome_vacina;
    }

    public void setNome_vacina(String nome_vacina) {
        this.nome_vacina = nome_vacina;
    }

    public String getNome_local() {
        return nome_local;
    }

    public void setNome_local(String nome_local) {
        this.nome_local = nome_local;
    }
     
    
}
