using Entidades;
using Negocio;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vistas
{
    public partial class VistaMedico : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UsuarioLogueado"] == null)
            {
                Response.Redirect("Inicio.aspx");
            }
            Usuario usuario = (Usuario)Session["UsuarioLogueado"];
            lblNombreMedico.Text = usuario.Nombre_usuario;

            if (!IsPostBack)
            {
                cargarGridview();
            }
            //prueba
        }
        private void cargarGridview()
        {
            Usuario usuario = (Usuario)Session["UsuarioLogueado"];
            int idPersona = usuario.Id_persona;

            string dni = txtDNI.Text.Trim();
            MedicoNegocio medicoNegocio = new MedicoNegocio();
            DataTable tabla;



            if (String.IsNullOrEmpty(dni))
            {
                if (DropDownList1.SelectedValue == "0") {
                    tabla = medicoNegocio.TurnosMedico(idPersona); 
                } else
                {
                    int asistencia = Convert.ToInt32(DropDownList1.SelectedValue) - 1;
                    tabla = medicoNegocio.TurnosMedicoPorEstado(idPersona, asistencia);
                }
            } else
            {
                tabla = medicoNegocio.TurnosMedicoporDNI(idPersona,dni); 
            }

            GridView1.DataSource = tabla;
            GridView1.DataBind();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            cargarGridview();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            cargarGridview();
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            cargarGridview();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string Observacion  = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txt_eit_observacion")).Text;
            bool asistencia = ((CheckBox)GridView1.Rows[e.RowIndex].FindControl("ckBox_eit_Asistencia")).Checked;
            bool estado = ((CheckBox)GridView1.Rows[e.RowIndex].FindControl("ckBox_eit_Estado")).Checked;
            string dni = ((Label)GridView1.Rows[e.RowIndex].FindControl("lbl_eit_DNI")).Text;

            MedicoNegocio medicoNegocio = new MedicoNegocio();

            if(medicoNegocio.TurnoMedicoAsistencia(dni, Observacion, asistencia, estado) == true)
            {
                lbl_exito.Text = "Turno actualizado correctamente.";
            }
            else {   
                lbl_exito.Text = "Error al actualizar el turno.";
            }



            GridView1.EditIndex = -1;
            cargarGridview();
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            cargarGridview();

            if (GridView1.Rows.Count == 0)
            {
                lbl_mensaje.Text = "No se encontro un/a paciente con ese DNI.";
            }
            else
            {
                lbl_mensaje.Text = "";

            }
        }

        protected void btn_MostrarTodos_Click(object sender, EventArgs e)
        {
            txtDNI.Text = "";
            DropDownList1.SelectedValue = "0";
            cargarGridview();
        }
    }
}