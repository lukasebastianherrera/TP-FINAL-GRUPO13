using Entidades;
using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vistas
{
    public partial class VistaMedico : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Usuario usuario = (Usuario)Session["UsuarioLogueado"];
            lblNombreMedico.Text = usuario.Nombre_usuario;

            if (!IsPostBack)
            {
                cargarGridview();
            }
        }
        private void cargarGridview()
        {
            Usuario usuario = (Usuario)Session["UsuarioLogueado"];
            int idPersona = usuario.Id_persona;

            MedicoNegocio medicoNegocio = new MedicoNegocio();
            GridView1.DataSource = medicoNegocio.TurnosMedico(idPersona);
            GridView1.DataBind();
        }
    }
}