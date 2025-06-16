<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListarPaciente.aspx.cs" Inherits="Vistas.ListarPaciente" %>

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
            width: 200px;
        }
        .auto-style3 {
            width: 118px;
        }
        .auto-style4 {
            width: 200px;
            height: 23px;
        }
        .auto-style5 {
            width: 118px;
            height: 23px;
        }
        .auto-style6 {
            height: 23px;
        }
        .auto-style7 {
            width: 130px;
        }
        .auto-style8 {
            height: 23px;
            width: 130px;
        }
        .auto-style9 {
            width: 445px;
        }
        .auto-style10 {
            height: 23px;
            width: 445px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div >
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:HyperLink ID="hlAtras" runat="server" NavigateUrl="~/ABMLPacientes.aspx">Atrás</asp:HyperLink>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style7">
                        <asp:Label ID="lblListarPacientes" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Listar Pacientes"></asp:Label>
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                    <td>
                        <asp:Label ID="lblAdministrador" runat="server">NombreAdmin</asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style8"></td>
                    <td class="auto-style10"></td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style5">DNI del paciente:</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtDni" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style10">
                        <asp:Button ID="btnFiltrar" runat="server" Text="Filtrar" />
                    </td>
                    <td class="auto-style6">
                        <asp:Button ID="btnMostrarTodos" runat="server" Text="Mostrar todos" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style7">
                        <asp:GridView ID="gvPacientes" runat="server">
                        </asp:GridView>
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>