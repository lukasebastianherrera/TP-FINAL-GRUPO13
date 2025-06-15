<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="Vistas.Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 352px;
            margin-bottom: 41px;
        }
        .auto-style4 {
            height: 50px;
        }
        .auto-style5 {
            width: 175px;
            height: 50px;
        }
        .auto-style6 {
            width: 318px;
            height: 50px;
        }
        .auto-style10 {
            height: 70px;
        }
        .auto-style11 {
            width: 175px;
            height: 70px;
        }
        .auto-style12 {
            width: 318px;
            height: 70px;
            font-weight: bold;
            font-size: 35pt;
        }
        .auto-style13 {
            height: 20px;
        }
        .auto-style14 {
            width: 175px;
            height: 20px;
        }
        .auto-style15 {
            width: 318px;
            height: 20px;
        }
        .auto-style16 {
            height: 30px;
        }
        .auto-style17 {
            width: 175px;
            height: 30px;
        }
        .auto-style18 {
            width: 318px;
            height: 30px;
        }
        .auto-style19 {
            height: 30px;
            width: 447px;
        }
        .auto-style20 {
            height: 70px;
            width: 447px;
        }
        .auto-style21 {
            height: 20px;
            width: 447px;
        }
        .auto-style22 {
            height: 50px;
            width: 447px;
        }
        .auto-style23 {
            height: 381px;
        }
        .auto-style24 {
            height: 30px;
            width: 400px;
        }
        .auto-style25 {
            height: 70px;
            width: 400px;
        }
        .auto-style26 {
            height: 20px;
            width: 400px;
        }
        .auto-style27 {
            height: 50px;
            width: 400px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style23">
        <div>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style24"></td>
                        <td class="auto-style17"></td>
                        <td class="auto-style18"></td>
                        <td class="auto-style19"></td>
                        <td class="auto-style16"></td>
                    </tr>
                    <tr>
                        <td class="auto-style25"></td>
                        <td class="auto-style11"></td>
                        <td class="auto-style12">
                            <asp:Label ID="lblBienvenido" runat="server" Font-Size="XX-Large" Text="Bienvenido"></asp:Label>
                        </td>
                        <td class="auto-style20"></td>
                        <td class="auto-style10"></td>
                    </tr>
                    <tr>
                        <td class="auto-style26"></td>
                        <td class="auto-style14"></td>
                        <td class="auto-style15">Por favor, inicie sesión:</td>
                        <td class="auto-style21"></td>
                        <td class="auto-style13"></td>
                    </tr>
                    <tr>
                        <td class="auto-style27"></td>
                        <td class="auto-style5">Usuario:</td>
                        <td class="auto-style6">
                            <asp:TextBox ID="txtb_usuario" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style22">&nbsp;</td>
                        <td class="auto-style4"></td>
                    </tr>
                    <tr>
                        <td class="auto-style27"></td>
                        <td class="auto-style5">Contraseña:</td>
                        <td class="auto-style6">
                            <asp:TextBox ID="txtb_contrasenia" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style22"></td>
                        <td class="auto-style4"></td>
                    </tr>
                    <tr>
                        <td class="auto-style27"></td>
                        <td class="auto-style5">&nbsp;</td>
                        <td class="auto-style6">
                            <asp:DropDownList ID="DropDownList1" runat="server">
                                <asp:ListItem Value="0">Seleccione tipo de usuario</asp:ListItem>
                                <asp:ListItem Value="1">Medico/a</asp:ListItem>
                                <asp:ListItem Value="2">Administrador/a</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="auto-style22">
                            &nbsp;</td>
                        <td class="auto-style4"></td>
                    </tr>
                     <tr>
     <td class="auto-style24"></td>
     <td class="auto-style17"></td>
     <td class="auto-style18">
                            <asp:Button ID="btn_iniciar" runat="server" Font-Bold="False" Text="Iniciar Sesión" />
                         </td>
     <td class="auto-style19"></td>
     <td class="auto-style16"></td>
 </tr>
                </table>
        </div>
    </form>

</body>
</html>
