using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

using System.Data;
using Entidades;

namespace Vistas
{
    public partial class ListarPaciente : System.Web.UI.Page
    {
        private PacienteNegocio pacienteNegocio = new PacienteNegocio();
        protected void Page_Load(object sender, EventArgs e)
        {
            Usuario usuario = (Usuario)Session["UsuarioLogueado"];
            lblAdministrador.Text = usuario.Nombre_usuario;

            CargarTodosLosPacientes();
        }

        private void CargarTodosLosPacientes()
        {
            DataTable dt = pacienteNegocio.ObtenerTodosLosPacientes();
            gvPacientes.DataSource = dt;
            gvPacientes.DataBind();
        }

        protected void btnFiltrar_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid) return;

            string dni = txtDni.Text.Trim();

            DataTable dt = pacienteNegocio.BuscarPacienteConDNI(dni);

            if (dt.Rows.Count == 0)
            {
                lblError.Text = "No existe ningún paciente con ese DNI";
                gvPacientes.DataSource = null;
                gvPacientes.DataBind();
            }
            else 
            {
                lblError.Text = string.Empty;
                gvPacientes.DataSource = dt;
                gvPacientes.DataBind();
            }
            txtDni.Text = string.Empty;
        }

        protected void btnMostrarTodos_Click(object sender, EventArgs e)
        {
            lblError.Text = string.Empty;
            CargarTodosLosPacientes();
        }

        protected void gvPacientes_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvPacientes.PageIndex = e.NewPageIndex;
            CargarTodosLosPacientes();
        }
    }
}