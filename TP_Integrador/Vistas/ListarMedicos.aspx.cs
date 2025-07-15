using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using Negocio;

namespace Vistas
{
    public partial class ListarMedicos : System.Web.UI.Page
    {
        private MedicoNegocio medicoNegocio = new MedicoNegocio();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UsuarioLogueado"] == null)
            {
                Response.Redirect("Inicio.aspx");
            }

            if (!IsPostBack)
            {
                CargarTodosLosMedicos();
                lblMensajeApellido.Text = "";
            }

            Usuario usuario = (Usuario)Session["UsuarioLogueado"];
            lblAdministrador.Text = usuario.Nombre_usuario;
        }

        private void CargarTodosLosMedicos()
        {
            DataTable dt = medicoNegocio.ObtenerTodosLosMedicosActivos();
            gvMedicos.DataSource = dt;
            gvMedicos.DataBind();
        }

        protected void btnFiltrar_Click1(object sender, EventArgs e)
        {
            lblMensajeApellido.Text = "";

            string apellido = txtApellido.Text.Trim();

            if (string.IsNullOrEmpty(apellido))
            {
                lblMensajeApellido.Text = "Debe ingresar al menos una letra.";
                return;
            }

            DataTable dt = medicoNegocio.BuscarMedicoPorApellidoActivos(apellido);

            if (dt.Rows.Count > 0)
            {
                gvMedicos.DataSource = dt;
                gvMedicos.DataBind();
            }
            else
            {
                gvMedicos.DataSource = null;
                gvMedicos.DataBind();
                lblMensajeApellido.Text = $"No se encontraron médicos con apellido que contenga '{apellido}'.";
            }

            txtApellido.Text = "";
        }

        protected void gvMedicos_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvMedicos.PageIndex = e.NewPageIndex;
            CargarTodosLosMedicos();
        }

        protected void btnMostrarTodos_Click(object sender, EventArgs e)
        {
            lblMensajeApellido.Text = "";
            CargarTodosLosMedicos();
        }
    }
}