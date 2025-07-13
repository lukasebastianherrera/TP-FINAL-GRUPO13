using System;
using System.Collections.Generic;
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
            }

            Usuario usuario = (Usuario)Session["UsuarioLogueado"];
            lblAdministrador.Text = usuario.Nombre_usuario;
        }

        private void CargarMedicosSinUsuario()
        {
            gvMedicos.DataSource = medicoNegocio.ListarMedicosSinUsuario();
            gvMedicos.DataBind();
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            string apellido = txtApellido.Text.Trim();

            if(string.IsNullOrEmpty(apellido))
            {
                CargarMedicosSinUsuario();
            }
            else
            {
                gvMedicos.DataSource = medicoNegocio.ListarMedicosSinUsuario();
                gvMedicos.DataBind();
            }
        }

        protected void gvMedicos_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtApellido.Text = "";
            lblMensajeApellido.Text = "";

            int idPersona = Convert.ToInt32(gvMedicos.SelectedDataKey.Value);
            Session["SelectedIdPersona"] = idPersona;

            GridViewRow row = gvMedicos.SelectedRow;

            string nombre = row.Cells[1].Text;
            string apellido = row.Cells[2].Text;
            string dni = row.Cells[3].Text.Trim();

            lblMensaje.Text = $"Médico seleccionado: {row.Cells[0].Text} {row.Cells[1].Text} {row.Cells[2].Text} (DNI {dni})";
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


            int idPerona = Convert.ToInt32(gvMedicos.SelectedDataKey.Value);
            string usuario = txtUsuario.Text.Trim();
            string contrasenia = txtContrasena1.Text;

            if (gvMedicos.SelectedIndex < 0)
            {
                lblMensaje.ForeColor = System.Drawing.Color.Red;
                lblMensaje.Text = "Primero seleccioná un médico de la lista";
                return;
            }

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
        }

        protected void gvMedicos_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvMedicos.PageIndex = e.NewPageIndex;
            CargarMedicosSinUsuario();
        }
    }
}