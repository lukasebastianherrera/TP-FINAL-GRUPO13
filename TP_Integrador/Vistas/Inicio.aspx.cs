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
        private NegocioUsuario negocioUsuario = new NegocioUsuario();
        protected void Page_Load(object sender, EventArgs e)
        {
           // ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btn_iniciar_Click(object sender, EventArgs e)
        {
            Page.Validate();

            if (!Page.IsValid)
                return;

            Session["UsuarioLogueado"] = negocioUsuario.ValidarLogin(
                txtb_usuario.Text.Trim(),
                txtb_contrasenia1.Text);

            if (ddlUsuario.SelectedValue == "1")
                Response.Redirect("VistaMedico.aspx");
            else
                Response.Redirect("AdminMenu.aspx");
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
            }

            if (DDLTipoUsuario.SelectedIndex == 1 )
            {
                Response.Redirect("VistaMedico.aspx");
            }
            else if (DDLTipoUsuario.SelectedIndex == 2 )
            {
                Response.Redirect("AdminMenu.aspx");
            }*/
        }

        protected void cvUsuario_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (!rfvTipoUsuario.IsValid)
            {
                args.IsValid = true;
                return;
            }

            string nombreUsuario = txtb_usuario.Text.Trim();
            string contrasenia = txtb_contrasenia1.Text;

            Usuario usuario = negocioUsuario.ValidarLogin(nombreUsuario, contrasenia);

            if (usuario == null)
            {
                args.IsValid = false;
                cvUsuario.ErrorMessage = "Usuario o contraseña incorrecto";
                return;
            }

            args.IsValid = (ddlUsuario.SelectedValue == usuario.Tipo_usuario);
            if (!args.IsValid)
            {
                cvUsuario.ErrorMessage = "El tipo de usuario no coincide";
            }
        }
    }
}