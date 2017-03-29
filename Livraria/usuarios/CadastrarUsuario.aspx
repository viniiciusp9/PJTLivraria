<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CadastrarUsuario.aspx.cs" Inherits="usuarios_CadastrarUsuario" %>

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
        <asp:Label ID="Label1" runat="server" Text="Cadastrar Novo"></asp:Label>
        <h3>
            <asp:Label ID="Label2" runat="server" Text="Livraria Leia Feliz :)"></asp:Label>
        </h3>
        <pre><asp:Label ID="Label3" runat="server" Text="Módulos de Usuários - Cadastrar"></asp:Label></pre>
        <h4>
            <asp:Label ID="Label4" runat="server" Text="Nome: "></asp:Label>
            <asp:TextBox ID="txtNomeCadastrar" runat="server" style="margin-left: 41px" Width="254px"></asp:TextBox>
        </h4>
        <h4>
            <asp:Label ID="Label5" runat="server" Text="Sobrenome: "></asp:Label>
            <asp:TextBox ID="txtSobrenomeCadastrar" runat="server" style="margin-left: 8px" Width="253px"></asp:TextBox>
        </h4>
        <h4>
            <asp:Label ID="Label6" runat="server" Text="E-Mail: "></asp:Label>
            <asp:TextBox ID="txtEmailCadastrar" runat="server" style="margin-left: 36px" Width="251px"></asp:TextBox>
        </h4>
        <h4>
            <asp:Label ID="Label7" runat="server" Text="Usuário: "></asp:Label>
            <asp:TextBox ID="txtUsuarioCadastrar" runat="server" style="margin-left: 38px" Width="251px"></asp:TextBox>
        </h4>
        <h4>
            <asp:Label ID="Label8" runat="server" Text="Senha: "></asp:Label>
            <asp:TextBox ID="txtSenhaCadastrar" runat="server" style="margin-left: 48px" TextMode="Password" Width="253px"></asp:TextBox>
        </h4>
        <p>
            <asp:Button ID="btnCadastrarUsuario" runat="server" OnClick="btnCadastrarUsuario_Click" Text="Cadastrar Novo" />
        </p>
        <h5>
            <asp:Label ID="Label9" runat="server" Text="Click em cadastrar logo depois de preecher todos os campos"></asp:Label>
        </h5>
        <p>
            <asp:Label ID="lblMensagem" runat="server" Text="Mensagem"></asp:Label>
        </p>
        <p>
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/usuarios/IndexUsuario.aspx">Voltar</asp:HyperLink>
        </p>
    
    </div>
    </form>
</body>
</html>
