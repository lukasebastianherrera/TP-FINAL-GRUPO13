<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InformeAsistenciaGeneral.aspx.cs" Inherits="Vistas.InformeAsistenciaGeneral" %>

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
        .auto-style8 {
            width: 354px;
        }
        .auto-style9 {
            width: 54px;
        }
        .auto-style10 {
            width: 46px;
        }
        .auto-style11 {
            width: 196px;
        }
        .auto-style12 {
            width: 309px;
        }
        .auto-style13 {
            width: 717px;
        }
        .auto-style14 {
            width: 633px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:HyperLink ID="hlVolver" runat="server" NavigateUrl="~/Informes.aspx" ForeColor="Blue">Volver</asp:HyperLink>
                    </td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style13">
                        <asp:Label ID="lblAsistencia" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Informe de Asistencia"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblAdministrador" runat="server" Text="NombreAdmin"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style9">
                        <asp:Label ID="lblDesde" runat="server" Font-Size="Medium" Text="Desde:"></asp:Label>
                    </td>
                    <td class="auto-style12">
                                    <asp:DropDownList ID="ddlMes" runat="server" CssClass="form-control">
                                        <asp:ListItem Text="Seleccionar Mes" Value="0" />
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfvMes" runat="server" ControlToValidate="ddlMes" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" InitialValue="0" ValidationGroup="grupo1">Elija un Mes</asp:RequiredFieldValidator>
                                    <asp:DropDownList ID="ddlAño" runat="server" CssClass="form-control">
                                        <asp:ListItem Text="Seleccionar Año" Value="0" />
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfvAnio" runat="server" ControlToValidate="ddlAño" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" InitialValue="0" ValidationGroup="grupo1">Elija un Año</asp:RequiredFieldValidator>
                                </td>
                    <td class="auto-style10">
                        <asp:Label ID="lblHasta" runat="server" Text="Hasta:"></asp:Label>
                    </td>
                    <td class="auto-style8">
                                    <asp:DropDownList ID="ddlMes0" runat="server" CssClass="form-control">
                                        <asp:ListItem Text="Seleccionar Mes" Value="0" />
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfvMes0" runat="server" ControlToValidate="ddlMes0" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" InitialValue="0" ValidationGroup="grupo1">Elija un Mes</asp:RequiredFieldValidator>
                                    <asp:DropDownList ID="ddlAño0" runat="server" CssClass="form-control">
                                        <asp:ListItem Text="Seleccionar Año" Value="0" />
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfvAnio0" runat="server" ControlToValidate="ddlAño0" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" InitialValue="0" ValidationGroup="grupo1">Elija un Año</asp:RequiredFieldValidator>
                                </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <table class="auto-style1">
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td>
                        <asp:Button ID="btnGenerarInforme" runat="server" Text="Generar Informe" ValidationGroup="grupo1" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td>
                        <asp:Label ID="lblInforme" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
