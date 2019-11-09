<!--#include file="conexao.asp"-->

<%

    ' SQL de pesquisa
    sql = "SELECT cod_categoria, categoria FROM tb_categoria_produtos ORDER BY cod_categoria"
    Set query = conDB.execute(sql)
    While Not query.eof
        ' Lista o nome
        response.write query("categoria")&"|"&query("cod_categoria")&vbCrLf
        query.movenext
    Wend
 
%>