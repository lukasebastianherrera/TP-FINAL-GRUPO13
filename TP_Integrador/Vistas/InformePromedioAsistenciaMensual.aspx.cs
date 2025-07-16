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
    public partial class PromedioAsistenciaMensual : System.Web.UI.Page
    {
        InformeNegocio negocio = new InformeNegocio();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UsuarioLogueado"] == null)
            {
                Response.Redirect("Inicio.aspx");
            }
            Usuario usuario = (Usuario)Session["UsuarioLogueado"];
            lblAdministrador.Text = usuario.Nombre_usuario;
        }

        protected void btnGenerarInforme_Click(object sender, EventArgs e)
        {
            lblInforme.Text = string.Empty;
            int mes = ddlMes.SelectedIndex;
            if (mes>0) {
                string resultado = string.Join("\n", negocio.PorcentajeAsistenciasYFaltas(mes));
                if (resultado.Length != 0)
                {
                
                    lblInforme.Text = "El Porcentaje en el mes de " + ddlMes.SelectedItem + " es de: <br>" +  resultado;
                }
                else {
                    lblInforme.Text = "No hay datos de turnos para calcular.";
                }
            }
        }
    }
}