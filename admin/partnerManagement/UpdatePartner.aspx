<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdatePartner.aspx.cs" Inherits="TestShenzhenWebApplication.peshenzhen_admin.partnerManagement.UpdatePartner" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <ul>
            <li>Name(*) : <asp:TextBox runat="server" ID="tb_name" /></li>
            <li>Email(*) : <asp:TextBox runat="server" ID="tb_email" /></li>
            <li>Phone : <asp:TextBox runat="server" ID="tb_phone" /></li>
            <li>Company : <asp:DropDownList ID="dw_company" runat="server">
                   <%-- <asp:ListItem Text="text1" />
                    <asp:ListItem Text="text2" />--%>

                </asp:DropDownList></li>
            <li>Title : <asp:TextBox runat="server" ID="tb_title" /></li>


             <li> Create: <asp:TextBox runat="server" Enabled="false" ID="TextBox_createTime" /></li>
            <li> Update: <asp:TextBox runat="server" Enabled="false" ID="TextBox_updateTime" Height="38px" /></li>

            <li>If Registered <asp:CheckBox ID="cb_reg" Text="Registered" runat="server" /></li>
               <li>Lunch : <asp:CheckBox runat="server" ID="cb_lunch" /></li>
                <li>Tag : <asp:TextBox runat="server" ID="tb_tag" /></li>
            <li>
                <asp:Button Text="Update" OnClick="Button1_Click" runat="server" /></li>

            <li>  <asp:Label Text="result" ID="label_result"  runat="server" /></li>
        </ul>
    </div>
    </form>
</body>
</html>
