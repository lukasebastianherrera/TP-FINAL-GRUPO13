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
        .auto-style7 {
            width: 152px;
        }
        .auto-style11 {
            width: 292px;
        }
        .auto-style12 {
            width: 454px;
        }
        .auto-style16 {
            width: 558px;
        }
        .auto-style17 {
            width: 434px;
        }
        .auto-style18 {
            width: 400px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div >
            <table class="auto-style1">
                <tr>
                    <td class="auto-style18">
                        <asp:HyperLink ID="hlVolver" runat="server" NavigateUrl="~/ABMLPacientes.aspx" Font-Size="Medium" ForeColor="Blue">Volver</asp:HyperLink>
                    </td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style11">
                        <asp:Label ID="lblListarPacientes" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Listar Pacientes"></asp:Label>
                    </td>
                    <td class="auto-style12">&nbsp;</td>
                    <td>
                        <asp:Label ID="lblAdministrador" runat="server">NombreAdmin</asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style7">
                        <asp:Label ID="lblApellido" runat="server" Text="Apellido:"></asp:Label>
                    </td>
                    <td class="auto-style11">
                        <asp:TextBox ID="txtApellido" runat="server" placeholder="Ingrese parte del apellido"></asp:TextBox>
                    
                    
                                    <asp:RegularExpressionValidator ID="revApellido" runat="server" ControlToValidate="txtApellido" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="^[a-zA-Z]+$" ValidationGroup="grupo1">Error, solo letras</asp:RegularExpressionValidator>
                   
                    </td>
                    <td class="auto-style12">
                        <asp:Button ID="btnFiltrar" runat="server" Text="Buscar" OnClick="btnFiltrar_Click" ValidationGroup="grupo1" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnMostrarTodos" runat="server" Text="Mostrar todos" OnClick="btnMostrarTodos_Click" CausesValidation="False" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style11">
                        <asp:Label ID="lblMensajeApellido" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                    <td class="auto-style12">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                </table>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style16"></td>
                    <td class="auto-style17">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:GridView ID="gvPacientes" runat="server" AllowPaging="True" OnPageIndexChanging="gvPacientes_PageIndexChanging" PageSize="6">
                            <PagerStyle HorizontalAlign="Center" />
                        </asp:GridView>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style16">&nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style16">&nbsp;</td>
                    <td class="auto-style17">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
            <br />
        </div>
    </form>
</body>
</html>