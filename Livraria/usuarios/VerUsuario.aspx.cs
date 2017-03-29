using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class usuarios_VerUsuario : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string codigo = Request.QueryString["id"];
        lblID.Text = codigo;

        using (SqlConnection con = new SqlConnection("Server=AME0556330W10-1\\SQLEXPRESS;Database=db_Livraria; Trusted_Connection=Yes;"))
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
                    lblUsuário.Text = sdrInfPosts.GetString(4);
                    lblSenha.Text = sdrInfPosts.GetString(5);

                }

                catch
                {
                    //Mensagem de Erro
                    lblErro.Text = "Ocorreu um Erro no banco de dados. Contate a Assistência!";
                }

                finally
                {
                    con.Close();
                }
            }
        }
    }
}