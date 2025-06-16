<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModificarPaciente.aspx.cs" Inherits="Vistas.ModificarPaciente" %>

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
            height: 40px;
        }
        .auto-style3 {
            height: 127px;
        }
        .auto-style4 {
            width: 370px;
        }
        .auto-style5 {
            height: 40px;
            width: 370px;
        }
        .auto-style6 {
            height: 127px;
            width: 370px;
        }
        .auto-style7 {
            width: 582px;
        }
        .auto-style8 {
            height: 40px;
            width: 582px;
        }
        .auto-style9 {
            height: 127px;
            width: 582px;
        }
    </style>
    </head>
<body>
    <form id="form1" runat="server">
        <div style="font-weight: bold;" >
           
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4">
            <asp:HyperLink ID="hlAtras0" runat="server" Font-Size="Medium" NavigateUrl="~/ABMLPacientes.aspx">Volver</asp:HyperLink>
                    </td>
                    <td class="auto-style7" style="text-align : center; font-size: xx-large">Modificar Paciente</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="lblAdministrador" runat="server" Text="NombreAdmin"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">Buscar paciente:</td>
                    <td class="auto-style8">
             <asp:TextBox ID="txtPaciente0" runat="server" placeholder = " Ingrese DNI" Width="533px"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
             <asp:Button ID="btnBuscar0" runat="server" Text="Buscar" />  </td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">

             <asp:GridView ID="gvPacientes0" runat="server" Height="69px" Width="335px">
             </asp:GridView>

                    </td>
                    <td class="auto-style9"></td>
                    <td class="auto-style3"></td>
                    <td class="auto-style3"></td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
