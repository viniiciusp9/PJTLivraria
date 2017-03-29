<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h2>Livraria Leia Feliz :)</h2>
        <br />
        Usuário:
        <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
        <br />
        Senha:
        <asp:TextBox ID="txtSenha" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnEntrar" runat="server" OnClick="btnEntrar_Click" Text="Entrar" />
        <br />
        <br />
        <asp:Label ID="lblMensagem" runat="server" Text="Preencha os campos para entrar no sistema"></asp:Label>
    
    </div>
    </form>
</body>
</html>
