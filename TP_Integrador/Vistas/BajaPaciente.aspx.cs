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
        private PacienteNegocio negocio = new PacienteNegocio();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Limpiar controles al cargar la página por primera vez
                GridView1.DataSource = null;
                GridView1.DataBind();
                lblMensaje.Text = "";
            }
        }

        protected void btnBuscarPaciente_Click(object sender, EventArgs e)
        {
            string dni = txtDni.Text.Trim();

            var pacientes = negocio.BuscarPorDni(dni);

            GridView1.DataSource = pacientes;
            GridView1.DataBind();

            ViewState["Paciente"] = pacientes; // Guardar para luego eliminar
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            if (ViewState["Paciente"] != null)
            {
                var lista = (List<Paciente>)ViewState["Paciente"];
                if (lista.Count > 0)
                {
                    Paciente paciente = lista[0];
                    negocio.BajaLogicaPaciente(paciente.Id_paciente);
                    lblMensaje.Text = $"Paciente eliminado: {paciente.Apellido}, {paciente.Nombre}";

                    // Limpiar después de eliminar
                    GridView1.DataSource = null;
                    GridView1.DataBind();
                    txtDni.Text = "";
                    ViewState["Paciente"] = null;
                }
            }
            else
            {
                lblMensaje.Text = "No hay paciente para eliminar.";
            }
        }







    }
}