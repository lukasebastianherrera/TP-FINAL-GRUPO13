using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vistas
{
    public partial class Inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btn_iniciar_Click(object sender, EventArgs e)
        {
            if (DDLTipoUsuario.SelectedIndex == 1)
            {
                Response.Redirect("VistaMedico.aspx");
            }
            else if (DDLTipoUsuario.SelectedIndex == 2)
            {
                Response.Redirect("AdminMenu.aspx");
            }
        }
    }
}