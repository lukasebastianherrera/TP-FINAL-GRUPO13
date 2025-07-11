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

           /* if (Session["UsuarioLogueado"] == null)
            {
                Response.Redirect("Inicio.aspx");
            }*/

            if (!IsPostBack)
            {
                CargarTodosLosMedicos();
                Session["DniConfirmado"] = null;
                Session["SelectedDni"] = null;
                lblMensajeDni.Text = "";
                lblMensajeApellido.Text = "";
                lblMensaje.Text = "";
            }

           // Usuario usuario = (Usuario)Session["UsuarioLogueado"];
           // lblAdministrador.Text = usuario.Nombre_usuario;


        }

        private void CargarTodosLosMedicos()
        {
            Grv_medicos.DataSource = medicoNegocio.ObtenerTodosLosMedicosActivos();
            Grv_medicos.DataBind();
            
        }


        protected void btnBuscarMedico_Click(object sender, EventArgs e)
        {
            lblMensajeApellido.Text = "";
            lblMensaje.Text = "";
            lblMensajeDni.Text = "";
            
            
            string dni= txtDni.Text.Trim();
            if (string.IsNullOrEmpty(dni)) {

                lblMensaje.Text = "Ingrese un DNI para buscar. ";
                return;
            }

            DataTable tabla = medicoNegocio.BuscarMedicoConDNI(dni);

            if (tabla.Rows.Count>0)
            {
                Grv_medicos.DataSource = tabla;
                Grv_medicos.DataBind();
               // lblMensaje.Text = "";

            }
            else
            {
                Grv_medicos.DataSource= null;
                Grv_medicos.DataBind();
                lblMensaje.Text = "No se encontró un Medico Activo con ese DNI.";

            }

            txtApellido.Text = "";
            Session["SelectedDni"] = null;

        }

        protected void btn_BuscarApellido_Click(object sender, EventArgs e)
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

            txtDni.Text = "";
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
            txtDni.Text = "";
            string dniSeleccionado = Session["SelectedDni"] as string;

            if (string.IsNullOrEmpty(dniSeleccionado))
            {
                lblMensaje.ForeColor = System.Drawing.Color.Red;
                lblMensaje.Text = "Primero seleccioná un medico (hacé clic en 'Seleccionar').";
                return;
            }

            if (Session["DniConfirmado"] == null || Session["DniConfirmado"].ToString() != dniSeleccionado)
            {
                Session["DniConfirmado"] = dniSeleccionado;
                lblMensaje.Text = $"¿Está seguro de eliminar al medico con DNI {dniSeleccionado}?" + "Haga clic nuevamente en 'Eliminar' para confirmar.";
                return;
            }

            bool eliminado = medicoNegocio.BajaLogicaMedico(dniSeleccionado);

            if (eliminado)
            {
                lblMensaje.ForeColor = System.Drawing.Color.Green;
                lblMensaje.Text = "El medico fue eliminado correctamente.";
                txtDni.Text = "";
                CargarTodosLosMedicos();
            }
            else
            {
                lblMensaje.ForeColor = System.Drawing.Color.Red;
                lblMensaje.Text = "No se encontró un medico con ese DNI.";
            }

            Session.Remove("DniConfirmado");
            Session.Remove("SelectedDni");
            Grv_medicos.SelectedIndex = -1;
            CargarTodosLosMedicos();


        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            txtDni.Text = "";
            txtApellido.Text = "";
            lblMensajeDni.Text = "";
            lblMensaje.Text = "";
            lblMensajeApellido.Text = "";
            Session["DniConfirmado"] = null;
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