<%@page import="br.edu.infnet.VenturaUsuario.model.domain.Aluno"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>App Times - Confirma!!!</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>

	<c:import url="/WEB-INF/jsp/menu.jsp"/>

	<div class="container">

		<form action="/vendedor" method="get">
			<button type="submit" class="btn btn-link">Incluir</button>
		</form>
		
		<hr>
		
		<c:if test="${not empty vendedores}">
			<c:if test="${not empty msg}">
				<div class="alert alert-success">
				  <strong>Sucesso!</strong> ${msg}
				</div>
			</c:if>
	
			<h4>Quantidade de jogadores existentes: ${vendedores.size()}!!!</h4>
			
			<hr>
	
			<table class="table table-striped">
		    <thead>
		      <tr>
		      	<th>Id</th>
		        <th>Nome</th>
		        <th>Score</th>
		        <th>Idade</th>
		        <th>Camisa</th>
		        <th>Pontos Por Jogo</th>
		        <th>Posição</th>
		        <th></th>
		      </tr>
		    </thead>
		    <tbody>		    
		    	<c:forEach var="v" items="${vendedores}">
			      <tr>
			        <td>${v.id}</td>
			        <td>${v.nome}</td>
			        <td>${v.score}</td>
			        <td>${v.idade}</td>
			        <td>${v.camisa}</td>
			        <td>${v.pontosPorJogo}</td>
			        <td>${v.posicao}</td>
			        <td><a href="/vendedorr/${j.id}/excluir">Excluir</a></td>
			      </tr>
		    	</c:forEach>
		    </tbody>
		  	</table>
	  	</c:if>
	  	
	  	<c:if test="${empty vendedoress}">
			<h4>Não existem vendedores cadastrados!!!</h4>	  	
	  	</c:if>
	</div>
</body>
</html>