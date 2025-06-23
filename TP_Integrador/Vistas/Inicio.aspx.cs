using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using Negocio;

namespace Vistas
{
    public partial class Inicio : System.Web.UI.Page
    {
        private NegocioUsuario negociousuario = new NegocioUsuario();
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btn_iniciar_Click(object sender, EventArgs e)
        {
            /*
            string usuario = txtb_usuario.Text.Trim();
            string contrasenia =txtb_contrasenia.Text.Trim();


            if (DDLTipoUsuario.SelectedIndex == 1 && negociousuario.TipoUsuario(usuario, contrasenia) == 1)
            {
                Response.Redirect("VistaMedico.aspx");
            }
            else if (DDLTipoUsuario.SelectedIndex == 2 && negociousuario.TipoUsuario(usuario, contrasenia) == 2)
            {
                Response.Redirect("AdminMenu.aspx");
            }
            else {
                RFVTipoUsuario.Text = "Usuario invalido o inexistente. Por favor reintente";
            }*/

            if (DDLTipoUsuario.SelectedIndex == 1 )
            {
                Response.Redirect("VistaMedico.aspx");
            }
            else if (DDLTipoUsuario.SelectedIndex == 2 )
            {
                Response.Redirect("AdminMenu.aspx");
            }
        }
    }
}