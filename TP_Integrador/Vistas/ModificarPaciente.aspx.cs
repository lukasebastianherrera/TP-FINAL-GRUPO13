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
            Usuario usuario = (Usuario)Session["UsuarioLogueado"];
            lblAdministrador.Text = usuario.Nombre_usuario;

            if (!IsPostBack)
            {
                cargarPacientes();
            }
        }
        private void cargarPacientes()
        {
            string dni = txtDni.Text.Trim();
            DataTable tabla;

            if (string.IsNullOrEmpty(dni))
            {
                tabla = pacienteNegocio.ObtenerTodosLosPacientes();
            }
            else
            {
                tabla = pacienteNegocio.BuscarPacientePorDNI(dni);
            }

            gvPacientes0.DataSource = tabla;
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
            Label lblDniFila = (Label)gvPacientes0.Rows[e.RowIndex].FindControl("lbl_eit_DNI");
            string dniSeleccionado = lblDniFila.Text;

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

            gvPacientes0.EditIndex = -1;
            cargarPacientes();
        }

        

        protected void btnBuscarPaciente_Click(object sender, EventArgs e)
        {
            string dni = txtDni.Text.Trim();

            if (string.IsNullOrEmpty(dni))
            {
                lblMensaje.ForeColor = System.Drawing.Color.Red;
                lblMensaje.Text = "Ingrese un DNI para buscar.";
                return;
            }

            cargarPacientes();

            if(gvPacientes0.Rows.Count == 0)
            {
                lblMensaje.ForeColor = System.Drawing.Color.Red;
                lblMensaje.Text = "No se encontro un/a paciente con ese DNI.";
            }
            else
            {
                lbl_Exito.Text = "";
            }
        }

        protected void btnCancelar_Click1(object sender, EventArgs e)
        {
            txtDni.Text = "";
            lbl_Exito.Text = "";
            gvPacientes0.EditIndex = -1;
            cargarPacientes();
        }

    }
}