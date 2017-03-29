using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class usuarios_ExcluirUsuario : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string codigo = Request.QueryString["id"];
        lblID.Text = codigo;

        using (SqlConnection con = new SqlConnection("Server=AME0556330W10-1\\SQLEXPRESS;Database=db_Livraria;Trusted_Connection=Yes;"))
        {
            using (SqlCommand cmd = new SqlCommand("SELECT * FROM tb_Usuarios WHERE ID = " + codigo, con))
            {

                try
                {
                    con.Open();
                    SqlDataReader sdrInfPosts = cmd.ExecuteReader();
                    sdrInfPosts.Read();
                    lblNome.Text = sdrInfPosts.GetString(1);
                    lblSobrenome.Text = sdrInfPosts.GetString(2);
                    lblEmail.Text = sdrInfPosts.GetString(3);
                    lblUsuario.Text = sdrInfPosts.GetString(4);
                    lblSenha.Text = sdrInfPosts.GetString(5);

                }

                catch
                {
                    //Mensagem de Erro
                    lblErro.Text = "Erro de Banco de Dados. Contate o Suporte!";
                }

                finally
                {
                    con.Close();
                }
            }
        }
    }

    protected void btnExcluirUsuario_Click(object sender, EventArgs e)
    {
        string codigo = Request.QueryString["ID"];

        using (SqlConnection con = new SqlConnection("Server=AME0556330W10-1\\SQLEXPRESS;Database=db_Livraria; Trusted_Connection=Yes;"))
        {
            using (SqlCommand cmd = new SqlCommand("DELETE FROM tb_Usuarios WHERE ID = " + codigo, con))
            {

                try
                {
                    con.Open();
                    cmd.ExecuteNonQuery();
                    lblNome.Text = "";
                    lblSobrenome.Text = "";
                    lblEmail.Text = "";
                    lblUsuario.Text = "";
                    lblSenha.Text = "";

                    lblErro.Text = "Post Excluido com Sucesso!. Volte para a Index no botão, 'Voltar'";
                }
                catch
                {
                    lblErro.Text = "Ocorreu um erro no banco de dados. Contate a Assistência!";
                }
            }
        }
    }
}