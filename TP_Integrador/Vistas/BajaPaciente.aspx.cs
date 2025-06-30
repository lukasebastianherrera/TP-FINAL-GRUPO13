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
        }

        private void CargarTodosLosPacientes()
        {
            Usuario usuario = (Usuario)Session["UsuarioLogueado"];
            lblAdministrador.Text = usuario.Nombre_usuario;

            GridView1.DataSource = pacienteNegocio.ObtenerTodosLosPacientes();
            GridView1.DataBind();
        }

        protected void btnBuscarPaciente_Click(object sender, EventArgs e)
        {
            string dni = txtDni.Text.Trim();

            if (string.IsNullOrEmpty(dni))
            {
                lblMensaje.Text = "Ingrese un DNI para buscar.";
                return;
            }

            var tabla = pacienteNegocio.BuscarPacientePorDNI(dni);
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
                lblMensaje.Text = "No se encontró un paciente activo con ese DNI.";
            }
        }



        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            string dni = txtDni.Text.Trim();

            if (Session["DniConfirmado"] == null || Session["DniConfirmado"].ToString() != dni)
            {
                Session["DniConfirmado"] = dni;
                lblMensaje.Text = "¿Está seguro de eliminar al paciente con DNI " + dni + "? Haga clic nuevamente para confirmar.";
                return;
            }

            bool eliminado = pacienteNegocio.BajaLogicaPacientePorDni(dni);

            if (eliminado)
            {
                lblMensaje.Text = "El paciente fue eliminado correctamente.";
                txtDni.Text = "";
                CargarTodosLosPacientes();
            }
            else
            {
                lblMensaje.Text = "No se encontró un paciente activo con ese DNI.";
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


    }
}

