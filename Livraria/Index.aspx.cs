using System;

using System.Web.UI;
using System.Data.SqlClient;

public partial class Index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!Page.IsPostBack)
        {
            Session.Abandon();
        }
    }

    protected void btnEntrar_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection("Server=AME0556330W10-1\\SQLEXPRESS;Database=db_Livraria;Trusted_Connection=Yes"))
        {
            using (SqlCommand cmd = new SqlCommand("SELECT * FROM tb_Usuarios where nome_usuario = @usuario AND senha = @senha"))
            {
                cmd.Parameters.AddWithValue("usuario", txtUsuario.Text);
                cmd.Parameters.AddWithValue("senha", txtSenha.Text);

                try
                {
                    con.Open();
                    SqlDataReader sdrUsuario = cmd.ExecuteReader();
                    sdrUsuario.Read();
                    if (sdrUsuario.HasRows)
                    {
                        Session["autenticado"] = "OK";
                        Session["nome"] = sdrUsuario.GetString(1);
                        Response.Redirect("PainelAdmin.aspx");
                    }
                    else
                    {
                        lblMensagem.Text = "Usuário e/ou Senha inválidos";
                    }
                }
                catch(Exception ex)
                {
                    lblMensagem.Text = "Erro de banco de dados. Contate o suporte." + ex.Message;
                }
            }
        }
    }
}