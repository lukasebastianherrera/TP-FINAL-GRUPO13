<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModificarMedico.aspx.cs" Inherits="Vistas.ModificarMedico" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style10 {
            width: 400px;
        }
        .auto-style12 {
            width: 406px;
        }
        .auto-style13 {
            width: 170px;
        }
        .auto-style14 {
            width: 220px;
        }
        .auto-style15 {
            width: 400px;
            height: 85px;
        }
        .auto-style16 {
            width: 170px;
            height: 85px;
        }
        .auto-style17 {
            width: 406px;
            height: 85px;
        }
        .auto-style18 {
            height: 85px;
        }
    </style>
    </head>
<body>
    <form id="form1" runat="server">
        <div>
           
            <table class="auto-style1">
                <tr>
                    <td class="auto-style10">
            <asp:HyperLink ID="hlVolver" runat="server" Font-Size="Medium" NavigateUrl="~/ABLMedicos.aspx" Font-Bold="False" ForeColor="Blue">Volver</asp:HyperLink>
                    </td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style12">
                        <asp:Label ID="lblModificarMedico" runat="server" Font-Size="XX-Large" Text="Modificar Médico" Font-Bold="False"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="lblAdministrador" runat="server" Text="NombreAdmin" Font-Bold="False" Font-Size="Medium"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15"></td>
                    <td class="auto-style16">
                        <asp:Label ID="lblApellido" runat="server" Font-Bold="False" Font-Size="Medium" Text="Apellido:"></asp:Label>
                    </td>
                    <td class="auto-style17">
             <asp:TextBox ID="txtApellido" runat="server" placeholder = " Ingresar DNI"></asp:TextBox>
                    &nbsp;<asp:RegularExpressionValidator ID="revApellido" runat="server" ControlToValidate="txtApellido" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="^[a-zA-Z]+$" ValidationGroup="grupo1" Font-Bold="False">Error, solo letras</asp:RegularExpressionValidator>
                   
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                    <td class="auto-style18">
             <asp:Button ID="btnBuscarMedico" runat="server" Text="Buscar" OnClick="btnBuscarMedico_Click" />  
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnCancelar" runat="server" OnClick="btnCancelar_Click" Text="Cancelar" />
                    </td>
                    <td class="auto-style18"></td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style12">
                        <asp:Label ID="lblMensajeApellido" runat="server" Font-Bold="False" ForeColor="Red"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                </table>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td>

                        <asp:GridView ID="gvMedico" runat="server" AutoGenerateColumns="False" AutoGenerateEditButton="True" CellPadding="4" Height="69px" OnRowCancelingEdit="gvMedico_RowCancelingEdit" OnRowEditing="gvMedico_RowEditing" OnRowUpdating="gvMedico_RowUpdating" Width="335px" AllowPaging="True" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" PageSize="6" OnPageIndexChanging="gvMedico_PageIndexChanging">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:TemplateField HeaderText="Nombre">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txt_eit_Nombre" runat="server" Text='<%# Bind("Nombre") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_it_Nombre" runat="server" Text='<%# Eval("Nombre") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Apellido">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txt_eit_Apellido" runat="server" Text='<%# Bind("Apellido") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_it_Apellido" runat="server" Text='<%# Eval("Apellido") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="DNI">
                                    <EditItemTemplate>
                                        <asp:Label ID="lbl_eit_DNI" runat="server" Text='<%# Bind("DNI") %>'></asp:Label>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_it_DNI" runat="server" Text='<%# Eval("DNI") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Legajo">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txt_eit_Legajo" runat="server" Text='<%# Bind("Legajo") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_it_Legajo" runat="server" Text='<%# Eval("Legajo") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Especialidad">
                                    <EditItemTemplate>
                                        <asp:Label ID="lbl_eit_Especialidad" runat="server" Text='<%# Bind("Especialidad") %>'></asp:Label>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_Especialidad" runat="server" Text='<%# Eval("Especialidad") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Sexo">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txt_eit_Sexo" runat="server" Text='<%# Bind("Sexo") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_Sexo" runat="server" Text='<%# Eval("Sexo") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Nacionalidad">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txt_eit_Nacionalidad" runat="server" Text='<%# Bind("Nacionalidad") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_Nacionalidad" runat="server" Text='<%# Eval("Nacionalidad") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Fecha Nacimiento">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txt_eit_FechaNacimiento" runat="server" Text='<%# Bind("[Fecha de Nacimiento]", "{0:dd/MM/yyyy}") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_FechaNacimiento" runat="server" Text='<%# Eval("Fecha de Nacimiento", "{0:dd/MM/yyyy}") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Correo Electronico">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txt_eit_CorreoElectronico" runat="server" Text='<%# Bind("[Correo Electrónico]") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_CorreoElectronico" runat="server" Text='<%# Eval("Correo Electrónico") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Telefono ">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txt_eit_Telefono" runat="server" Text='<%# Bind("[Teléfono]") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_Telefono" runat="server" Text='<%# Eval("Teléfono") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Dirección">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txt_eit_direccion" runat="server" Text='<%# Bind("[Dirección]") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_Direccion" runat="server" Text='<%# Eval("Dirección") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Estado">
                                    <EditItemTemplate>
                                        <asp:CheckBox ID="cb_eit_Estado" runat="server" Checked='<%# Bind("Estado") %>' />
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:CheckBox ID="cb_it_Estado" runat="server" Checked='<%# Eval("Estado") %>' Enabled="false" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <EditRowStyle BackColor="#999999" />
                            <FooterStyle BackColor="#99CCCC" Font-Bold="True" ForeColor="#003399" />
                            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Center" />
                            <RowStyle BackColor="White" ForeColor="#003399" />
                            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                            <SortedAscendingCellStyle BackColor="#EDF6F6" />
                            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                            <SortedDescendingCellStyle BackColor="#D6DFDF" />
                            <SortedDescendingHeaderStyle BackColor="#002876" />
                        </asp:GridView>

                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td>
                        <asp:Label ID="lblExito" runat="server" Font-Bold="False"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
            <br />
           
        </div>
    </form>
</body>
</html>
