<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AlterarUsuario.aspx.cs" Inherits="usuarios_AlterarUsuario" %>

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
        <asp:Label ID="Label1" runat="server" Text="Alterar"></asp:Label>
        <h3>Livraria Leia Feliz :)</h3>
        <pre><asp:Label ID="Label2" runat="server" Text="Módulo de Usuários - Alterar"></asp:Label></pre>
        <h4>
            <asp:Label ID="lblCodigo" runat="server" Text="Código: "></asp:Label>
        </h4>
        <h4>
            <asp:Label ID="Label3" runat="server" Text="Nome: "></asp:Label>
            <asp:TextBox ID="txtNomeAlterar" runat="server" Width="289px" style="margin-left: 38px"></asp:TextBox>
        </h4>
        <h4>
            <asp:Label ID="Label4" runat="server" Text="Sobrenome: "></asp:Label>
            <asp:TextBox ID="txtSobrenomeAlterar" runat="server" Width="296px"></asp:TextBox>
        </h4>
        <h4>
            <asp:Label ID="Label5" runat="server" Text="E-Mail: "></asp:Label>
            <asp:TextBox ID="txtEmailAlterar" runat="server" style="margin-left: 28px" Width="298px"></asp:TextBox>
        </h4>
        <h4>
            <asp:Label ID="Label6" runat="server" Text="Usuário: "></asp:Label>
            <asp:TextBox ID="txtUsuarioAlterar" runat="server" style="margin-left: 24px" Width="295px"></asp:TextBox>
        </h4>
        <h4>
            <asp:Label ID="Label7" runat="server" Text="Senha: "></asp:Label>
            <asp:TextBox ID="txtSenhaAlterar" runat="server" style="margin-left: 35px" Width="295px"></asp:TextBox>
        </h4>
        <p>
            <asp:Button ID="btnAlterar" runat="server" Text="Alterar" />
        </p>
        <h6>
            <asp:Label ID="Label8" runat="server" Text="Click em alterar logo depois de preecher todos os campos"></asp:Label>
        </h6>
        <p>
            <asp:Label ID="lblErro" runat="server" Text="Aviso!"></asp:Label>
        </p>
        <p>
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/usuarios/IndexUsuario.aspx">Voltar</asp:HyperLink>
        </p>
    
    </div>
    </form>
</body>
</html>
