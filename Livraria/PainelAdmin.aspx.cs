﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PainelAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //esse trecho verifica se existe a sessão "autenticado", se não existir
        //redireciona o usuário para a pagina index
        if(Session["autenticad"]==null)
        {
            Response.Redirect("Index.aspx");
        }
        lblUsuario.Text = Session["nome"].ToString();
    }
}