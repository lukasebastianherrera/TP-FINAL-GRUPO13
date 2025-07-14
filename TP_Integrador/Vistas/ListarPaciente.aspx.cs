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
            if (Session["UsuarioLogueado"] == null)
            {
                Response.Redirect("Inicio.aspx");
            }

            if (!IsPostBack)
            {
                CargarTodosLosPacientes();
                lblMensajeApellido.Text = "";
            }

            Usuario usuario = (Usuario)Session["UsuarioLogueado"];
            lblAdministrador.Text = usuario.Nombre_usuario;
        }

        private void CargarTodosLosPacientes()
        {
            DataTable dt = pacienteNegocio.ObtenerTodosLosPacientes();
            gvPacientes.DataSource = dt;
            gvPacientes.DataBind();
        }

        protected void btnFiltrar_Click(object sender, EventArgs e)
        {
            lblMensajeApellido.Text = "";

            string apellido = txtApellido.Text.Trim();

            if(string.IsNullOrEmpty(apellido))
            {
                lblMensajeApellido.Text = "Debe ingresar al menos una letra.";
                return;
            }

            DataTable dt = pacienteNegocio.BuscarPacientePorApellido(apellido);

            if(dt.Rows.Count > 0 )
            {
                gvPacientes.DataSource = dt;
                gvPacientes.DataBind();
            }
            else
            {
                gvPacientes.DataSource = null;
                gvPacientes.DataBind();
                lblMensajeApellido.Text = $"No se encontraron pacientes con apellido que contenga '{apellido}'.";
            }

            txtApellido.Text = "";
        }

        protected void btnMostrarTodos_Click(object sender, EventArgs e)
        {
            lblMensajeApellido.Text = string.Empty;
            CargarTodosLosPacientes();
        }

        protected void gvPacientes_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvPacientes.PageIndex = e.NewPageIndex;
            CargarTodosLosPacientes();
        }
    }
}