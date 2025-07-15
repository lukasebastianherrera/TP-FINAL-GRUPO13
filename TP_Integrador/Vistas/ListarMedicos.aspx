<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListarMedicos.aspx.cs" Inherits="Vistas.ListarMedicos" %>

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
            width: 400px;
        }
        .auto-style7 {
            width: 152px;
        }
        .auto-style11 {
            width: 292px;
        }
        .auto-style12 {
            width: 404px;
        }
        .auto-style13 {
            width: 505px;
        }
        .auto-style14 {
            width: 374px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div >
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:HyperLink ID="hlVolver" runat="server" NavigateUrl="~/ABLMedicos.aspx" Font-Size="Medium" ForeColor="Blue">Volver</asp:HyperLink>
                    </td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style11">
                        <asp:Label ID="lblListarMedicos" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Listar Médicos"></asp:Label>
                    </td>
                    <td class="auto-style12">&nbsp;</td>
                    <td>
                        <asp:Label ID="lblAdministrador" runat="server">NombreAdmin</asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style7">
                        <asp:Label ID="lblApellido" runat="server" Text="Apellido:"></asp:Label>
                    </td>
                    <td class="auto-style11">
                        <asp:TextBox ID="txtApellido" runat="server" placeholder="Ingrese parte del apellido"></asp:TextBox>
                    
                    
                                    <asp:RegularExpressionValidator ID="revApellido" runat="server" ControlToValidate="txtApellido" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="^[a-zA-Z]+$" ValidationGroup="grupo1">Error, solo letras</asp:RegularExpressionValidator>
                   
                    </td>
                    <td class="auto-style12">
                        <asp:Button ID="btnFiltrar" runat="server" Text="Filtrar" ValidationGroup="grupo1" OnClick="btnFiltrar_Click1" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnMostrarTodos" runat="server" Text="Mostrar todos" OnClick="btnMostrarTodos_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
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
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style14">
                        <asp:GridView ID="gvMedicos" runat="server" AllowPaging="True" OnPageIndexChanging="gvMedicos_PageIndexChanging" PageSize="5">
                            <PagerStyle HorizontalAlign="Center" />
                        </asp:GridView>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
        </div>
    </form>
</body>
</html>