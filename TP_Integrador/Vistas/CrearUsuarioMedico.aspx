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
            width: 182px;
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
                    <td class="auto-style6"><asp:Button ID="btnBuscar" runat="server" Text="Buscar" OnClick="btnBuscar_Click" />
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
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style8">
                        <asp:GridView ID="gvMedicos" runat="server" AllowPaging="True" AutoGenerateSelectButton="True" DataKeyNames="id_persona" OnSelectedIndexChanged="gvMedicos_SelectedIndexChanged" PageSize="6" AutoGenerateColumns="False" OnPageIndexChanging="gvMedicos_PageIndexChanging" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                            <Columns>
                                <asp:BoundField DataField="id_persona" HeaderText="IdPersona" Visible="False" />
                                <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                                <asp:BoundField DataField="Apellido" HeaderText="Apellido" />
                                <asp:BoundField DataField="DNI" HeaderText="DNI" />
                            </Columns>
                            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                            <PagerStyle HorizontalAlign="Left" BackColor="#99CCCC" ForeColor="#003399" />
                            <RowStyle BackColor="White" ForeColor="#003399" />
                            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                            <SortedAscendingCellStyle BackColor="#EDF6F6" />
                            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                            <SortedDescendingCellStyle BackColor="#D6DFDF" />
                            <SortedDescendingHeaderStyle BackColor="#002876" />
                        </asp:GridView>
                    </td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                 <tr>
                     <td class="auto-style7">&nbsp;</td>
                     <td class="auto-style5">
                         &nbsp;</td>
                     <td class="auto-style8">
                         <asp:Label ID="lblMensaje" runat="server"></asp:Label>
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
                        <asp:Label ID="lblUsuario" runat="server" Text="Usuario:" Font-Size="Medium"></asp:Label>
                     </td>
                     <td class="auto-style8">
                        <asp:TextBox ID="txtUsuario" runat="server" placeholder="Ingresar usuario"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvUsuario" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtUsuario" Display="Dynamic" ForeColor="Red" ValidationGroup="grupo1">Ingrese un usuario</asp:RequiredFieldValidator>
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
                            <asp:RequiredFieldValidator ID="rfvContrasena1" runat="server" ControlToValidate="txtContrasena1" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="grupo1">Ingrese una contraseña</asp:RequiredFieldValidator>
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
                            <asp:RequiredFieldValidator ID="rfvContrasena" runat="server" ControlToValidate="txtContrasena2" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="grupo1">Reingrese la contraseña</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="cvContrasena" runat="server" ControlToCompare="txtContrasena1" ControlToValidate="txtContrasena2" Display="Dynamic" ErrorMessage="Las contraseñas no coinciden" ForeColor="Red" ValidationGroup="grupo1"></asp:CompareValidator>
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
                        <asp:Button ID="btnCrearUsuario" runat="server" Text="Crear Usuario" OnClick="btnCrearUsuario_Click" ValidationGroup="grupo1" />
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

