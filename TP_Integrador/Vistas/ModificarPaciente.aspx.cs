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
    public partial class ModificarPaciente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Usuario usuario = (Usuario)Session["UsuarioLogueado"];
            lblAdministrador.Text = usuario.Nombre_usuario;

            if (!IsPostBack)
            {
                cargarPacientes();
            }
        }
        private void cargarPacientes()
        {
            PacienteNegocio pacienteNegocio = new PacienteNegocio();
            gvPacientes0.DataSource = pacienteNegocio.obtenerTodosLosPacientesyDatos();
            gvPacientes0.DataBind();
        }

        protected void gvPacientes0_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvPacientes0.EditIndex = e.NewEditIndex;
            cargarPacientes();
        }

        protected void gvPacientes0_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvPacientes0.EditIndex = -1;
            cargarPacientes();
        }

        protected void gvPacientes0_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string nombre = ((TextBox)gvPacientes0.Rows[e.RowIndex].FindControl("txt_eit_Nombre")).Text;
            string apellido = ((TextBox)gvPacientes0.Rows[e.RowIndex].FindControl("txt_eit_Apellido")).Text;
            string dni = ((Label)gvPacientes0.Rows[e.RowIndex].FindControl("lbl_eit_DNI")).Text;
            string sexo = ((TextBox)gvPacientes0.Rows[e.RowIndex].FindControl("txt_eit_Sexo")).Text;
            string nacionalidad = ((TextBox)gvPacientes0.Rows[e.RowIndex].FindControl("txt_eit_Nacionalidad")).Text;
            string fechaNacimientoString = ((TextBox)gvPacientes0.Rows[e.RowIndex].FindControl("txt_eit_FechaNacimiento")).Text;
            DateTime fechaNacimiento = DateTime.Parse(fechaNacimientoString);
            string correoElectronico = ((TextBox)gvPacientes0.Rows[e.RowIndex].FindControl("txt_eit_CorreoElectronico")).Text;
            string telefono = ((TextBox)gvPacientes0.Rows[e.RowIndex].FindControl("txt_eit_Telefono")).Text;
            string direccion = ((TextBox)gvPacientes0.Rows[e.RowIndex].FindControl("txt_eit_direccion")).Text;
            bool estado = ((CheckBox)gvPacientes0.Rows[e.RowIndex].FindControl("cb_eit_estado")).Checked;


            PacienteNegocio pacienteNegocio = new PacienteNegocio();
            bool succes = pacienteNegocio.modificarPaciente(nombre, apellido, dni, sexo, nacionalidad, fechaNacimiento, correoElectronico, telefono, direccion, estado);
            if(succes)
            {
                lbl_Exito.Text = "Exito";
            } else
            {
                lbl_Exito.Text = "Hubo un Error";
            }

            gvPacientes0.EditIndex = -1;
            cargarPacientes();



        }
    }
}