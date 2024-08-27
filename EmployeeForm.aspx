<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeForm.aspx.cs" Inherits="EmployeeCRUD_BookxpertAssignment.EmployeeForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            border: 1px solid #008080;
            background-color: #C0C0C0;
        }
        .auto-style2 {
            width: 185px;
        }
        .auto-style3 {
            height: 28px;
        }
        .auto-style4 {
            width: 185px;
            height: 28px;
        }
        .auto-style5 {
            width: 302px;
        }
        .auto-style6 {
            height: 28px;
            width: 302px;
        }
        .auto-style7 {
            margin-bottom: 1px;
        }
        .auto-style8 {
            height: 45px;
        }
        .auto-style9 {
            width: 185px;
            height: 45px;
        }
        .auto-style10 {
            width: 302px;
            height: 45px;
        }
        .auto-style12 {
            margin-top: 0px;
        }
        .auto-style13 {
            margin-left: 400px;
            margin-top: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div style="font-size:x-large; background-color: #800000; font-style: italic; font-variant: normal; color: #FFFFFF;" align="center">Employee Form CRUD for BOOKXPERT</div>
        </div>
        <div>

            <table align="center" cellpadding="2" class="auto-style1">
                <tr>
                    <td class="auto-style8"></td>
                    <td class="auto-style9">
                        <asp:Label ID="Label1" runat="server" Text="EmpId"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:TextBox ID="txtId" runat="server" BackColor="White" BorderColor="Black" CssClass="auto-style12" Height="32px" Width="309px"></asp:TextBox>
                    </td>
                    <td class="auto-style8"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style2">EmpName</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtName" runat="server" BackColor="White" BorderColor="Maroon" CssClass="auto-style7" Height="32px" Width="310px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style2">Designation</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtDesig" runat="server" BackColor="White" BorderColor="Maroon" CssClass="auto-style7" Height="32px" Width="311px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style4">DOJ</td>
                    <td class="auto-style6">
                        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px" BorderWidth="1px">
                            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                            <NextPrevStyle Font-Size="8pt" ForeColor="#333333" Font-Bold="True" VerticalAlign="Bottom" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                            <TitleStyle BackColor="White" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" BorderColor="Black" BorderWidth="4px" />
                            <TodayDayStyle BackColor="#CCCCCC" />
                        </asp:Calendar>
                    </td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style4">State</td>
                    <td class="auto-style6">
                        <asp:DropDownList ID="DropDownList1" runat="server" Width="322px" BackColor="White">
                            <asp:ListItem>Select State</asp:ListItem>
                            <asp:ListItem>US</asp:ListItem>
                            <asp:ListItem>NY</asp:ListItem>
                            <asp:ListItem>MD</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style2">Gender</td>
                    <td class="auto-style5">
                        <asp:DropDownList ID="DropDownList2" runat="server" BackColor="White" Width="321px">
                            <asp:ListItem>Select Gender</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                            <asp:ListItem>Prefer Not to Say</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style2">Salary</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtSal" runat="server" BackColor="White" BorderColor="Maroon" CssClass="auto-style7" Height="32px" Width="316px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>

           

        </div>
        
    <div align="center">
        <asp:Button ID="Button1" runat="server" Text="Insert" BackColor="#33CC33" BorderColor="White" BorderStyle="Solid" CssClass="auto-style13" Height="39px" Width="219px" OnClick="Button1_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Edit" BackColor="#CC3399" BorderColor="White" BorderStyle="Dotted" CssClass="auto-style12" Height="39px" Width="208px" OnClick="Button2_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" Text="Delete" BackColor="Red" BorderColor="White" BorderStyle="Solid" CssClass="auto-style12" Height="39px" Width="145px" OnClick="Button3_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </div>
        <div align="center">
            <asp:Label ID="Label2" runat="server" Text="Label1" Visible="False"></asp:Label>
            <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EmployeeDataConnectionString %>" SelectCommand="SELECT * FROM [Employees]"></asp:SqlDataSource>
    </div>
        
    </form>
    
</body>
</html>
