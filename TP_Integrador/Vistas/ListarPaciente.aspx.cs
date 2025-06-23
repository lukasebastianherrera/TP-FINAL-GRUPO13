using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

using System.Data;

namespace Vistas
{
    public partial class ListarPaciente : System.Web.UI.Page
    {
        private PacienteNegocio pacienteNegocio = new PacienteNegocio();
        protected void Page_Load(object sender, EventArgs e)
        {
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
            string dni = txtDni.Text.Trim();
            DataTable dt = pacienteNegocio.BuscarPacientePorDNI(dni);
            gvPacientes.DataSource = dt;
            gvPacientes.DataBind();
        }
    }
}