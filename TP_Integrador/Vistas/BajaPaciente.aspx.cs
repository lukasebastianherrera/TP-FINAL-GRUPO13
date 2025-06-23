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

        // Acá reemplazás o completás el método Page_Load
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarTodosLosPacientes(); // NUEVO
            }
        }

        // NUEVO MÉTODO para cargar todos los pacientes al inicio
        private void CargarTodosLosPacientes()
        {
            GridView1.DataSource = pacienteNegocio.ObtenerTodosLosPacientes();
            GridView1.DataBind();
        }

        protected void btnBuscarPaciente_Click(object sender, EventArgs e)
        {
            string dni = txtDni.Text.Trim();
            GridView1.DataSource = pacienteNegocio.BuscarPacientePorDNI(dni);
            GridView1.DataBind();
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            string dni = txtDni.Text.Trim();

            bool resultado = pacienteNegocio.BajaLogicaPaciente(dni);

            if (resultado)
            {
                lblMensaje.Text = "Paciente dado de baja correctamente.";
                CargarTodosLosPacientes(); // se refresca el listado
            }
            else
            {
                lblMensaje.Text = "No se pudo dar de baja al paciente.";
            }
        }
    }
}