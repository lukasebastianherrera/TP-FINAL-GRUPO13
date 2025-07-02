<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AsignacionTurnos.aspx.cs" Inherits="Vistas.AsignacionTurnos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style4 {
            width: 400px;
        }
        .auto-style5 {
            width: 112px;
        }
        .auto-style6 {
            width: 696px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4">
                        <asp:HyperLink ID="hlVolver" runat="server" NavigateUrl="~/AdminMenu.aspx" ForeColor="Blue">Volver</asp:HyperLink>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style6">
                        <asp:Label ID="lblAsignacionTurnos" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Asignación de Turnos"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblAdministrador" runat="server">NombreAdmin</asp:Label>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:Label ID="lblEspecialidad" runat="server" Text="Especialidad:"></asp:Label>
                    </td>
                    <td class="auto-style6"> <asp:DropDownList ID="ddlEspecialidad" runat="server">
                        </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfvEspecialidad" runat="server" ControlToValidate="ddlEspecialidad" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" InitialValue="0" ValidationGroup="grupo1">Elija una especialidad</asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5"> &nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:Label ID="lblMedico" runat="server" Text="Medicó:"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:DropDownList ID="ddlMedico" runat="server">
                        </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfvMedico" runat="server" ControlToValidate="ddlMedico" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" InitialValue="0" ValidationGroup="grupo1">Elija un médico</asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:Label ID="lblDia" runat="server" Text="Día:"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:DropDownList ID="ddlDia" runat="server" CssClass="form-control" >
                            <asp:ListItem Value="0">Seleccionar Día</asp:ListItem>
                        </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfvDia" runat="server" ControlToValidate="ddlDia" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" InitialValue="0" ValidationGroup="grupo1">Elija un día</asp:RequiredFieldValidator>
                        <asp:DropDownList ID="ddlMes" runat="server" CssClass="form-control">
                            <asp:ListItem Text="Seleccionar Mes" Value="0" />
                        </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfvMes" runat="server" ControlToValidate="ddlMes" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" InitialValue="0" ValidationGroup="grupo1">Elija un Mes</asp:RequiredFieldValidator>
                        <asp:DropDownList ID="ddlAño" runat="server" CssClass="form-control">
                            <asp:ListItem Text="Seleccionar Año" Value="0" />
                        </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfvAnio" runat="server" ControlToValidate="ddlAño" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" InitialValue="0" ValidationGroup="grupo1">Elija un Año</asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:Label ID="lblHorario" runat="server" Text="Horario:"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:DropDownList ID="ddlHorario" runat="server">
                        </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfvHorario" runat="server" ControlToValidate="ddlHorario" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" InitialValue="0" ValidationGroup="grupo1">Elija un horario</asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:Label ID="lblPaciente" runat="server" Text="Paciente"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:DropDownList ID="ddlPaciente" runat="server">
                        </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfvPaciente" runat="server" ControlToValidate="ddlPaciente" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" InitialValue="0" ValidationGroup="grupo1">Elija un paciente</asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style6"><asp:Button ID="btnAsignarTurno" runat="server" Text="Asignar Turno" ValidationGroup="grupo1" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style6">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
