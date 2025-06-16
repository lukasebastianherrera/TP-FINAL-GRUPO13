<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ABLMedicos.aspx.cs" Inherits="Vistas.ABLMedicos" %>

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
            width: 1169px;
        }
        .auto-style6 {
            height: 22px;
            width: 1169px;
        }
        .auto-style7 {
            height: 29px;
            width: 1169px;
        }
        .auto-style8 {
            height: 21px;
            width: 1169px;
        }
        .auto-style9 {
            width: 300px;
        }
        .auto-style10 {
            height: 22px;
            width: 300px;
        }
        .auto-style11 {
            height: 29px;
            width: 300px;
        }
        .auto-style12 {
            height: 21px;
            width: 300px;
        }
        .auto-style13 {
            width: 100px;
        }
        .auto-style14 {
            height: 22px;
            width: 100px;
        }
        .auto-style15 {
            height: 29px;
            width: 100px;
        }
        .auto-style16 {
            height: 21px;
            width: 100px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <asp:HyperLink ID="hlVolver" runat="server" NavigateUrl="~/AdminMenu.aspx">Volver</asp:HyperLink>
                    </td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:Label ID="lblMedicos" runat="server" Font-Bold="True" Text="ABML Médicos" Font-Size="XX-Large"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblAdministrador" runat="server" Font-Bold="False" Font-Size="Medium">NombreAdmin</asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10"></td>
                    <td class="auto-style14"></td>
                    <td class="auto-style6"></td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style11"></td>
                    <td class="auto-style15"></td>
                    <td class="auto-style7">

            <asp:HyperLink ID="hlAñadirMedico" runat="server" NavigateUrl="~/AltaMedico.aspx" Font-Bold="False" Font-Size="Medium" ForeColor="Blue">Añadir nuevo médico</asp:HyperLink>

                    </td>
                    <td class="auto-style3"></td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="auto-style12"></td>
                    <td class="auto-style16"></td>
                    <td class="auto-style8"></td>
                    <td class="auto-style4"></td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style5">

            <asp:HyperLink ID="hlBajaMedico" runat="server" Font-Bold="False" Font-Size="Medium" ForeColor="Blue" NavigateUrl="~/BajaMedico.aspx">Eliminar médico</asp:HyperLink>

                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style5">

            <asp:HyperLink ID="hlModificarMedico" runat="server" Font-Bold="False" Font-Size="Medium" ForeColor="Blue" NavigateUrl="~/ModificarMedico.aspx">Modificar médico</asp:HyperLink>

                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style5">

            <asp:HyperLink ID="hlListarMedicos" runat="server" Font-Bold="False" Font-Size="Medium" ForeColor="Blue" NavigateUrl="~/ListarMedicos.aspx">Listar médicos</asp:HyperLink>

                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                 <tr>
                     <td class="auto-style9">&nbsp;</td>
                     <td class="auto-style13">&nbsp;</td>
                     <td class="auto-style5">&nbsp;</td>
                     <td>&nbsp;</td>
                     <td>&nbsp;</td>
                 </tr>
                 <tr>
                     <td class="auto-style9">&nbsp;</td>
                     <td class="auto-style13">&nbsp;</td>
                     <td class="auto-style5">
                         <asp:HyperLink ID="hlCrearUsuarioMedico" runat="server" ForeColor="Blue" NavigateUrl="~/CrearUsuarioMedico.aspx">Crear usuario médico</asp:HyperLink>
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
