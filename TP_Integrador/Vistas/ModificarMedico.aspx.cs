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
    public partial class ModificarMedico : System.Web.UI.Page
    {
        private MedicoNegocio medicoNegocio = new MedicoNegocio();
        private EspecialidadNegocio especialidadNegocio = new EspecialidadNegocio();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UsuarioLogueado"] == null)
            {
                Response.Redirect("Inicio.aspx");
            }
            Usuario usuario = (Usuario)Session["UsuarioLogueado"];
            lblAdministrador.Text = usuario.Nombre_usuario;

            if (!IsPostBack)
            {
                cargarMedicos();
            }

        }

        private void cargarMedicos()
        {
            gvMedico.DataSource = medicoNegocio.ObtenerTodosLosMedicos();
            gvMedico.DataBind();
        }

        protected void gvMedico_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvMedico.EditIndex = e.NewEditIndex;
            cargarMedicos();
        }

        protected void gvMedico_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvMedico.EditIndex = -1;
            cargarMedicos();
        }

        protected void gvMedico_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = gvMedico.Rows[e.RowIndex];

            int nuevaIdEsp = int.Parse(((DropDownList)row.FindControl("ddlEspecialidad")).SelectedValue);

            string nombre = ((TextBox)gvMedico.Rows[e.RowIndex].FindControl("txt_eit_Nombre")).Text;
            string apellido = ((TextBox)gvMedico.Rows[e.RowIndex].FindControl("txt_eit_Apellido")).Text;
            string dni = ((Label)gvMedico.Rows[e.RowIndex].FindControl("lbl_eit_DNI")).Text;
            string legajo = ((TextBox)gvMedico.Rows[e.RowIndex].FindControl("txt_eit_Legajo")).Text;
            string idEspecialidad = ((TextBox)gvMedico.Rows[e.RowIndex].FindControl("txt_eit_IdEspecialidad")).Text;
            bool estado = ((CheckBox)gvMedico.Rows[e.RowIndex].FindControl("cb_eit_Estado")).Checked;


            MedicoNegocio medicoNegocio = new MedicoNegocio();

            bool Succes = medicoNegocio.ModificarMedico(nombre, apellido, dni, legajo, idEspecialidad, estado);

            if (Succes)
            {
                LabelPrueba.Text = " FUNCIONOOOO";
            }
            else
            {
                LabelPrueba.Text = "Matenme";
            }

            gvMedico.EditIndex = -1;
            cargarMedicos();
        }

        protected void gvMedico_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if(e.Row.RowType == DataControlRowType.DataRow && (e.Row.RowState & DataControlRowState.Edit) != 0){

                var ddl = (DropDownList)e.Row.FindControl("ddlEspecialidad");

                ddl.DataSource = especialidadNegocio.ObtenerEspecialidades();
                ddl.DataTextField = "Nombre_especialidad";
                ddl.DataValueField = "Id_especialidad";
                ddl.DataBind();

                string idActual = DataBinder.Eval(e.Row.DataItem, "Id Especialidad").ToString();

                var item = ddl.Items.FindByValue(idActual);
                if (item != null) item.Selected = true;
            }
        }

        protected void gvMedico_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            if(gvMedico.EditIndex != -1)
            {
                e.Cancel = true;
                return;
            }

            gvMedico.PageIndex = e.NewPageIndex;
            cargarMedicos();
        }
    }
}