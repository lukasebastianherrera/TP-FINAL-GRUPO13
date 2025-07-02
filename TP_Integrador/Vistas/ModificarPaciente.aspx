<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModificarPaciente.aspx.cs" Inherits="Vistas.ModificarPaciente" %>

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
            width: 352px;
        }
        .auto-style13 {
            width: 171px;
        }
        .auto-style14 {
            width: 400px;
            height: 34px;
        }
        .auto-style15 {
            width: 171px;
            height: 34px;
        }
        .auto-style16 {
            width: 352px;
            height: 34px;
        }
        .auto-style17 {
            height: 34px;
        }
        .auto-style18 {
            width: 294px;
        }
        .auto-style19 {
            width: 415px;
        }
        .auto-style20 {
            width: 415px;
            height: 34px;
        }
    </style>
    </head>
<body>
    <form id="form1" runat="server">
        <div>
           
            <table class="auto-style1">
                <tr>
                    <td class="auto-style10">
            <asp:HyperLink ID="hlVolver" runat="server" Font-Size="Medium" NavigateUrl="~/ABMLPacientes.aspx" Font-Bold="False" ForeColor="Blue">Volver</asp:HyperLink>
                    </td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style19">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style12">
                        <asp:Label ID="lblModificarPaciente" runat="server" Font-Size="XX-Large" Text="Modificar Paciente"></asp:Label>
                    </td>
                    <td class="auto-style19">
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="lblAdministrador" runat="server" Text="NombreAdmin" Font-Bold="False" Font-Size="Medium"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style19">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14"></td>
                    <td class="auto-style15">
                        <asp:Label ID="lblDNI" runat="server" Font-Bold="False" Font-Size="Medium" Text="DNI del paciente:"></asp:Label>
                    </td>
                    <td class="auto-style16">
             <asp:TextBox ID="txtDni" runat="server" placeholder = " Ingresar DNI"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator 
                        ID="rfvDni" 
                        runat="server" 
                        ControlToValidate="txtDni" 
                        ErrorMessage="El DNI es obligatorio" 
                        ForeColor="Red" 
                        Display="Dynamic" 
                        SetFocusOnError="True" Font-Bold="False" ValidationGroup="grupo1" />
                    
                    
                                    <asp:RegularExpressionValidator ID="revDni" runat="server" ControlToValidate="txtDni" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="^\d{8}$" ValidationGroup="grupo1" Font-Bold="False">Debe ingresar 8 dígitos</asp:RegularExpressionValidator>
                   
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
                    </td>
                    <td class="auto-style20">
             <asp:Button ID="btnBuscarPaciente" runat="server" Text="Buscar" OnClick="btnBuscarPaciente_Click" ValidationGroup="grupo1" />  
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnCancelar" runat="server" OnClick="btnCancelar_Click1" Text="Cancelar" />
                        <asp:Label ID="lblMensaje" runat="server" Font-Bold="False"></asp:Label>
                    </td>
                    <td class="auto-style17"></td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style19">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                </table>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style18">&nbsp;</td>
                    <td>

             <asp:GridView ID="gvPacientes0" runat="server" Height="69px" Width="335px" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" AutoGenerateEditButton="True" OnRowCancelingEdit="gvPacientes0_RowCancelingEdit" OnRowEditing="gvPacientes0_RowEditing" OnRowUpdating="gvPacientes0_RowUpdating">
                 <Columns>
                     <asp:TemplateField HeaderText="ID Paciente">
                         <EditItemTemplate>
                             <asp:Label ID="lbl_eit_IdPaciente" runat="server" Text='<%# Bind("id_paciente") %>'></asp:Label>
                         </EditItemTemplate>
                         <ItemTemplate>
                             <asp:Label ID="lbl_IdPaciente" runat="server" Text='<%# Bind("id_paciente") %>'></asp:Label>
                         </ItemTemplate>
                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="Nombre">
                         <EditItemTemplate>
                             <asp:TextBox ID="txt_eit_Nombre" runat="server" Text='<%# Bind("nombre") %>'></asp:TextBox>
                         </EditItemTemplate>
                         <ItemTemplate>
                             <asp:Label ID="lbl_Nombre" runat="server" Text='<%# Bind("nombre") %>'></asp:Label>
                         </ItemTemplate>
                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="Apellido">
                         <EditItemTemplate>
                             <asp:TextBox ID="txt_eit_Apellido" runat="server" Text='<%# Bind("apellido") %>'></asp:TextBox>
                         </EditItemTemplate>
                         <ItemTemplate>
                             <asp:Label ID="lbl_Apellido" runat="server" Text='<%# Bind("apellido") %>'></asp:Label>
                         </ItemTemplate>
                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="DNI">
                         <EditItemTemplate>
                             <asp:Label ID="lbl_eit_DNI" runat="server" Text='<%# Bind("dni") %>'></asp:Label>
                         </EditItemTemplate>
                         <ItemTemplate>
                             <asp:Label ID="lbl_DNI" runat="server" Text='<%# Bind("dni") %>'></asp:Label>
                         </ItemTemplate>
                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="Sexo">
                         <EditItemTemplate>
                             <asp:TextBox ID="txt_eit_Sexo" runat="server" Text='<%# Bind("Sexo") %>'></asp:TextBox>
                         </EditItemTemplate>
                         <ItemTemplate>
                             <asp:Label ID="lbl_Sexo" runat="server" Text='<%# Bind("sexo") %>'></asp:Label>
                         </ItemTemplate>
                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="Nacionalidad">
                         <EditItemTemplate>
                             <asp:TextBox ID="txt_eit_Nacionalidad" runat="server" Text='<%# Bind("nacionalidad") %>'></asp:TextBox>
                         </EditItemTemplate>
                         <ItemTemplate>
                             <asp:Label ID="lbl_Nacionalidad" runat="server" Text='<%# Bind("nacionalidad") %>'></asp:Label>
                         </ItemTemplate>
                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="Fecha Nacimiento">
                         <EditItemTemplate>
                             <asp:TextBox ID="txt_eit_FechaNacimiento" runat="server" Text='<%# Bind("fecha_nacimiento") %>'></asp:TextBox>
                         </EditItemTemplate>
                         <ItemTemplate>
                             <asp:Label ID="lbl_FechaNacimiento" runat="server" Text='<%# Bind("fecha_nacimiento") %>'></asp:Label>
                         </ItemTemplate>
                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="Correo Electronico">
                         <EditItemTemplate>
                             <asp:TextBox ID="txt_eit_CorreoElectronico" runat="server" Text='<%# Bind("correo_electronico") %>'></asp:TextBox>
                         </EditItemTemplate>
                         <ItemTemplate>
                             <asp:Label ID="lbl_CorreoElectronico" runat="server" Text='<%# Bind("correo_electronico") %>'></asp:Label>
                         </ItemTemplate>
                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="Telefono ">
                         <EditItemTemplate>
                             <asp:TextBox ID="txt_eit_Telefono" runat="server" Text='<%# Bind("telefono") %>'></asp:TextBox>
                         </EditItemTemplate>
                         <ItemTemplate>
                             <asp:Label ID="lbl_Telefono" runat="server" Text='<%# Bind("telefono") %>'></asp:Label>
                         </ItemTemplate>
                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="Direccion">
                         <EditItemTemplate>
                             <asp:TextBox ID="txt_eit_direccion" runat="server" Text='<%# Bind("direccion") %>'></asp:TextBox>
                         </EditItemTemplate>
                         <ItemTemplate>
                             <asp:Label ID="lbl_Direccion" runat="server" Text='<%# Bind("direccion") %>'></asp:Label>
                         </ItemTemplate>
                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="Estado">
                         <EditItemTemplate>
                             <asp:CheckBox ID="cb_eit_estado" runat="server" Checked='<%# Bind("estado") %>' />
                         </EditItemTemplate>
                         <ItemTemplate>
                             <asp:CheckBox ID="cb_Estado" runat="server" Checked='<%# Bind("estado") %>' Enabled="False" />
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
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style18">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style18">&nbsp;</td>
                    <td>
                        <asp:Label ID="lbl_Exito" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
            <br />
            <br />
           
        </div>
    </form>
</body>
</html>
