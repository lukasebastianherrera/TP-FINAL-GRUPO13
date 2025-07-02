using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;

namespace Vistas
{
    public partial class ABMLmedicos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Usuario usuario = (Usuario)Session["UsuarioLogueado"];
            lblAdministrador.Text = usuario.Nombre_usuario;
        }

        protected void cvDias_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = (cblDias.SelectedItem != null);
        }
    }
}