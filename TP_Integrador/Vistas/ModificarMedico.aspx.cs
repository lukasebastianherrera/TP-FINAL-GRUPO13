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
    public partial class ModificarMedico : System.Web.UI.Page
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
                CargarMedicos();
                lblMensajeApellido.Text = "";
            }

            Usuario usuario = (Usuario)Session["UsuarioLogueado"];
            lblAdministrador.Text = usuario.Nombre_usuario;
        }

        private void CargarMedicos()
        {
            DataTable dt = medicoNegocio.ObtenerTodosLosMedicos();
            gvMedico.DataSource = dt;
            gvMedico.DataBind();
        }

        protected void btnBuscarMedico_Click(object sender, EventArgs e)
        {
            lblMensajeApellido.Text = "";

            string apellido = txtApellido.Text.Trim();

            if (string.IsNullOrEmpty(apellido))
            {
                lblMensajeApellido.Text = "Debe ingresar al menos una letra.";
                return;
            }

            DataTable dt = medicoNegocio.ListarTodosLosMedicosPorApellido(apellido);
            if (dt.Rows.Count > 0)
            {
                gvMedico.DataSource = dt;
                gvMedico.DataBind();
            }
            else
            {
                gvMedico.DataSource = null;
                gvMedico.DataBind();
                lblMensajeApellido.Text = $"No se encontraron médicos con apellido que contenga '{apellido}'.";
            }

            txtApellido.Text = "";
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            txtApellido.Text = "";
            lblExito.Text = "";
            lblMensajeApellido.Text = "";
            gvMedico.EditIndex = -1;
            CargarMedicos();
        }

        protected void gvMedico_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvMedico.EditIndex = e.NewEditIndex;
            CargarMedicos();
        }

        protected void gvMedico_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvMedico.EditIndex = -1;
            CargarMedicos();
        }

        protected void gvMedico_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvMedico.PageIndex = e.NewPageIndex;
            CargarMedicos();
        }

        protected void gvMedico_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label lblDniFila = (Label)gvMedico.Rows[e.RowIndex].FindControl("lbl_eit_DNI");
            Label lblEspecialidad = (Label)gvMedico.Rows[e.RowIndex].FindControl("lbl_eit_Especialidad");
            string dniSeleccionado = lblDniFila.Text;

            string nombre = ((TextBox)gvMedico.Rows[e.RowIndex].FindControl("txt_eit_Nombre")).Text;
            string apellido = ((TextBox)gvMedico.Rows[e.RowIndex].FindControl("txt_eit_Apellido")).Text;
            string dni = ((Label)gvMedico.Rows[e.RowIndex].FindControl("lbl_eit_DNI")).Text;
            string legajo = ((TextBox)gvMedico.Rows[e.RowIndex].FindControl("txt_eit_Legajo")).Text;
            string especialidad = ((Label)gvMedico.Rows[e.RowIndex].FindControl("lbl_eit_Especialidad")).Text;
            string sexo = ((TextBox)gvMedico.Rows[e.RowIndex].FindControl("txt_eit_Sexo")).Text;
            string nacionalidad = ((TextBox)gvMedico.Rows[e.RowIndex].FindControl("txt_eit_Nacionalidad")).Text;
            string fechaNacimientoString = ((TextBox)gvMedico.Rows[e.RowIndex].FindControl("txt_eit_FechaNacimiento")).Text;
            DateTime fechaNacimiento = DateTime.Parse(fechaNacimientoString);
            string correoElectronico = ((TextBox)gvMedico.Rows[e.RowIndex].FindControl("txt_eit_CorreoElectronico")).Text;
            string telefono = ((TextBox)gvMedico.Rows[e.RowIndex].FindControl("txt_eit_Telefono")).Text;
            string direccion = ((TextBox)gvMedico.Rows[e.RowIndex].FindControl("txt_eit_direccion")).Text;
            bool estado = ((CheckBox)gvMedico.Rows[e.RowIndex].FindControl("cb_eit_Estado")).Checked;

            bool succes = medicoNegocio.ModificarMedico(nombre, apellido, dni, legajo, especialidad, sexo, nacionalidad, fechaNacimiento, correoElectronico, telefono, direccion, estado);

            if (succes)
            {
                lblExito.ForeColor = System.Drawing.Color.Green;
                lblExito.Text = "Médico/a fue modificado con éxito";
            }
            else
            {
                lblExito.ForeColor = System.Drawing.Color.Red;
                lblExito.Text = "Hubo un error al modificar al médico/a";
            }

            gvMedico.EditIndex = -1;
            txtApellido.Text = "";
            CargarMedicos();
        }
    }
}