<% 

strDB    = "lojavirtual"

' Cria uma nova inst�ncia da Classe formando o Objeto
Set conDB = Server.CreateObject ("ADODB.Connection")

strConexaoDB = "DRIVER={MySQL ODBC 5.2 ANSI Driver};server=localhost;uid=root;pwd=;database=" & strDB

Session("connectionstring")	=	strConexaoDB

' Abre a conex�o com o Banco de dados
conDB.ConnectionString = Session("connectionstring")
conDB.Open

%>
