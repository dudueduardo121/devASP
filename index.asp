<%
Session.CodePage=65001
Response.Charset="UTF-8"
%>


<!--#include file="conexao.asp"-->
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  		<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  		<script src="https://unpkg.com/ionicons@4.5.10-0/dist/ionicons.js"></script>
  		<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">
  		<link rel="stylesheet" type="text/css" href="/css/stilo.css">
        <script>
	        <%
		        sql = "SELECT cod_categoria, categoria FROM tb_categoria_produto ORDER BY cod_categoria"
		    		Set query = conDB.execute(sql)
		    			Response.Write("var searchTags = new Array;" & vbcrlf)
		   			do While Not query.eof
		        		' Lista a categoria
		       		 	Response.Write("searchTags.push('" & query("categoria") & "');" & vbcrlf)
		        	query.movenext

		        	loop
	        %>
        </script>

    </head>


 
    		<nav class="navbar navbar-expand-lg navbar-light " style="background-color: rgba(0,1,0,0.2);margin-top: 20px;">
			  <div class="collapse navbar-collapse" id="conteudoNavbarSuportado">
			    <form class="p1 form-inline my-2 my-lg-0" method="POST" action="categoria.asp">
			      <input class="p2 form-control mr-sm-2" type="search" id="searchline" placeholder="O que você produra :)" aria-label="Pesquisar">
			      <button class="btn btn-outline-success my-2 my-sm-0" type="submit"><i class="material-icons">
search
</i></button>
			    </form>
			  </div>
			</nav>


        <script type="text/javascript">
            $(function(){
                $("#searchline").autocomplete({
                    source: searchTags
                });
            });
        </script>


</html>
<%
Session.CodePage=1252
%>
