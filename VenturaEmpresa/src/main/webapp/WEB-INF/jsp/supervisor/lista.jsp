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

		<form action="/dirigente" method="get">
			<button type="submit" class="btn btn-link">Incluir</button>
		</form>
		
		<hr>
		
		<c:if test="${not empty dirigentes}">
			<c:if test="${not empty msg}">
				<div class="alert alert-success">
				  <strong>Sucesso!</strong> ${msg}
				</div>
			</c:if>
	
			<h4>Quantidade de dirigentes existentes: ${dirigentes.size()}!!!</h4>
			
			<hr>
	
			<table class="table table-striped">
		    <thead>
		      <tr>
		      	<th>Id</th>
		        <th>Nome</th>
		        <th>Score</th>
		        <th>Idade</th>
		        <th>Time Responsável</th>
		        <th>Co-Dirigente</th>
		        <th>Investimento Aplicado</th>
		        <th></th>
		      </tr>
		    </thead>
		    <tbody>		    
		    	<c:forEach var="s" items="${supervisoress}">
			      <tr>
			        <td>${s.id}</td>
			        <td>${s.nome}</td>
			        <td>${s.score}</td>
			        <td>${s.idade}</td>
			        <td>${s.timeResponsavel}</td>
			        <td>${s.coDirigente}</td>
			        <td>${s.investimentoAplicado}</td>
			        <td><a href="/supervisores/${s.id}/excluir">Excluir</a></td>
			      </tr>
		    	</c:forEach>
		    </tbody>
		  	</table>
	  	</c:if>
	  	
	  	<c:if test="${empty supervisores}">
			<h4>Não existem supervisores cadastrados!!!</h4>	  	
	  	</c:if>
	</div>
</body>
</html>