using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class usuarios_CadastrarUsuario : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnCadastrarUsuario_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection("Server=AME0556330W10-1\\SQLEXPRESS;Database=db_Livraria;Trusted_Connection=Yes"))
        {
            using (SqlCommand cmd = new SqlCommand("INSERT INTO tb_Usuarios (nome, sobrenome, email, nome_usuario, senha) VALUES (@nome, @sobrenome, @email, @nome_usuario, @senha)", con))
            {
                cmd.Parameters.AddWithValue("nome", txtNomeCadastrar.Text);
                cmd.Parameters.AddWithValue("sobrenome", txtSobrenomeCadastrar.Text);
                cmd.Parameters.AddWithValue("email", txtEmailCadastrar.Text);
                cmd.Parameters.AddWithValue("nome_usuario", txtUsuarioCadastrar.Text);
                cmd.Parameters.AddWithValue("senha", txtSenhaCadastrar.Text);

                try
                {
                    con.Open();
                    if (cmd.ExecuteNonQuery() > -1)
                    {
                        lblMensagem.Text = "Post cadastrado com sucesso";
                    }
                }
                catch (Exception ex)
                {
                    lblMensagem.Text = "Erro: " + ex;
                }
            }
        }
    }
}