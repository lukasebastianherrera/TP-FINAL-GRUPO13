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
                Usuario usuario = (Usuario)Session["UsuarioLogueado"];
                lblAdministrador.Text = usuario.Nombre_usuario;
                CargarPacientes();
                LimpiarMensajes();
            }
        }

        private void CargarPacientes()
        {
            string apellido = txtApellido.Text.Trim();
            DataTable tabla = string.IsNullOrEmpty(apellido)
                ? pacienteNegocio.ObtenerTodosLosPacientesyDatos()
                : pacienteNegocio.ListarTodosLosPacientesPorApellido(apellido);

            gvPacientes0.DataSource = tabla;
            gvPacientes0.DataBind();
        }

        private void LimpiarMensajes()
        {
            lbl_Exito.Text = "";
            lblMensaje.Text = "";
        }

        private void MostrarMensaje(Label lbl, string mensaje, bool esExito)
        {
            lbl.ForeColor = esExito ? System.Drawing.Color.Green : System.Drawing.Color.Red;
            lbl.Text = mensaje;
        }

        private bool ValidarDatosUnicos(string dniNuevo, string correo, string telefono, int idPersona)
        {
            if (pacienteNegocio.EsDniDuplicado(dniNuevo, idPersona))
            {
                MostrarMensaje(lbl_Exito, "Ese DNI ya está en uso por otro paciente.", false);
                return false;
            }

            if (pacienteNegocio.EsCorreoDuplicado(correo, idPersona))
            {
                MostrarMensaje(lbl_Exito, "Ese correo electrónico ya está en uso por otro paciente.", false);
                return false;
            }

            if (pacienteNegocio.EsTelefonoDuplicado(telefono, idPersona))
            {
                MostrarMensaje(lbl_Exito, "Ese teléfono ya está en uso por otro paciente.", false);
                return false;
            }

            return true;
        }

        private bool ObtenerDatosFila(GridViewRow fila, out string dniNuevo, out string nombre, out string apellido, out string sexo,
                                      out string nacionalidad, out DateTime fechaNacimiento, out string correo,
                                      out string telefono, out string direccion, out bool estado)
        {
            dniNuevo = ((TextBox)fila.FindControl("txt_eit_DNI")).Text.Trim();
            nombre = ((TextBox)fila.FindControl("txt_eit_Nombre")).Text.Trim();
            apellido = ((TextBox)fila.FindControl("txt_eit_Apellido")).Text.Trim();
            sexo = ((TextBox)fila.FindControl("txt_eit_Sexo")).Text.Trim();
            nacionalidad = ((TextBox)fila.FindControl("txt_eit_Nacionalidad")).Text.Trim();
            string fechaNacimientoStr = ((TextBox)fila.FindControl("txt_eit_FechaNacimiento")).Text.Trim();
            correo = ((TextBox)fila.FindControl("txt_eit_CorreoElectronico")).Text.Trim();
            telefono = ((TextBox)fila.FindControl("txt_eit_Telefono")).Text.Trim();
            direccion = ((TextBox)fila.FindControl("txt_eit_direccion")).Text.Trim();
            estado = ((CheckBox)fila.FindControl("cb_eit_estado")).Checked;

            return DateTime.TryParse(fechaNacimientoStr, out fechaNacimiento);
        }

        protected void gvPacientes0_RowEditing(object sender, GridViewEditEventArgs e)
        {
            LimpiarMensajes();
            gvPacientes0.EditIndex = e.NewEditIndex;
            CargarPacientes();
        }

        protected void gvPacientes0_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            LimpiarMensajes();
            gvPacientes0.EditIndex = -1;
            CargarPacientes();
        }

        protected void gvPacientes0_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            LimpiarMensajes();

            int idPersona = Convert.ToInt32(gvPacientes0.DataKeys[e.RowIndex].Value);
            string dniOriginal = gvPacientes0.DataKeys[e.RowIndex].Values["dni"].ToString();

            GridViewRow fila = gvPacientes0.Rows[e.RowIndex];

            if (!ObtenerDatosFila(fila, out string dniNuevo, out string nombre, out string apellido, out string sexo,
                                  out string nacionalidad, out DateTime fechaNacimiento, out string correo,
                                  out string telefono, out string direccion, out bool estado))
            {
                MostrarMensaje(lbl_Exito, "Fecha de nacimiento inválida.", false);
                return;
            }

            if (!ValidarDatosUnicos(dniNuevo, correo, telefono, idPersona))
                return;

            bool success = pacienteNegocio.modificarPaciente(
                idPersona, nombre, apellido, dniOriginal, dniNuevo, sexo,
                nacionalidad, fechaNacimiento, correo, telefono, direccion, estado);

            if (success)
            {
                MostrarMensaje(lbl_Exito, "Paciente fue modificado/a con éxito.", true);
            }
            else
            {
                MostrarMensaje(lbl_Exito, "Hubo un error al modificar el/la paciente.", false);
            }

            gvPacientes0.EditIndex = -1;
            txtApellido.Text = "";
            CargarPacientes();
        }

        protected void btnBuscarPaciente_Click(object sender, EventArgs e)
        {
            LimpiarMensajes();
            CargarPacientes();

            if (gvPacientes0.Rows.Count == 0)
            {
                MostrarMensaje(lblMensaje, "No se encontró un/a paciente con ese apellido.", false);
            }
        }

        protected void btnCancelar_Click1(object sender, EventArgs e)
        {
            txtApellido.Text = "";
            gvPacientes0.EditIndex = -1;
            LimpiarMensajes();
            CargarPacientes();
        }

        protected void gvPacientes0_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            if (gvPacientes0.EditIndex != -1)
            {
                MostrarMensaje(lbl_Exito, "Debe cancelar o guardar la edición antes de cambiar de página.", false);
                e.Cancel = true;
                return;
            }

            gvPacientes0.PageIndex = e.NewPageIndex;
            LimpiarMensajes();
            CargarPacientes();
        }
    }
}


































/*namespace Vistas
{
    public partial class ModificarPaciente : System.Web.UI.Page
    {
        private PacienteNegocio pacienteNegocio = new PacienteNegocio();
        protected void Page_Load(object sender, EventArgs e)
        {
           /* if (Session["UsuarioLogueado"] == null)
            {
                Response.Redirect("Inicio.aspx");
            }

            if (!IsPostBack)
            {
                CargarPacientes();
                lblMensajeApellido.Text = "";
            }

           // Usuario usuario = (Usuario)Session["UsuarioLogueado"];
           // lblAdministrador.Text = usuario.Nombre_usuario;
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
}*/