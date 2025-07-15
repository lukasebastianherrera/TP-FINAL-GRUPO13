<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrearUsuarioMedico.aspx.cs" Inherits="Vistas.CrearUsuarioMedico" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style5 {
            width: 127px;
        }
        .auto-style6 {
            width: 281px;
        }
        .auto-style7 {
            width: 400px;
        }
        .auto-style8 {
            width: 409px;
        }
        .auto-style9 {
            margin-left: 0px;
        }
        .auto-style10 {
            width: 328px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div >
            <table class="auto-style1">
                <tr>
                    <td class="auto-style7">
                        <asp:HyperLink ID="hlVolver" runat="server" NavigateUrl="~/ABLMedicos.aspx" ForeColor="Blue">Volver</asp:HyperLink>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        &nbsp;</td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style8">
                        <asp:Label ID="lblCrearUsuarioMedico" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Crear Usuario"></asp:Label>
                    </td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>
                        <asp:Label ID="lblAdministrador" runat="server">NombreAdmin</asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:Label ID="lblApellido" runat="server" Font-Size="Medium" Text="Apellido:"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtApellido" runat="server" placeholder="Ingrese parte del apellido"></asp:TextBox>
                    &nbsp;<asp:RegularExpressionValidator ID="revApellido" runat="server" ControlToValidate="txtApellido" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="^[a-zA-Z]+$" ValidationGroup="grupo1">Error, solo letras</asp:RegularExpressionValidator>
                      
                      
                        &nbsp;<asp:Label ID="lblMensajeApellido" runat="server" ForeColor="Red"></asp:Label>
                                             
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                    <td class="auto-style6"><asp:Button ID="btnBuscar" runat="server" Text="Buscar" OnClick="btnBuscar_Click" ValidationGroup="grupo1" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnMostrar" runat="server" OnClick="btnMostrar_Click" Text="Mostrar Todos" />
                        </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style8">
                        <asp:GridView ID="gvMedicos" runat="server" AllowPaging="True" AutoGenerateSelectButton="True" OnSelectedIndexChanged="gvMedicos_SelectedIndexChanged" PageSize="6" AutoGenerateColumns="False" OnPageIndexChanging="gvMedicos_PageIndexChanging" CssClass="auto-style9" DataKeyNames="id_persona">
                            <Columns>
                                <asp:BoundField DataField="id_persona" HeaderText="IdPersona" Visible="False" />
                                <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                                <asp:BoundField DataField="Apellido" HeaderText="Apellido" />
                                <asp:BoundField DataField="DNI" HeaderText="DNI" />
                                <asp:BoundField DataField="Especialidad" HeaderText="Especialidad" />
                                <asp:BoundField DataField="Legajo"       HeaderText="Legajo"       />
                            </Columns>
                            <PagerStyle HorizontalAlign="Center" />
                        </asp:GridView>
                    </td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                 <tr>
                     <td class="auto-style10">&nbsp;</td>
                     <td class="auto-style5">
                         &nbsp;</td>
                     <td class="auto-style8">
                         <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                     </td>
                     <td class="auto-style6">&nbsp;</td>
                     <td>&nbsp;</td>
                 </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <table class="auto-style1">
                 <tr>
                     <td class="auto-style7">&nbsp;</td>
                     <td class="auto-style5">
                        <asp:Label ID="lblUsuario" runat="server" Text="Usuario:" Font-Size="Medium"></asp:Label>
                     </td>
                     <td class="auto-style8">
                        <asp:TextBox ID="txtUsuario" runat="server" placeholder="Ingresar usuario"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvUsuario" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtUsuario" Display="Dynamic" ForeColor="Red" ValidationGroup="grupo2">Ingrese un usuario</asp:RequiredFieldValidator>
                     </td>
                     <td class="auto-style6">&nbsp;</td>
                     <td>&nbsp;</td>
                 </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:Label ID="lblContrasena" runat="server" Text="Contraseña:" Font-Size="Medium"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtContrasena1" runat="server" TextMode="Password" placeholder="Ingresar contraseña"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvContrasena1" runat="server" ControlToValidate="txtContrasena1" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="grupo2">Ingrese una contraseña</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:Label ID="lblConfirmarContrasena" runat="server" Font-Size="Medium" Text="Confirmar contraseña:"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtContrasena2" runat="server" TextMode="Password" placeholder="Ingresar contraseña"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvContrasena" runat="server" ControlToValidate="txtContrasena2" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="grupo2">Reingrese la contraseña</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="cvContrasena" runat="server" ControlToCompare="txtContrasena1" ControlToValidate="txtContrasena2" Display="Dynamic" ErrorMessage="Las contraseñas no coinciden" ForeColor="Red" ValidationGroup="grupo2"></asp:CompareValidator>
                    </td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style8">
                        <asp:Button ID="btnCrearUsuario" runat="server" Text="Crear Usuario" OnClick="btnCrearUsuario_Click" ValidationGroup="grupo2" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnCancelar" runat="server" OnClick="btnCancelar_Click" Text="Cancelar" />
                    </td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style8">
                        <asp:Label ID="lblMensajeExito" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

