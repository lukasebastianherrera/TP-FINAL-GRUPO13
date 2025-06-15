<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BajaPaciente.aspx.cs" Inherits="Vistas.BajaPaciente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="font-size: xx-large; font-weight: bold">
            Eliminar Paciente&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="hlAtras" runat="server" Font-Size="Medium" ForeColor="#0000CC" NavigateUrl="~/ABMLPacientes.aspx">Atrás</asp:HyperLink>
&nbsp;&nbsp;&nbsp; </div>
        <div>
            Dni del paciente: 
            <asp:TextBox ID="txtDni" runat="server" CssClass="form-control" placeholder="Ingresar DNI"></asp:TextBox>
        </div>
        <div>

        </div>
    </form>
</body>
</html>
