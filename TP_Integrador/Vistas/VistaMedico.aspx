<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VistaMedico.aspx.cs" Inherits="Vistas.VistaMedico" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style8 {
            width: 400px;
        }
        .auto-style10 {
            width: 158px;
        }
        .auto-style13 {
            width: 384px;
        }
        .auto-style14 {
            width: 245px;
        }
        .auto-style15 {
            width: 400px;
            height: 60px;
        }
        .auto-style16 {
            width: 158px;
            height: 60px;
        }
        .auto-style17 {
            width: 384px;
            height: 60px;
            margin-left: 40px;
        }
        .auto-style18 {
            width: 245px;
            height: 60px;
        }
        .auto-style19 {
            height: 60px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style8">
                        <asp:HyperLink ID="HLVolver" runat="server" NavigateUrl="~/Inicio.aspx" ForeColor="Blue">Volver al Inicio</asp:HyperLink>
                    </td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style13">
                        <asp:Label ID="lblTurnos" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Turnos"></asp:Label>
                    </td>
                    <td class="auto-style14">&nbsp;</td>
                    <td>
                        <asp:Label ID="lblNombreMedico" runat="server" Text="NombreMedico"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15"></td>
                    <td class="auto-style16">
                        <asp:Label ID="lblDniPaciente" runat="server" Text="DNI del paciente:"></asp:Label>
                    </td>
                    <td class="auto-style17">
                        <asp:TextBox ID="txtDNI" runat="server" ></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="rfvDni" runat="server" ControlToValidate="txtDNI" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="grupo1">Ingrese DNI</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="revDni0" runat="server" ControlToValidate="txtDNI" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="^\d{8}$" ValidationGroup="grupo1" Font-Bold="False">Debe ingresar 8 dígitos</asp:RegularExpressionValidator>
                                <asp:CompareValidator ID="cvDNI" runat="server" ControlToValidate="txtDNI" Display="Dynamic" ErrorMessage="CompareValidator" Font-Bold="False" ForeColor="Red" Operator="DataTypeCheck" Type="Integer" ValidationGroup="grupo1">Solo se permiten números</asp:CompareValidator>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnBuscar" runat="server" Text="Buscar" OnClick="btnBuscar_Click" Style="margin-right:20px" />
                        <asp:Button ID="btn_MostrarTodos" runat="server" Text="Mostrar Todos" OnClick="btn_MostrarTodos_Click" />
                    </td>
                    <td class="auto-style18">
&nbsp;&nbsp;
                        <asp:Label ID="lbl_mensaje" runat="server"></asp:Label>
                        </td>
                    <td class="auto-style19"></td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style10">
                        <asp:Label ID="lblFiltrar" runat="server" Text="Filtrar por:"></asp:Label>
                    </td>
                    <td class="auto-style13">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem Value="Todos">Todos</asp:ListItem>
                            <asp:ListItem>Presentes</asp:ListItem>
                            <asp:ListItem>Ausentes</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style14">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>      
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style13">
                        &nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <asp:Label ID="lbl_exito" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style13">
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" AutoGenerateEditButton="True" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" PageSize="6" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                            <Columns>
                                <asp:TemplateField HeaderText="Nombre">
                                    <EditItemTemplate>
                                        <asp:Label ID="lbl_eit_Nombre" runat="server" Text='<%# Bind("Nombre") %>'></asp:Label>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_it_Nombre" runat="server" Text='<%# Bind("nombre") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Apellido">
                                    <EditItemTemplate>
                                        <asp:Label ID="lbl_eit_Apellido" runat="server" Text='<%# Bind("apellido") %>'></asp:Label>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_it_Apellido" runat="server" Text='<%# Bind("Apellido") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Dia Del Turno">
                                    <EditItemTemplate>
                                        <asp:Label ID="lbl_eit_DiaTurno" runat="server" Text='<%# Bind("dia_turno") %>'></asp:Label>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_it_diaTurno" runat="server" Text='<%# Bind("dia_turno") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Hora del Turno">
                                    <EditItemTemplate>
                                        <asp:Label ID="lbl_eit_HoraTurno" runat="server" Text='<%# Bind("hora_turno") %>'></asp:Label>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_it_HoraTurno" runat="server" Text='<%# Bind("hora_turno") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Direccion">
                                    <EditItemTemplate>
                                        <asp:Label ID="lbl_eit_Direccion" runat="server" Text='<%# Bind("direccion") %>'></asp:Label>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_it_Direccion" runat="server" Text='<%# Bind("direccion") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="DNI">
                                    <EditItemTemplate>
                                        <asp:Label ID="lbl_eit_DNI" runat="server" Text='<%# Bind("DNI") %>'></asp:Label>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_it_DNI" runat="server" Text='<%# Bind("dni") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Sexo">
                                    <EditItemTemplate>
                                        <asp:Label ID="lbl_eit_Sexo" runat="server" Text='<%# Bind("Sexo") %>'></asp:Label>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_it_Sexo" runat="server" Text='<%# Bind("sexo") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Nacionalidad">
                                    <EditItemTemplate>
                                        <asp:Label ID="lbl_eit_Nacionalidad" runat="server" Text='<%# Bind("Nacionalidad") %>'></asp:Label>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_it_Nacionalidad" runat="server" Text='<%# Bind("nacionalidad") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Fecha De Nacimiento">
                                    <EditItemTemplate>
                                        <asp:Label ID="lbl_eit_FechaNacimiento" runat="server" Text='<%# Bind("Fecha_Nacimiento") %>'></asp:Label>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_it_fechaNacimiento" runat="server" Text='<%# Bind("fecha_nacimiento") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Correo Electronico">
                                    <EditItemTemplate>
                                        <asp:Label ID="lbl_eit_CorreoElectronico" runat="server" Text='<%# Bind("Correo_Electronico") %>'></asp:Label>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_it_CorreoElectronico" runat="server" Text='<%# Bind("correo_electronico") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Telefono">
                                    <EditItemTemplate>
                                        <asp:Label ID="lbl_eit_Telefono" runat="server" Text='<%# Bind("telefono") %>'></asp:Label>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_it_Telefono" runat="server" Text='<%# Bind("Telefono") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Observación">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txt_eit_observacion" runat="server" MaxLength="100" Text='<%# Bind("observacion") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_it_Observacion" runat="server" Text='<%# Bind("observacion") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Asistencia">
                                    <EditItemTemplate>
                                        <asp:CheckBox ID="ckBox_eit_Asistencia" runat="server" Checked='<%# Bind("Asistencia") %>' />
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:CheckBox ID="ckbox_it_Asistencia" runat="server" Checked='<%# Bind("asistencia") %>' Enabled="False" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Estado">
                                    <EditItemTemplate>
                                        <asp:CheckBox ID="ckBox_eit_Estado" runat="server" Checked='<%# Bind("estado") %>' />
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:CheckBox ID="ckBox_it_Estado" runat="server" Checked='<%# Bind("estado") %>' Enabled="False" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                            <RowStyle BackColor="White" ForeColor="#003399" />
                            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                            <SortedAscendingCellStyle BackColor="#EDF6F6" />
                            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                            <SortedDescendingCellStyle BackColor="#D6DFDF" />
                            <SortedDescendingHeaderStyle BackColor="#002876" />
                        </asp:GridView>
                    </td>
                    <td class="auto-style14">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
