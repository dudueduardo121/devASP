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

    <body>
    	<div class="container">
		<div class="input-group mb-3">
			<div class="input-group-prepend">
				<span class="input-group-text" id="basic-addon1"><ion-icon name="search"></ion-icon></span>
			</div>
			<input type="text" class="form-control" id="searchline" placeholder="Categoria" aria-label="categoria" aria-describedby="basic-addon1">
		</div>
		</div>

        <script type="text/javascript">
            $(function(){
                $("#searchline").autocomplete({
                    source: searchTags
                });
            });
        </script>
    </body>

</html>
<%
Session.CodePage=1252
%>
