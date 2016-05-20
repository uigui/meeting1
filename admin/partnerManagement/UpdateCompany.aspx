<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateCompany.aspx.cs" Inherits="TestShenzhenWebApplication.peshenzhen_admin.partnerManagement.UpdateCompany" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <ul>
            <li>
     Company Name:   <asp:TextBox ID="TextBox_companyName" runat="server"></asp:TextBox>
            </li>

            <li>
     Company Type: <asp:DropDownList ID="DropDownList_companyType" runat="server">
            <asp:ListItem Text="Industry" />
            <asp:ListItem Text="Maker" />
            <asp:ListItem Text="CTE partners" />
            <asp:ListItem Text="Silicon" />
            <asp:ListItem Text="MSFT" />
            <asp:ListItem Text="Others" />
         
        </asp:DropDownList> 
           </li>
            <li>
                <asp:DropDownList ID="DropDownList_eventID"  runat="server">
                    <asp:ListItem Text="TestShenzhenNov" Value="2" />
                </asp:DropDownList>
            </li>

            <li> Update: <asp:TextBox runat="server" Enabled="false" ID="TextBox_createTime" /></li>
            <li> Create: <asp:TextBox runat="server" Enabled="false" ID="TextBox_updateTime" /></li>

        </ul>
      

        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Update" />
    
        <asp:Label ID="Label_result" runat="server" Text="Label"></asp:Label>
    <a href="ManageCompany.aspx">返回</a>
    </div>
    </form>
</body>
</html>
