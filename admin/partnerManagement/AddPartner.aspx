<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddPartner.aspx.cs" Inherits="TestShenzhenWebApplication.peshenzhen_admin.partnerManagement.AddPartner" %>

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
                <li>Lunch : <asp:CheckBox runat="server" ID="cb_lunch" /></li>
                <li>Tag : <asp:TextBox runat="server" ID="tb_tag" /></li>
            <li>
                <asp:Button Text="Add" OnClick="Unnamed_Click" runat="server" /></li>

            <li>  <asp:Label Text="result" ID="label_result"  runat="server" />   <a href="Default.aspx">Back</a></li>
        </ul>


    </div>
    </form>
</body>
</html>
