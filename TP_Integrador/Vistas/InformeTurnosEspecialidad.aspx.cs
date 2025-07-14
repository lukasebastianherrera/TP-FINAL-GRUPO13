using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using Negocio;

namespace Vistas
{
    public partial class InformeTurnosEspecialidad : System.Web.UI.Page
    {
        private EspecialidadNegocio espNeg = new EspecialidadNegocio();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UsuarioLogueado"] == null)
            {
                Response.Redirect("Inicio.aspx");
            }
            Usuario usuario = (Usuario)Session["UsuarioLogueado"];
            lblAdministrador.Text = usuario.Nombre_usuario;

            if (!IsPostBack)
            {
                
                CargarEspecialidades();
          
            }
        }

        private void CargarEspecialidades()
        {
            List<Especialidad> lista = espNeg.ObtenerEspecialidades();

            ddlEspecialidad.DataSource = lista;
            ddlEspecialidad.DataTextField = "Nombre_especialidad";
            ddlEspecialidad.DataValueField = "Id_especialidad";
            ddlEspecialidad.DataBind();

            ddlEspecialidad.Items.Insert(0, new ListItem("Seleccionar Especialidad", "0"));
        }

        protected void btnGenerarInforme_Click(object sender, EventArgs e)
        {
            if(ddlEspecialidad.SelectedIndex != 0) {
                InformeNegocio informe = new InformeNegocio();
                
                informe.InformeEspecialidad(ddlEspecialidad.SelectedIndex);
            }
        }
    }
}