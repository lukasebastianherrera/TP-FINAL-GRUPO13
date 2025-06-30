using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;

namespace Vistas
{
    public partial class InformeAsistenciaGeneral : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Usuario usuario = (Usuario)Session["UsuarioLogueado"];
            if (Session["usuario"] != null)
            {

                lblAdministrador.Text = usuario.Nombre_usuario;
            }
        }
    }
}