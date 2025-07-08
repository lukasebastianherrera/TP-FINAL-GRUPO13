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
        private ProvinciaNegocio provNeg = new ProvinciaNegocio();
        private LocalidadNegocio locNeg = new LocalidadNegocio();
        private MedicoNegocio medicoNeg = new MedicoNegocio();
        private EspecialidadNegocio espNeg = new EspecialidadNegocio();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["UsuarioLogueado"] == null)
            {
                Response.Redirect("Inicio.aspx");
            }


            if (!IsPostBack)
            {
                CargarProvincias();
                CargarEspecialidades();
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

        protected void ddlProvincia_SelectedIndexChanged1(object sender, EventArgs e)
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

        private void CargarEspecialidades()
        {
            List<Especialidad> lista = espNeg.ObtenerEspecialidades();

            DdlEspecialidad.DataSource = lista;
            DdlEspecialidad.DataTextField = "Nombre_especialidad";
            DdlEspecialidad.DataValueField = "Id_especialidad";
            DdlEspecialidad.DataBind();

            DdlEspecialidad.Items.Insert(0, new ListItem("Seleccionar Especialidad", "0"));
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

            ddlAño.Items.Clear();
            ddlAño.Items.Add(new ListItem("Año", "0"));
            int añoActual = DateTime.Now.Year;
            for (int a = añoActual; a >= 1900; a--)
                ddlAño.Items.Add(new ListItem(a.ToString(), a.ToString()));
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            lblErrorDias.Text = "";
            lblErrorHorario.Text = "";
            lblMensaje.Text = "";

            Page.Validate("grupo1");
            if (!Page.IsValid) return;

            List<string> diasSeleccionados = new List<string>();

            foreach(ListItem item in cblDias.Items)
            {
                if (item.Selected)
                {
                    diasSeleccionados.Add(item.Value);
                }
            }

            if (diasSeleccionados.Count == 0)
            {
                lblErrorDias.Text = "Debe seleccionar al menos un día de atención";
                return;
            }

            TimeSpan horaDesde, horaHasta;
            try
            {
                horaDesde = TimeSpan.Parse(txtDesde.Text.Trim());
                horaHasta = TimeSpan.Parse(txtHasta.Text.Trim());
            }
            catch (FormatException)
            {
                lblErrorHorario.Text = "Formato de hora inválido. Use hh:mm";
                return;
            }

            if(horaHasta <= horaDesde)
            {
                lblErrorHorario.Text = "La hora 'Hasta' debe ser posterior a 'Desde'";
            }

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

            bool exito = medicoNeg.AltaMedicoConHorario(medico, diasSeleccionados, horaDesde, horaHasta);

            if (exito)
            {
                lblMensaje.ForeColor = System.Drawing.Color.Green;
                lblMensaje.Text = "Médico añadido con éxito";
            }
            else
            {
                lblMensaje.ForeColor = System.Drawing.Color.Red;
                lblMensaje.Text = "El médico ya existe";
            }
            LimpiarFormulario();
        }
        private void LimpiarFormulario()
        {
            TxtNombre.Text = "";
            TxtApellido.Text = "";
            TxtDNI.Text = "";
            txtEmail.Text = "";
            txtCelular.Text = "";
            txtDireccion.Text = "";
            txtDesde.Text = "";
            txtHasta.Text = "";
            TxtLegajo.Text = "";
            cblDias.ClearSelection();
            DdlEspecialidad.SelectedIndex = 0;

            ddlSexo.SelectedIndex = 0;
            DdlNacionalidad.SelectedIndex = 0;
            ddlLocalidad.SelectedIndex = 0;
            ddlDia.SelectedIndex = 0;
            ddlMes.SelectedIndex = 0;
            ddlAño.SelectedIndex = 0;

            ddlProvincia.SelectedIndex = 0;
            ddlLocalidad.Items.Clear();
            ddlLocalidad.Items.Add(new ListItem("Seleccionar Localidad", "0"));
        }
    }
}