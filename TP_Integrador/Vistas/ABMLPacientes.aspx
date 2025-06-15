<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ABMLPacientes.aspx.cs" Inherits="Vistas.ABMLPacientes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="font-size: xx-large; font-weight: bold">
            ABML Pacientes

        </div> <br />

        <div>

            <asp:HyperLink ID="hlAñadirPaciente" runat="server" NavigateUrl="~/AltaPaciente.aspx">Añadir nuevo paciente</asp:HyperLink>

        </div>
        <div>

            <asp:HyperLink ID="hlBajaPaciente" runat="server" NavigateUrl="~/BajaPaciente.aspx">Eliminar paciente</asp:HyperLink>

        </div>
        <div>

            <asp:HyperLink ID="hlModificarPaciente" runat="server" NavigateUrl="~/ModificarPaciente.aspx">Modificar Paciente</asp:HyperLink>

        </div>
        <div>

            <asp:HyperLink ID="hlListarPaciente" runat="server" NavigateUrl="~/ListarPaciente.aspx">Listar paciente</asp:HyperLink>

        </div>

    </form>
</body>
</html>
