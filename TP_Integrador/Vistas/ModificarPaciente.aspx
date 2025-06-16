<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModificarPaciente.aspx.cs" Inherits="Vistas.ModificarPaciente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    </head>
<body>
    <form id="form1" runat="server">
        <div style="font-weight: bold; font-size: xx-large" >
           
            &nbsp;
            <asp:HyperLink ID="hlAtras" runat="server" Font-Size="Medium" NavigateUrl="~/ABMLPacientes.aspx">Atrás</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;
           
            Modificar Paciente</div> <br />
        <div>

        </div> <br />
         <div>

        </div> <br />
         <div>
        <div>

        </div> 
        </div> 
         <div>

             Buscar paciente:&nbsp;&nbsp;&nbsp;
             <asp:TextBox ID="txtPaciente" runat="server" placeholder = " Ingrese DNI"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
             <asp:Button ID="btnBuscar" runat="server" Text="Buscar" />  <br />

        </div>
         <div>

        </div>
         <div>

        </div>
         <div>

             <asp:GridView ID="gvPacientes" runat="server">
             </asp:GridView>

        </div>
    </form>
</body>
</html>
