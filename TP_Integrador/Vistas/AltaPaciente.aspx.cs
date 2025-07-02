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
    public partial class AltaPaciente : System.Web.UI.Page
    {
        private ProvinciaNegocio provNeg = new ProvinciaNegocio();
        private LocalidadNegocio locNeg = new LocalidadNegocio();
        private PacienteNegocio pacNeg = new PacienteNegocio();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarProvincias();
                InicializarFechaNacimiento();

                ddlLocalidad.Items.Clear();
                ddlLocalidad.Items.Add(new ListItem("Seleccionar Localidad", "0"));
            }

            Usuario usuario = (Usuario)Session["UsuarioLogueado"];
            lblAdministrador.Text = usuario.Nombre_usuario;
        }

        private void CargarProvincias()
        {
            List<Provincia> lista = provNeg.ObtenerProvincias();

            ddlProvincia.DataSource = lista;
            ddlProvincia.DataTextField = "Nombre_provincia";
            ddlProvincia.DataValueField = "Id_provincia";
            ddlProvincia.DataBind();

            ddlProvincia.Items.Insert(0, new ListItem("Seleccionar Provincia", "0"));
        }

        public void ddlProvincia_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlLocalidad.Items.Clear();
            ddlLocalidad.Items.Add(new ListItem("Seleccionar Localidad", "0"));

            int idProv;

            if (int.TryParse(ddlProvincia.SelectedValue, out idProv) && idProv > 0)
            {
                List<Localidad> lista = locNeg.ObtenerLocalidades(idProv);

                ddlLocalidad.DataSource = lista;
                ddlLocalidad.DataTextField = "Nombre_localidad";
                ddlLocalidad.DataValueField = "Id_localidad";
                ddlLocalidad.DataBind();

                ddlLocalidad.Items.Insert(0, new ListItem("Seleccionar Localidad", "0"));
            }
        }

        private void InicializarFechaNacimiento()
        {
            ddlDia.Items.Clear();
            ddlDia.Items.Add(new ListItem("Día", "0"));
            for (int d = 1; d <= 31; d++)
            {
                ddlDia.Items.Add(new ListItem(d.ToString(), d.ToString()));
            }

            ddlMes.Items.Clear();
            ddlMes.Items.Add(new ListItem("Mes", "0"));
            for (int m = 1; m <= 12; m++)
            {
                string nombreMes = new DateTime(2000, m, 1).ToString("MMMM");
                nombreMes = char.ToUpper(nombreMes[0]) + nombreMes.Substring(1);
                ddlMes.Items.Add(new ListItem(nombreMes, m.ToString()));
            }

            ddlAnio.Items.Clear();
            ddlAnio.Items.Add(new ListItem("Año", "0"));
            int añoActual = DateTime.Now.Year;
            for (int a = añoActual; a >= 1900; a--)
                ddlAnio.Items.Add(new ListItem(a.ToString(), a.ToString()));
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            Paciente paciente = new Paciente
            {
                Dni = txtDNI.Text.Trim(),
                Nombre = txtNombre.Text.Trim(),
                Apellido = txtApellido.Text.Trim(),
                Sexo = ddlSexo.SelectedValue,
                Nacionalidad = ddlNacionalidad.SelectedValue,
                Fecha_nacimiento = new DateTime(
                                         int.Parse(ddlAnio.SelectedValue),
                                         int.Parse(ddlMes.SelectedValue),
                                         int.Parse(ddlDia.SelectedValue)),
                Correo_electronico = txtEmail.Text.Trim(),
                Telefono = txtCelular.Text.Trim(),
                Direccion = txtDireccion.Text.Trim(),
                Id_localidad = int.Parse(ddlLocalidad.SelectedValue)
            };

            bool exito = pacNeg.AltaPaciente(paciente);

            if (exito)
            {
                lblMensaje.ForeColor = System.Drawing.Color.Green;
                lblMensaje.Text = "Paciente añadido con éxito";
            }
            else
            {
                lblMensaje.ForeColor = System.Drawing.Color.Red;
                lblMensaje.Text = "El paciente ya existe";
            }

            LimpiarFormulario();
        }

        private void LimpiarFormulario()
        {
            txtNombre.Text = "";
            txtApellido.Text = "";
            txtDNI.Text = "";
            txtEmail.Text = "";
            txtCelular.Text = "";
            txtDireccion.Text = "";

            ddlSexo.SelectedIndex = 0;
            ddlNacionalidad.SelectedIndex = 0;

            ddlDia.SelectedIndex = 0;
            ddlMes.SelectedIndex = 0;
            ddlAnio.SelectedIndex = 0;

            ddlProvincia.SelectedIndex = 0;
            ddlLocalidad.Items.Clear();
            ddlLocalidad.Items.Add(new ListItem("Seleccionar Localidad", "0"));
        }
    }
}

/*protected void Page_Load(object sender, EventArgs e)
{
    if (!IsPostBack)
    {
        CargarProvincias();
        CargarLocalidades();
    }
}

private void CargarProvincias()
{
    ProvinciaNegocio provNeg = new ProvinciaNegocio();

    Provincia[] lista = provNeg.ObtenerProvincias();

    ddlProvincia.DataSource = lista;
    ddlProvincia.DataTextField = "Nombre_provincia";
    ddlProvincia.DataValueField = "Id_provincia";
    ddlProvincia.DataBind();

    ddlProvincia.Items.Insert(0, new ListItem("Seleccionar Provincia", "0"));
}
private void CargarLocalidades()
{
    LocalidadNegocio locNeg = new LocalidadNegocio();
    Localidad[] lista = locNeg.ObtenerLocalidades();

    ddlLocalidad.DataSource = lista;
    ddlLocalidad.DataTextField = "Nombre_localidad";
    ddlLocalidad.DataValueField = "Id_localidad";
    ddlLocalidad.DataBind();
    // Insertar un elemento por defecto
    ddlLocalidad.Items.Insert(0, new ListItem("Seleccionar Localidad", "0"));
}

protected void ddlSexo_SelectedIndexChanged(object sender, EventArgs e)
{


}*/
