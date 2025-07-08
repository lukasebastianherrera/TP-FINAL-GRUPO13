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
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style10">
                        <asp:Label ID="lblDniPaciente" runat="server" Text="DNI del paciente:"></asp:Label>
                    </td>
                    <td class="auto-style13">
                        <asp:TextBox ID="txtDNI" runat="server" ></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="rfvDni" runat="server" ControlToValidate="txtDNI" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="grupo1">Ingrese DNI</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="revDni0" runat="server" ControlToValidate="txtDNI" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="^\d{8}$" ValidationGroup="grupo1" Font-Bold="False">Debe ingresar 8 dígitos</asp:RegularExpressionValidator>
                                <asp:CompareValidator ID="cvDNI" runat="server" ControlToValidate="txtDNI" Display="Dynamic" ErrorMessage="CompareValidator" Font-Bold="False" ForeColor="Red" Operator="DataTypeCheck" Type="Integer" ValidationGroup="grupo1">Solo se permiten números</asp:CompareValidator>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnBuscar" runat="server" Text="Buscar" />
                    </td>
                    <td class="auto-style14">
&nbsp;&nbsp;
                        </td>
                    <td>&nbsp;</td>
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
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style13">
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" AutoGenerateEditButton="True" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" PageSize="6">
                            <Columns>
                                <asp:TemplateField HeaderText="Nombre">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_it_Nombre" runat="server" Text='<%# Bind("nombre") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Apellido">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_it_Apellido" runat="server" Text='<%# Bind("Apellido") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Dia Del Turno">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_it_diaTurno" runat="server" Text='<%# Bind("dia_turno") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Hora del Turno">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_it_HoraTurno" runat="server" Text='<%# Bind("hora_turno") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Observación ">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_it_Observacion" runat="server" Text='<%# Bind("observacion") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="DNI">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_it_DNI" runat="server" Text='<%# Bind("dni") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Sexo">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_it_Sexo" runat="server" Text='<%# Bind("sexo") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Nacionalidad">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_it_Nacionalidad" runat="server" Text='<%# Bind("nacionalidad") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Fecha De Nacimiento">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_it_fechaNacimiento" runat="server" Text='<%# Bind("fecha_nacimiento") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Correo Electronico">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_it_CorreoElectronico" runat="server" Text='<%# Bind("correo_electronico") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Telefono">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_it_Telefono" runat="server" Text='<%# Bind("Telefono") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Direccion">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_it_Direccion" runat="server" Text='<%# Bind("direccion") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Asistencia">
                                    <ItemTemplate>
                                        <asp:CheckBox ID="ckbox_it_Asistencia" runat="server" Checked='<%# Bind("asistencia") %>' Enabled="False" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Estado">
                                    <ItemTemplate>
                                        <asp:CheckBox ID="ckBox_it_Estado" runat="server" Checked='<%# Bind("estado") %>' />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
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
