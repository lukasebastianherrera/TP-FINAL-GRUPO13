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
        private MedicoNegocio Medico = new MedicoNegocio();
        protected void Page_Load(object sender, EventArgs e)
        {
            Usuario usuario = (Usuario)Session["UsuarioLogueado"];
            if (Session["usuario"] != null)
            {

                lblAdministrador.Text = usuario.Nombre_usuario;
            }

            CargarTodosLosMedicos();
        }

        private void CargarTodosLosMedicos()
        {
            DataTable dt = Medico.ObtenerTodosLosMedicos();
            gvMedicos.DataSource = dt;
            gvMedicos.DataBind();
        }
        protected void btnFiltrar_Click(object sender, EventArgs e)
        {
            string dni = txtDni.Text.Trim();
            DataTable dt = Medico.BuscarMedicoPorDNI(dni);
            gvMedicos.DataSource = dt;
            gvMedicos.DataBind();
        }
    }
}