<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ABMLPacientes.aspx.cs" Inherits="Vistas.ABMLPacientes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 22px;
        }
        .auto-style3 {
            height: 29px;
        }
        .auto-style4 {
            height: 21px;
        }
        .auto-style5 {
            width: 765px;
        }
        .auto-style6 {
            height: 22px;
            width: 765px;
        }
        .auto-style7 {
            height: 29px;
            width: 765px;
        }
        .auto-style8 {
            height: 21px;
            width: 765px;
        }
        .auto-style9 {
            width: 400px;
        }
        .auto-style10 {
            height: 22px;
            width: 400px;
        }
        .auto-style11 {
            height: 29px;
            width: 400px;
        }
        .auto-style12 {
            height: 21px;
            width: 400px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style9">
                        <asp:HyperLink ID="hlVolver" runat="server" NavigateUrl="~/AdminMenu.aspx" ForeColor="Blue">Volver</asp:HyperLink>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        &nbsp;</td>
                    <td class="auto-style5">
                        <asp:Label ID="lblPacientes" runat="server" Font-Bold="True" Text="ABML Pacientes" Font-Size="XX-Large"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblAdministrador" runat="server" Font-Bold="False" Font-Size="Medium">NombreAdmin</asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10"></td>
                    <td class="auto-style6"></td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style11"></td>
                    <td class="auto-style7">

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <asp:HyperLink ID="hlAñadirPaciente" runat="server" NavigateUrl="~/AltaPaciente.aspx" Font-Bold="False" Font-Size="Medium" ForeColor="Blue">Añadir nuevo paciente</asp:HyperLink>

                    </td>
                    <td class="auto-style3"></td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="auto-style12"></td>
                    <td class="auto-style8"></td>
                    <td class="auto-style4"></td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style5">

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <asp:HyperLink ID="hlBajaPaciente" runat="server" NavigateUrl="~/BajaPaciente.aspx" Font-Bold="False" Font-Size="Medium" ForeColor="Blue">Eliminar paciente</asp:HyperLink>

                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style5">

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <asp:HyperLink ID="hlModificarPaciente" runat="server" NavigateUrl="~/ModificarPaciente.aspx" Font-Bold="False" Font-Size="Medium" ForeColor="Blue">Modificar Paciente</asp:HyperLink>

                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style5">

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <asp:HyperLink ID="hlListarPacientes" runat="server" NavigateUrl="~/ListarPaciente.aspx" Font-Bold="False" Font-Size="Medium" ForeColor="Blue">Listar pacientes</asp:HyperLink>

                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />

        </div> 

    </form>
</body>
</html>
