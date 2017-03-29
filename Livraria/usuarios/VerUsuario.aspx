<%@ Page Language="C#" AutoEventWireup="true" CodeFile="VerUsuario.aspx.cs" Inherits="usuarios_VerUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/PainelAdmin.aspx">Painel</asp:HyperLink>
&nbsp;&gt;
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/usuarios/IndexUsuario.aspx">Usuário</asp:HyperLink>
&nbsp;&gt;
        <asp:Label ID="Label1" runat="server" Text="Ver Usuário"></asp:Label>
        <h3>
            <asp:Label ID="Label2" runat="server" Text="Livraria Leia Feliz :)"></asp:Label>
        </h3>
        <pre><asp:Label ID="Label3" runat="server" Text="Módulos de Usuários - Ver Usuários"></asp:Label></pre>
        <h4>
            <asp:Label ID="Label4" runat="server" Text="Código: "></asp:Label>
            <asp:Label ID="lblID" runat="server" style="font-style: italic" Text="codigo"></asp:Label>
        </h4>
        <h4>
            <asp:Label ID="Label5" runat="server" Text="Nome: "></asp:Label>
            <asp:Label ID="lblNome" runat="server" style="font-style: italic" Text="nome"></asp:Label>
        </h4>
        <h4>
            <asp:Label ID="Label6" runat="server" Text="Sobrenome: "></asp:Label>
            <asp:Label ID="lblSobrenome" runat="server" style="font-style: italic" Text="sobrenome"></asp:Label>
        </h4>
        <h4>
            <asp:Label ID="Label7" runat="server" Text="E-Mail: "></asp:Label>
            <asp:Label ID="lblEmail" runat="server" style="font-style: italic" Text="email"></asp:Label>
        </h4>
        <h4>
            <asp:Label ID="Label8" runat="server" Text="Usuário: "></asp:Label>
            <asp:Label ID="lblUsuário" runat="server" style="font-style: italic" Text="usuário"></asp:Label>
        </h4>
        <h4>
            <asp:Label ID="Label9" runat="server" Text="Senha: "></asp:Label>
            <asp:Label ID="lblSenha" runat="server" style="font-style: italic" Text="senha"></asp:Label>
        </h4>
        <p>
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/usuarios/IndexUsuario.aspx">Voltar</asp:HyperLink>
        </p>
        <p>
            <asp:Label ID="lblErro" runat="server" Text="Mensagem"></asp:Label>
        </p>
    
    </div>
    </form>
</body>
</html>
