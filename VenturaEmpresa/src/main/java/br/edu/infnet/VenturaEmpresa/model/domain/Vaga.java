package br.edu.infnet.VenturaEmpresa.model.domain;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class Vaga{
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private Integer idUsuario;
	private String cargo;
	private String cidade;
	private String formaContratacao;
	@OneToMany(cascade=CascadeType.PERSIST)
	@JsonIgnore
	private List<Criterio> criterios;
	

	public List<Criterio> getCriterios() {
		return criterios;
	}


	public void setCriterios(List<Criterio> criterios) {
		this.criterios = criterios;
	}


	public Vaga() {
	}


	public Integer getId() {
		return id;
	}


	public void setId(Integer id) {
		this.id = id;
	}


	public String getCargo() {
		return cargo;
	}


	public void setCargo(String cargo) {
		this.cargo = cargo;
	}


	public String getCidade() {
		return cidade;
	}


	public void setCidade(String cidade) {
		this.cidade = cidade;
	}


	public String getFormaContratacao() {
		return formaContratacao;
	}


	public void setFormaContratacao(String formaContratacao) {
		this.formaContratacao = formaContratacao;
	}


	public Integer getIdUsuario() {
		return idUsuario;
	}


	public void setIdUsuario(Integer idUsuario) {
		this.idUsuario = idUsuario;
	}

	
	
}
