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
    public partial class BajaMedico : System.Web.UI.Page
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
                Session["SelectedDni"] = null;
                lblMensajeApellido.Text = "";
                lblMensaje.Text = "";
            }

            Usuario usuario = (Usuario)Session["UsuarioLogueado"];
            lblAdministrador.Text = usuario.Nombre_usuario;


        }

        private void CargarTodosLosMedicos()
        {
            Grv_medicos.DataSource = medicoNegocio.ObtenerTodosLosMedicosActivos();
            Grv_medicos.DataBind();
            
        }



        protected void btn_BuscarApellido_Click(object sender, EventArgs e)
        {
            lblMensaje.Text = "";
            lblMensajeApellido.Text = "";

            string apellido = txtApellido.Text.Trim();

            if (string.IsNullOrEmpty(apellido))
            {
                lblMensajeApellido.Text = "Ingrese parte del apellido";
                return;
            }

            DataTable dt = medicoNegocio.BuscarMedicoPorApellido(apellido);

            if (dt.Rows.Count > 0)
            {
                Grv_medicos.DataSource = dt;
                Grv_medicos.DataBind();
            }
            else
            {
                Grv_medicos.DataSource = null;
                Grv_medicos.DataBind();
                lblMensajeApellido.Text = $"No se encontraron pacientes con apellido que contenga '{apellido}'";
            }
            Session["SelectedDni"] = null;
        }



        protected void Grv_medicos_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtApellido.Text = "";

            GridViewRow row = Grv_medicos.SelectedRow;

            string nombre = row.Cells[1].Text;
            string apellido = row.Cells[2].Text;
            string dni = row.Cells[3].Text.Trim();

            Session["SelectedDni"] = dni;

            lblMensaje.Text = $"Medico seleccionado: {row.Cells[0].Text} {row.Cells[1].Text} {row.Cells[2].Text} (DNI {dni})";


        }


        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            txtApellido.Text = "";

            string dniSeleccionado = Session["SelectedDni"] as string;

            if (string.IsNullOrEmpty(dniSeleccionado))
            {
                lblMensaje.ForeColor = System.Drawing.Color.Red;
                lblMensaje.Text = "Primero seleccioná un médico (hacé clic en 'Seleccionar').";
                return;
            }

            bool eliminado = medicoNegocio.BajaLogicaMedico(dniSeleccionado);

            if (eliminado)
            {
                lblMensaje.ForeColor = System.Drawing.Color.Green;
                lblMensaje.Text = "El médico fue eliminado correctamente.";
            }
            else
            {
                lblMensaje.ForeColor = System.Drawing.Color.Red;
                lblMensaje.Text = "No se encontró un médico con ese DNI.";
            }

            Session.Remove("SelectedDni");
            Grv_medicos.SelectedIndex = -1;
            CargarTodosLosMedicos();
        }


        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            txtApellido.Text = "";
            lblMensaje.Text = "";
            lblMensajeApellido.Text = "";
            Grv_medicos.DataSource = null;

            CargarTodosLosMedicos();
        }



        protected void Grv_medicos_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            Grv_medicos.PageIndex = e.NewPageIndex;
            CargarTodosLosMedicos();
        }




    }
}