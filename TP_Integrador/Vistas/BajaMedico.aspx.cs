using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vistas
{
    public partial class BajaMedico : System.Web.UI.Page
    {
        private MedicoNegocio medicoNegocio = new MedicoNegocio();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarTodosLosMedicos();
                Session["DniConfirmado"] = null;
                lblMensaje.Text = "";
            }
        }

        private void CargarTodosLosMedicos()
        {
            Grv_medicos.DataSource = medicoNegocio.ObtenerTodosLosMedicosActivos();
            Grv_medicos.DataBind();
            
        }


        protected void btnBuscarMedico_Click(object sender, EventArgs e)
        {
            string dni= txtDni.Text.Trim();
            if (string.IsNullOrEmpty(dni)) {

                lblMensaje.Text = "Ingrese un DNI para buscar. ";
                return;
            }

            var tabla = medicoNegocio.BuscarMedicoPorDNI(dni);
            if (tabla.Rows.Count>0)
            {
                Grv_medicos.DataSource = tabla;
                Grv_medicos.DataBind();
                lblMensaje.Text = "";

            }
            else
            {
                Grv_medicos.DataSource= null;
                Grv_medicos.DataBind();
                lblMensaje.Text = "No se encontró un Medico Activo con ese DNI.";

            }

        }


        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            string dni = txtDni.Text.Trim();

            if (Session["DniConfirmado"] == null || Session["DniConfirmado"].ToString() != dni)
            {
                Session["DniConfirmado"] = dni;
                lblMensaje.Text = "¿Está seguro de eliminar al Medico con DNI " + dni + "? Haga clic nuevamente para confirmar.";
                return;
            }

            bool eliminado = medicoNegocio.BajaLogicaMedico(dni);

            if (eliminado)
            {
                lblMensaje.Text = "El paciente fue eliminado correctamente.";
                txtDni.Text = "";
                CargarTodosLosMedicos();
            }
            else
            {
                lblMensaje.Text = "No se encontró un Medico activo con ese DNI.";
            }

               Session["DniConfirmado"] = null;
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            txtDni.Text = "";
            lblMensaje.Text = "";
            Session["DniConfirmado"] = null;


            CargarTodosLosMedicos();
        }
    }
}