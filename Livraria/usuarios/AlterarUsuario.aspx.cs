using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class usuarios_AlterarUsuario : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {

            string codigo = Request.QueryString["id"];
            lblCodigo.Text = codigo;


            using (SqlConnection con = new SqlConnection("Server=AME0556330W10-1\\SQLEXPRESS;Database=db_Livraria;Trusted_Connection=Yes;"))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM tb_Usuarios WHERE id =" + codigo, con))
                {
                    try
                    {
                        con.Open();
                        SqlDataReader sdrInfPosts = cmd.ExecuteReader();
                        sdrInfPosts.Read();
                        txtNomeAlterar.Text = sdrInfPosts.GetString(1);
                        txtSobrenomeAlterar.Text = sdrInfPosts.GetString(2);
                        txtEmailAlterar.Text = sdrInfPosts.GetString(3);
                        txtUsuarioAlterar.Text = sdrInfPosts.GetString(4);
                        txtSenhaAlterar.Text = sdrInfPosts.GetString(5);

                    }
                    catch
                    {
                        //Mensagem de Erro
                        lblErro.Text = "Erro do Banco de Dados. Contate o Suporte!";
                    }
                }
            }
        }
    }
}