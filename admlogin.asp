<!--#include file="conexao.asp"-->

<%


varlogin = Trim(request.form("nome"))
varSenha = Trim(request.form("senha"))

    sql = "SELECT * FROM tb_login WHERE id_login = '" & varlogin & "'"
    set rsSql = conDB.execute(sql)

    if Lcase(varSenha) <> Lcase(rsSql("txt_senha")) then
    	response.write "</br> senha incorreta </br></br>"
    	response.write "<a href='javascript: history.go(-1)'><button>voltar</button>"

    	session("loginAutorizado") = false
    else 
    
    	session("loginAutorizado") = true
    	session("login") = varNome
    	session("senha") = varSenha	
%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="/css/stilo.css">

<div class="container login-container ">

    <div class="row">
        <div class="col-md-4">
        	<ul class="list-group">
        		<li class="list-group-item active">
        			<h4>ADMISTRADOR</h4><br/>
		            <h6>Login: <%=rsSql("txt_nome")%></h6>
		            <form name="form" method="POST" action="admlogin.asp">
		                <div class="form-group ">
		                	<ul class="list-group">
							  <li class="list1 list-group-item active">Manutencao</li>
							  <li class="list-group-item">Colocar promocoes</li>
							  <li class="list-group-item">Retirar promocoes</li>
							  <li class="list-group-item">Categorias</li>
							  <li class="list-group-item">Clientes</li>
							  <li class="list-group-item">Pedidos</li>
							  <li class="list-group-item">Fretes</li>

							</ul>
		                </div>

		                <div class="form-group">
		                    <ul class="list-group">
							  <li class="list2 list-group-item active">Login</li>
							  <li class="list-group-item">Alterar senha</li>
							  <li class="list-group-item">Excluir login</li>
							  <li class="list-group-item">Inculir login</li>
							  <li class="list-group-item">Sair</li>
							</ul>
		                </div>
		                <div class="form-group">
		                    
		                </div>
		            </form>
	        	</li>
            </ul>
        </div>
    </div>
</div>

<% 
	end if
%>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>




<!--#include file="conexao.asp"-->