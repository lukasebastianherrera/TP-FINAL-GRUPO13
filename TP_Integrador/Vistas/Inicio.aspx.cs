using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vistas
{
    public partial class Inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_iniciar_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedIndex == 1)
            {
                Response.Redirect("VistaMedico.aspx");
            }
            else if (DropDownList1.SelectedIndex == 2)
            {
                Response.Redirect("AdminMenu.aspx");
            }
        }
    }
}