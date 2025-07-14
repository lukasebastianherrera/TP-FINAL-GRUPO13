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
    public partial class ModificarPaciente : System.Web.UI.Page
    {
        private PacienteNegocio pacienteNegocio = new PacienteNegocio();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UsuarioLogueado"] == null)
            {
                Response.Redirect("Inicio.aspx");
            }

            if (!IsPostBack)
            {
                CargarPacientes();
                lblMensajeApellido.Text = "";
            }

            Usuario usuario = (Usuario)Session["UsuarioLogueado"];
            lblAdministrador.Text = usuario.Nombre_usuario;
        }
        private void CargarPacientes()
        {
            DataTable dt = pacienteNegocio.obtenerTodosLosPacientesyDatos();
            gvPacientes.DataSource = dt;
            gvPacientes.DataBind();
        }

        protected void btnBuscarPaciente_Click(object sender, EventArgs e)
        {
            lblMensajeApellido.Text = "";

            string apellido = txtApellido.Text.Trim();

           if (string.IsNullOrEmpty(apellido))
            {
                lblMensajeApellido.Text = "Debe ingresar al menos una letra.";
                return;
            }

            DataTable dt = pacienteNegocio.ListarTodosLosPacientesPorApellido(apellido);
            if(dt.Rows.Count > 0)
            {
                gvPacientes.DataSource = dt;
                gvPacientes.DataBind();
            }
            else
            {
                gvPacientes.DataSource = null;
                gvPacientes.DataBind();
                lblMensajeApellido.Text = lblMensajeApellido.Text = $"No se encontraron pacientes con apellido que contenga '{apellido}'."; ;
            }

            txtApellido.Text = "";
        }

        protected void btnCancelar_Click1(object sender, EventArgs e)
        {
            txtApellido.Text = "";
            lbl_Exito.Text = "";
            lblMensajeApellido.Text = "";
            gvPacientes.EditIndex = -1;
            CargarPacientes();
        }

        protected void gvPacientes_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvPacientes.EditIndex = e.NewEditIndex;
            CargarPacientes();
        }

        protected void gvPacientes_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvPacientes.EditIndex = -1;
            CargarPacientes();
        }

        protected void gvPacientes_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvPacientes.PageIndex = e.NewPageIndex;
            CargarPacientes();
        }

        protected void gvPacientes_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label lblDniFila = (Label)gvPacientes.Rows[e.RowIndex].FindControl("lbl_eit_DNI");
            string dniSeleccionado = lblDniFila.Text;

            string nombre = ((TextBox)gvPacientes.Rows[e.RowIndex].FindControl("txt_eit_Nombre")).Text;
            string apellido = ((TextBox)gvPacientes.Rows[e.RowIndex].FindControl("txt_eit_Apellido")).Text;
            string dni = ((Label)gvPacientes.Rows[e.RowIndex].FindControl("lbl_eit_DNI")).Text;
            string sexo = ((TextBox)gvPacientes.Rows[e.RowIndex].FindControl("txt_eit_Sexo")).Text;
            string nacionalidad = ((TextBox)gvPacientes.Rows[e.RowIndex].FindControl("txt_eit_Nacionalidad")).Text;
            string fechaNacimientoString = ((TextBox)gvPacientes.Rows[e.RowIndex].FindControl("txt_eit_FechaNacimiento")).Text;
            DateTime fechaNacimiento = DateTime.Parse(fechaNacimientoString);
            string correoElectronico = ((TextBox)gvPacientes.Rows[e.RowIndex].FindControl("txt_eit_CorreoElectronico")).Text;
            string telefono = ((TextBox)gvPacientes.Rows[e.RowIndex].FindControl("txt_eit_Telefono")).Text;
            string direccion = ((TextBox)gvPacientes.Rows[e.RowIndex].FindControl("txt_eit_direccion")).Text;
            bool estado = ((CheckBox)gvPacientes.Rows[e.RowIndex].FindControl("cb_eit_estado")).Checked;

            bool succes = pacienteNegocio.modificarPaciente(nombre, apellido, dni, sexo, nacionalidad, fechaNacimiento, correoElectronico, telefono, direccion, estado);
            if (succes)
            {
                lbl_Exito.ForeColor = System.Drawing.Color.Green;
                lbl_Exito.Text = "Paciente fue modificado/a con éxito";
            }
            else
            {
                lbl_Exito.ForeColor = System.Drawing.Color.Red;
                lbl_Exito.Text = "Hubo un error al modificar el/la paciente";
            }

            gvPacientes.EditIndex = -1;
            txtApellido.Text = "";
            CargarPacientes();
        }
    }
}