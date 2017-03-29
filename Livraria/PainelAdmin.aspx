<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PainelAdmin.aspx.cs" Inherits="PainelAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h5>
            <asp:Label ID="lblUsuario" runat="server" Text="Label"></asp:Label>
&nbsp;-
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Index.aspx">Sair</asp:HyperLink>
        </h5>
        <h2>Livraria Leia Feliz :&gt;</h2>
        <h3>Painel Administrativo</h3>
        <h4>Usuários</h4>
        <ul>
            <li>
                <asp:Label ID="Label2" runat="server" Text="Cadastrar Novo"></asp:Label>
            </li>
            <li>
                <asp:Label ID="Label1" runat="server" Text="Listar Todos"></asp:Label>
            </li>
            <li>
                <asp:Label ID="Label3" runat="server" Text="Pesquisar"></asp:Label>
            </li>
        </ul>
        <h4>
            <asp:Label ID="Label4" runat="server" Text="Produtos"></asp:Label>
        </h4>
        <ul>
            <li>
                <asp:Label ID="Label5" runat="server" Text="Cadastrar Novo"></asp:Label>
            </li>
            <li>
                <asp:Label ID="Label6" runat="server" Text="Listar Novo"></asp:Label>
            </li>
            <li>
                <asp:Label ID="Label7" runat="server" Text="Pesquisar"></asp:Label>
            </li>
        </ul>
    
    </div>
    </form>
</body>
</html>
