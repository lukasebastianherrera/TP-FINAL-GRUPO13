using Entidades;
using Negocio;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vistas
{
    public partial class BajaPaciente : System.Web.UI.Page
    {
        private PacienteNegocio pacienteNegocio = new PacienteNegocio();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarTodosLosPacientes();
                Session["DniConfirmado"] = null;
                lblMensaje.Text = "";
            }

            Usuario usuario = (Usuario)Session["UsuarioLogueado"];
            lblAdministrador.Text = usuario.Nombre_usuario;
        }

        private void CargarTodosLosPacientes()
        {
            GridView1.DataSource = pacienteNegocio.ObtenerTodosLosPacientes();
            GridView1.DataBind();
        }

        protected void btnBuscarPaciente_Click(object sender, EventArgs e)
        {
            string dni = txtDni.Text.Trim();

            var tabla = pacienteNegocio.BuscarPacienteConDNI(dni);
            
            if (tabla.Rows.Count > 0)
            {
                GridView1.DataSource = tabla;
                GridView1.DataBind();
                lblMensaje.Text = "";
            }
            else
            {
                GridView1.DataSource = null;
                GridView1.DataBind();
                lblMensaje.ForeColor = System.Drawing.Color.Red;
                lblMensaje.Text = "No se encontró un/a paciente con ese DNI.";
            }
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            string dni = txtDni.Text.Trim();

            DataTable dt = pacienteNegocio.BuscarPacienteConDNI(dni);
            if(dt.Rows.Count == 0)
            {
                lblMensaje.ForeColor = System.Drawing.Color.Red;
                lblMensaje.Text = $"No existe ningún paciente con DNI {dni}";
                return;
            }

            if (Session["DniConfirmado"] == null || Session["DniConfirmado"].ToString() != dni)
            {
                Session["DniConfirmado"] = dni;
                lblMensaje.Text = "¿Está seguro de eliminar al paciente con DNI " + dni + "? Haga clic nuevamente en 'Eliminar' para confirmar.";
                return;
            }

            bool eliminado = pacienteNegocio.BajaLogicaPacientePorDni(dni);

            if (eliminado)
            {
                lblMensaje.ForeColor = System.Drawing.Color.Green;
                lblMensaje.Text = "El paciente fue eliminado correctamente.";
                txtDni.Text = "";
                CargarTodosLosPacientes();
            }
            else
            {
                lblMensaje.ForeColor = System.Drawing.Color.Red;
                lblMensaje.Text = "No se encontró un paciente con ese DNI.";
            }

            Session["DniConfirmado"] = null;
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            txtDni.Text = "";
            lblMensaje.Text = "";
            Session["DniConfirmado"] = null;

            CargarTodosLosPacientes();
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            CargarTodosLosPacientes();
        }
    }
}

