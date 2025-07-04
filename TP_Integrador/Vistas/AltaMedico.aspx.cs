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
    public partial class ABMLmedicos : System.Web.UI.Page
    {
        MedicoNegocio medicoNeg = new MedicoNegocio();
        protected void Page_Load(object sender, EventArgs e)
        {
            Usuario usuario = (Usuario)Session["UsuarioLogueado"];
            lblAdministrador.Text = usuario.Nombre_usuario;
        }

        protected void cvDias_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = (cblDias.SelectedItem != null);
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            Medico medico = new Medico
            {
                Dni = TxtDNI.Text.Trim(),
                Nombre = TxtNombre.Text.Trim(),
                Apellido = TxtApellido.Text.Trim(),
                Sexo = ddlSexo.SelectedValue,
                Nacionalidad = DdlNacionalidad.SelectedValue,
                Fecha_nacimiento = new DateTime(
                                                int.Parse(ddlAño.SelectedValue),
                                                int.Parse(ddlMes.SelectedValue),
                                                int.Parse(ddlDia.SelectedValue)
                                               ),
                Correo_electronico = txtEmail.Text.Trim(),
                Telefono = txtCelular.Text.Trim(),
                Direccion = txtDireccion.Text.Trim(),
                Id_localidad = int.Parse(ddlLocalidad.SelectedValue),
                Id_especialidad = int.Parse(DdlEspecialidad.SelectedValue),
                Legajo = TxtLegajo.Text.Trim()
            };
        //    bool exito = medicoNeg.AltaMedico(medico);
        //    if (exito)
        //    {
        //        lblMensaje.ForeColor = System.Drawing.Color.Green;
        //        lblMensaje.Text = "Paciente añadido con éxito";
        //    }
        //    else
        //    {
        //        lblMensaje.ForeColor = System.Drawing.Color.Red;
        //        lblMensaje.Text = "El paciente ya existe";
        //    }
        //        LimpiarFormulario();
        //}
        //private void LimpiarFormulario()
        //{
        //    txtNombre.Text = "";
        //    txtApellido.Text = "";
        //    txtDNI.Text = "";
        //    txtEmail.Text = "";
        //    txtCelular.Text = "";
        //    txtDireccion.Text = "";

        //    ddlSexo.SelectedIndex = 0;
        //    ddlNacionalidad.SelectedIndex = 0;

        //    ddlDia.SelectedIndex = 0;
        //    ddlMes.SelectedIndex = 0;
        //    ddlAnio.SelectedIndex = 0;

        //    ddlProvincia.SelectedIndex = 0;
        //    ddlLocalidad.Items.Clear();
        //    ddlLocalidad.Items.Add(new ListItem("Seleccionar Localidad", "0"));
        }
    }
}