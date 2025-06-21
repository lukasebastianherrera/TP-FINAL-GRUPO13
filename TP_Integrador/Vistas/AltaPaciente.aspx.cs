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
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarProvincias();
               
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



        protected void ddlSexo_SelectedIndexChanged(object sender, EventArgs e)
        {


        }
    }
}