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
    public partial class CrearUsuarioMedico : System.Web.UI.Page
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
                CargarMedicosSinUsuario();
                lblMensajeApellido.Text = "";
                lblMensaje.Text = "";
                lblMensajeExito.Text = "";
            }

            Usuario usuario = (Usuario)Session["UsuarioLogueado"];
            lblAdministrador.Text = usuario.Nombre_usuario;
        }

        private void CargarMedicosSinUsuario()
        {
            gvMedicos.DataSource = medicoNegocio.ObtenerMedicosSinUsuario();
            gvMedicos.DataBind();
            btnCrearUsuario.Enabled = false;
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            lblMensajeApellido.Text = "";
            btnCrearUsuario.Enabled = false;
            string apellido = txtApellido.Text.Trim();

            if(string.IsNullOrEmpty(apellido))
            {
                lblMensajeApellido.Text = "Debe ingresar al menos una letra.";
                return;
            }

            DataTable dt = medicoNegocio.ObtenerMedicosSinUsuarioPorApellido(apellido);

            if(dt.Rows.Count > 0)
            {
                gvMedicos.DataSource = dt;
                gvMedicos.DataBind();
            }
            else
            {
                gvMedicos.DataSource = null;
                gvMedicos.DataBind();
                lblMensajeApellido.Text = $"No se encontraron pacientes con apellido que contenga '{apellido}'";
            }
        }

        protected void gvMedicos_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtApellido.Text = "";
            lblMensajeApellido.Text = "";
            lblMensajeApellido.Text = "";

            btnCrearUsuario.Enabled = true;
            int idPersona = Convert.ToInt32(gvMedicos.SelectedDataKey.Value);
            Session["SelectedIdPersona"] = idPersona;

            GridViewRow row = gvMedicos.SelectedRow;

            string nombre = row.Cells[1].Text;
            string apellido = row.Cells[2].Text;
            string dni = row.Cells[3].Text.Trim();

            lblMensaje.Text = $"Médico seleccionado: {nombre} {apellido} DNI {dni}";
        }

        protected void btnMostrar_Click(object sender, EventArgs e)
        {
            txtApellido.Text = "";
            lblMensajeApellido.Text = "";
            CargarMedicosSinUsuario();
        }

        protected void btnCrearUsuario_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid) return;

            if (gvMedicos.SelectedIndex < 0)
            {
                lblMensaje.ForeColor = System.Drawing.Color.Red;
                lblMensaje.Text = "Primero seleccioná un médico de la lista";
                return;
            }

            int idPerona = Convert.ToInt32(gvMedicos.SelectedDataKey.Value);
            string usuario = txtUsuario.Text.Trim();
            string contrasenia = txtContrasena1.Text;

            bool creado = medicoNegocio.CrearUsuarioMedico(idPerona, usuario, contrasenia);

            if (creado)
            {
                lblMensajeExito.ForeColor = System.Drawing.Color.Green;
                lblMensajeExito.Text = "Usuario creado con éxito";
                CargarMedicosSinUsuario();
            }
            else
            {
                lblMensajeExito.ForeColor = System.Drawing.Color.Red;
                lblMensajeExito.Text = "No se pudo crear el usuario";
            }
            txtUsuario.Text = "";
            Session["SelectedIdPersona"] = null;
        }

        protected void gvMedicos_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvMedicos.PageIndex = e.NewPageIndex;
            CargarMedicosSinUsuario();
        }
    }
}