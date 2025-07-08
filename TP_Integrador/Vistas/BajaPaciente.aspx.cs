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
                Session["DniConfirmado"] = null;
                Session["SelectedDni"] = null;
                lblMensajeDni.Text = "";
                lblMensajeApellido.Text = "";
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
            lblMensajeApellido.Text = "";
            lblMensaje.Text = "";
            lblMensajeDni.Text = "";

            string dni = txtDni.Text.Trim();

            if (string.IsNullOrEmpty(dni))
            {
                lblMensajeDni.Text = "Ingrese DNI del paciente a buscar";
                return;
            }

            DataTable tabla = pacienteNegocio.BuscarPacienteConDNI(dni);

            if (tabla.Rows.Count > 0)
            {
                GridView1.DataSource = tabla;
                GridView1.DataBind();
            }
            else
            {
                GridView1.DataSource = null;
                GridView1.DataBind();
                lblMensajeDni.ForeColor = System.Drawing.Color.Red;
                lblMensajeDni.Text = "No se encontró un/a paciente con ese DNI.";
            }

            txtApellido.Text = "";
            Session["SelectedDni"] = null;
        }

        protected void btnBuscarApellido_Click(object sender, EventArgs e)
        {
            lblMensajeDni.Text = "";
            lblMensaje.Text = "";
            lblMensajeApellido.Text = "";
            
            string apellido = txtApellido.Text.Trim();

            if (string.IsNullOrEmpty(apellido))
            {
                lblMensajeApellido.Text = "Ingrese parte del apellido";
                return;
            }

            DataTable dt = pacienteNegocio.BuscarPacientePorApellido(apellido);
            
            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            else
            {
                GridView1.DataSource= null;
                GridView1.DataBind();
                lblMensajeApellido.ForeColor = System.Drawing.Color.Red;
                lblMensajeApellido.Text = $"No se encontraron pacientes con apellido que contenga '{apellido}'";
            }

            txtDni.Text = "";
            Session["SelectedDni"] = null;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = GridView1.SelectedRow;

            string nombre = row.Cells[1].Text;
            string apellido = row.Cells[2].Text;
            string dni = row.Cells[3].Text.Trim();

            Session["SelectedDni"] = dni;

            lblMensaje.Text = $"Paciente seleccionado: {row.Cells[0].Text} {row.Cells[1].Text} {row.Cells[2].Text} (DNI {dni})";
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            txtApellido.Text = "";
            txtDni.Text = "";
            string dniSeleccionado = Session["SelectedDni"] as string;

            if (string.IsNullOrEmpty(dniSeleccionado))
            {
                lblMensaje.Text = "Primero seleccioná un paciente (hacé clic en 'Seleccionar').";
                return;
            }

            if (Session["DniConfirmado"] == null || Session["DniConfirmado"].ToString() != dniSeleccionado)
            {
                Session["DniConfirmado"] = dniSeleccionado;
                lblMensaje.Text = $"¿Está seguro de eliminar al paciente con DNI {dniSeleccionado}?" + "Haga clic nuevamente en 'Eliminar' para confirmar.";
                return;
            }

            bool eliminado = pacienteNegocio.BajaLogicaPacientePorDni(dniSeleccionado);

            if (eliminado)
            {
                lblMensaje.Text = "El paciente fue eliminado correctamente.";
                txtDni.Text = "";
                CargarTodosLosPacientes();
            }
            else
            {
                lblMensaje.ForeColor = System.Drawing.Color.Red;
                lblMensaje.Text = "No se encontró un paciente con ese DNI.";
            }

            Session.Remove("DniConfirmado");
            Session.Remove("SelectedDni");
            GridView1.SelectedIndex = -1;
            CargarTodosLosPacientes();
        }


        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            txtDni.Text = "";
            txtApellido.Text = "";
            lblMensajeDni.Text = "";
            lblMensaje.Text = "";
            lblMensajeApellido.Text = "";
            Session["DniConfirmado"] = null;
            GridView1.DataSource = null;

            CargarTodosLosPacientes();
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            CargarTodosLosPacientes();
        }

    }
}

