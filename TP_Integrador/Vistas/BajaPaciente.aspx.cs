using Entidades;
using Negocio;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net;
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
            if (Session["UsuarioLogueado"] == null)
            {
                Response.Redirect("Inicio.aspx");
            }

            if (!IsPostBack)
            {
                CargarTodosLosPacientes();
                Session["SelectedDni"] = null;
                lblMensajeApellido.Text = "";
                lblMensaje.Text = "";
            }

            Usuario usuario = (Usuario)Session["UsuarioLogueado"];
            lblAdministrador.Text = usuario.Nombre_usuario;
        }

        private void CargarTodosLosPacientes()
        {
            gvPacientes.DataSource = pacienteNegocio.ObtenerTodosLosPacientesActivos();
            gvPacientes.DataBind();
        }

        protected void btnBuscarApellido_Click(object sender, EventArgs e)
        {
            lblMensaje.Text = "";
            lblMensajeApellido.Text = "";
            
            string apellido = txtApellido.Text.Trim();

            if (string.IsNullOrEmpty(apellido))
            {
                lblMensajeApellido.Text = "Debe ingresar al menos una letra.";
                return;
            }

            DataTable dt = pacienteNegocio.BuscarPacientePorApellido(apellido);
            
            if (dt.Rows.Count > 0)
            {
                gvPacientes.DataSource = dt;
                gvPacientes.DataBind();
            }
            else
            {
                gvPacientes.DataSource= null;
                gvPacientes.DataBind();
                lblMensajeApellido.Text = $"No se encontraron pacientes con apellido que contenga '{apellido}'";
            }

            Session["SelectedDni"] = null;
        }

        protected void gvPacientes_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtApellido.Text = "";

            GridViewRow row = gvPacientes.SelectedRow;

            string nombre = row.Cells[1].Text;
            string apellido = row.Cells[2].Text;
            string dni = row.Cells[3].Text.Trim();

            Session["SelectedDni"] = dni;

            lblMensaje.Text = $"Paciente seleccionado: {row.Cells[0].Text} {row.Cells[1].Text} {row.Cells[2].Text} DNI {dni}";
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            txtApellido.Text = "";
            string dniSeleccionado = Session["SelectedDni"] as string;

            if (string.IsNullOrEmpty(dniSeleccionado))
            {
                lblMensaje.ForeColor = System.Drawing.Color.Red;
                lblMensaje.Text = "Primero seleccioná un paciente (hacé clic en 'Seleccionar').";
                return;
            }

            if (Session["DniConfirmado"] == null || Session["DniConfirmado"].ToString() != dniSeleccionado)
            {
                Session["DniConfirmado"] = dniSeleccionado;
                lblMensaje.ForeColor = System.Drawing.Color.Red;
                lblMensaje.Text = $"¿Está seguro de eliminar al paciente con DNI {dniSeleccionado}? " +
                                    "Hacé clic nuevamente en 'Eliminar' para confirmar.";
                return;
            }

            bool eliminado = pacienteNegocio.BajaLogicaPacientePorDni(dniSeleccionado);

            if (eliminado)
            {
                lblMensaje.ForeColor = System.Drawing.Color.Green;
                lblMensaje.Text = "El paciente fue eliminado correctamente.";

            }
            else
            {
                lblMensaje.ForeColor = System.Drawing.Color.Red;
                lblMensaje.Text = "No se encontró un paciente con ese DNI.";
            }

            Session.Remove("SelectedDni");
            gvPacientes.SelectedIndex = -1;
            CargarTodosLosPacientes();
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            txtApellido.Text = "";
            lblMensaje.Text = "";
            lblMensajeApellido.Text = "";
            gvPacientes.DataSource = null;

            CargarTodosLosPacientes();
        }

        protected void gvPacientes_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvPacientes.PageIndex = e.NewPageIndex;
            CargarTodosLosPacientes();
        }
    }
}

