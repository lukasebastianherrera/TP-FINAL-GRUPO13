<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AltaPaciente.aspx.cs" Inherits="Vistas.AltaPaciente
    " %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style11 {
            width: 118px;
        }
        .auto-style12 {
            width: 240px;
        }
        .auto-style19 {
            width: 104px;
        }
        .auto-style25 {
            width: 223px;
        }
        .auto-style26 {
            width: 309px;
        }
        .auto-style27 {
            width: 850px;
        }
        .auto-style28 {
            width: 50px;
        }
        .auto-style29 {
            width: 75px;
        }
        .auto-style30 {
            width: 192px;
        }
        .auto-style31 {
            width: 75px;
            height: 38px;
        }
        .auto-style32 {
            width: 118px;
            height: 38px;
        }
        .auto-style33 {
            width: 240px;
            height: 38px;
        }
        .auto-style34 {
            width: 50px;
            height: 38px;
        }
        .auto-style35 {
            width: 104px;
            height: 38px;
        }
        .auto-style36 {
            width: 192px;
            height: 38px;
        }
        .auto-style37 {
            height: 38px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td style="font-size: x-large">
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style25">
                                    <asp:HyperLink ID="hlAtras" runat="server" Font-Size="Medium" NavigateUrl="~/ABMLPacientes.aspx">Atrás</asp:HyperLink>
                                </td>
                                <td class="auto-style26">&nbsp;</td>
                                <td class="auto-style27">&nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style25">&nbsp;</td>
                                <td class="auto-style26">&nbsp;</td>
                                <td class="auto-style27">
                                    <asp:Label ID="lblAnadirPaciente" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Añadir Paciente"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="lblAdministrador" runat="server" Font-Size="Medium">NombreAdmin</asp:Label>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style25">&nbsp;</td>
                                <td class="auto-style26">&nbsp;</td>
                                <td class="auto-style27">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style29">&nbsp;</td>
                                <td class="auto-style11">
                                    <asp:Label ID="Label2" runat="server" Font-Size="Medium" Text="Nombre:"></asp:Label>
                                </td>
                                <td class="auto-style12">
        <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control" placeholder="Ingresar Nombre"></asp:TextBox>
                                </td>
                                <td class="auto-style28">&nbsp;</td>
                                <td class="auto-style19">
                                    <asp:Label ID="Label3" runat="server" Font-Size="Medium" Text="Apellido:"></asp:Label>
                                </td>
                                <td class="auto-style12">
        <asp:TextBox ID="txtApellido" runat="server" CssClasss="form-control" placeholder="Ingresar Apellido "></asp:TextBox>
                                </td>
                                <td class="auto-style28">&nbsp;</td>
                                <td class="auto-style30">
        <asp:Label ID="lblFechaNacimiento" runat="server" Text="Fecha de Nacimiento:" Font-Size="Medium"></asp:Label>
                                </td>
                                <td>
                                    <asp:DropDownList ID="ddlDia" runat="server" CssClass="form-control" >
                                        <asp:ListItem Value="0">Seleccionar Día</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="ddlMes" runat="server" CssClass="form-control">
                                        <asp:ListItem Text="Seleccionar Mes" Value="0" />
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="ddlAño" runat="server" CssClass="form-control">
                                        <asp:ListItem Text="Seleccionar Año" Value="0" />
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style29">&nbsp;</td>
                                <td class="auto-style11">
                                    &nbsp;</td>
                                <td class="auto-style12">
                                    &nbsp;</td>
                                <td class="auto-style28">&nbsp;</td>
                                <td class="auto-style19">
                                    &nbsp;</td>
                                <td class="auto-style12">
                                    &nbsp;</td>
                                <td class="auto-style28">&nbsp;</td>
                                <td class="auto-style30">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style31"></td>
                                <td class="auto-style32">
        <asp:Label ID="lblDni" runat="server" Text="DNI:" Font-Size="Medium"></asp:Label>
                                </td>
                                <td class="auto-style33">
                                    <asp:TextBox ID="txtDNI" runat="server" CssClass="form-control" placeholder="Ingresar DNI"></asp:TextBox>
                                </td>
                                <td class="auto-style34"></td>
                                <td class="auto-style35">
            <asp:Label ID="lblSexo" runat="server" Text="Sexo:" Font-Size="Medium"></asp:Label>
                                </td>
                                <td class="auto-style33">
            <asp:DropDownList ID="ddlSexo" runat="server" CssClass="form-control">
                <asp:ListItem Value="0">Seleccionar Sexo</asp:ListItem>
                <asp:ListItem Value="M">Masculino</asp:ListItem>
                <asp:ListItem Value="F">Femenino</asp:ListItem>
            </asp:DropDownList>
                                </td>
                                <td class="auto-style34"></td>
                                <td class="auto-style36">
                                    <asp:Label ID="lblNacionalidad" runat="server" Font-Size="Medium" Text="Nacionalidad:"></asp:Label>
                                </td>
                                <td class="auto-style37">
                        <asp:DropDownList ID="DdlNacionalidad" runat="server">
                        </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style29">&nbsp;</td>
                                <td class="auto-style11">
                                    &nbsp;</td>
                                <td class="auto-style12">
                                    &nbsp;</td>
                                <td class="auto-style28">&nbsp;</td>
                                <td class="auto-style19">
                                    &nbsp;</td>
                                <td class="auto-style12">
                                    &nbsp;</td>
                                <td class="auto-style28">&nbsp;</td>
                                <td class="auto-style30">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style29">&nbsp;</td>
                                <td class="auto-style11">
        <asp:Label ID="lblEmail" runat="server" Text="E-mail:" Font-Bold="False" Font-Size="Medium"></asp:Label>
                                </td>
                                <td class="auto-style12">
        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Ingresar Correo"></asp:TextBox>
                                </td>
                                <td class="auto-style28">&nbsp;</td>
                                <td class="auto-style19">
        <asp:Label ID="lblCelular" runat="server" Text="Tel/Celular:" Font-Size="Medium"></asp:Label>
                                </td>
                                <td class="auto-style12">
        <asp:TextBox ID="txtCelular" runat="server" CssClass="form-control" placeholder="Ingresar Celular"></asp:TextBox>
                                </td>
                                <td class="auto-style28">&nbsp;</td>
                                <td class="auto-style30">
        <asp:Label ID="lblDireccion" runat="server" Text="Dirección:" Font-Size="Medium"></asp:Label>
                                </td>
                                <td>
        <asp:TextBox ID="txtDireccion" runat="server" CssClass="form-control" placeholder="Ingresar Direccion"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style29">&nbsp;</td>
                                <td class="auto-style11">
                                    &nbsp;</td>
                                <td class="auto-style12">
                                    &nbsp;</td>
                                <td class="auto-style28">&nbsp;</td>
                                <td class="auto-style19">
                                    &nbsp;</td>
                                <td class="auto-style12">
                                    &nbsp;</td>
                                <td class="auto-style28">&nbsp;</td>
                                <td class="auto-style30">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style29"></td>
                                <td class="auto-style11">
            <asp:Label ID="lblLocalidad" runat="server" Text="Localidad:" Font-Size="Medium"></asp:Label>
                                </td>
                                <td class="auto-style12">
            <asp:DropDownList ID="ddlLocalidad" runat="server" CssClass="form-control"></asp:DropDownList>
                                </td>
                                <td class="auto-style28"></td>
                                <td class="auto-style19">
            <asp:Label ID="lblProvincia" runat="server" Text="Provincia:" Font-Size="Medium"></asp:Label>
                                </td>
                                <td class="auto-style12">
            <asp:DropDownList ID="ddlProvincia" runat="server" CssClass="form-control" AutoPostBack="True"></asp:DropDownList>
                                </td>
                                <td class="auto-style28"></td>
                                <td class="auto-style30"></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td class="auto-style29">&nbsp;</td>
                                <td class="auto-style11">
                                    &nbsp;</td>
                                <td class="auto-style12">
                                    &nbsp;</td>
                                <td class="auto-style28">&nbsp;</td>
                                <td class="auto-style19">
                                    &nbsp;</td>
                                <td class="auto-style12">
                                    &nbsp;</td>
                                <td class="auto-style28">&nbsp;</td>
                                <td class="auto-style30">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                             <tr>
                                 <td class="auto-style29">&nbsp;</td>
                                 <td class="auto-style11">
                                     &nbsp;</td>
                                 <td class="auto-style12">
                                     &nbsp;</td>
                                 <td class="auto-style28">&nbsp;</td>
                                 <td class="auto-style19">
                                     &nbsp;</td>
                                 <td class="auto-style12">
                                     <asp:Button ID="btnGuardar" runat="server" Text="Guardar" />
                                 </td>
                                 <td class="auto-style28">&nbsp;</td>
                                 <td class="auto-style30">
                                     <asp:Label ID="lblMensaje" runat="server" Font-Size="Medium"></asp:Label>
                                 </td>
                                 <td>&nbsp;</td>
                             </tr>
                             <tr>
                                 <td class="auto-style29">&nbsp;</td>
                                 <td class="auto-style11">

                                     &nbsp;</td>
                                 <td class="auto-style12">
                                     &nbsp;</td>
                                 <td class="auto-style28">&nbsp;</td>
                                 <td class="auto-style19">
                                     &nbsp;</td>
                                 <td class="auto-style12">
                                     &nbsp;</td>
                                 <td class="auto-style28">&nbsp;</td>
                                 <td class="auto-style30">&nbsp;</td>
                                 <td>&nbsp;</td>
                             </tr>
                        </table>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                    </td>
                </tr>
                </table>
        </div>
    </form>
</body>
</html>
