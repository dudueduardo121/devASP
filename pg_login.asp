<!--#include file="conexao.asp"-->


<%
    dim varId
    varId = request.querystring("id")
    sql = "SELECT * FROM tb_login "
    set rsSql = conDB.execute(sql)
%>



<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://unpkg.com/ionicons@4.5.10-0/dist/ionicons.js"></script>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="/css/stilo.css">



<div class="container login-container ">

    <div class="row">
        <%
            if varId = 1 then
        %>
        <div class="col-md-6 login-form-1">
            <div class="alert alert-warning alert-dismissible fade show" role="alert">
              <strong>Alert!</strong> Acesso negado.
              <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
        </div>

        <%
            else 
        %>
        <div class="col-md-4 login-form-1">
            <form name="form" method="POST" action="admlogin.asp">
                <h4>ADMISTRADOR</h4>
                <div class="form-group ">
                    <select class="form-control" name="nome">
                        <%
                        do while not rsSql.eof
                        %>
                        
                            <option value="<%=rsSql("id_login")%>"><%=rsSql("txt_nome")%></option>

                        <%
                        rsSql.Movenext
                        loop
                        %>
                    </select>
                </div>
                <div class="form-group">
                    <input type="password" name="senha" class="form-control" placeholder="senha" value="" />
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-success">Entrar</button>
                </div>
            </form>
        </div>

        <div class="col-md-8">
            <div class="alert alert-warning alert-dismissible fade show" role="alert">
              <strong>Alert!</strong> Aceito.
              <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
        </div>
    </div>

    
    <%
        end if
    %>

</div>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<!--#include file="conexao.asp"-->