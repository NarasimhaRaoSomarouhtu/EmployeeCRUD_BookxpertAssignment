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
        .auto-style5 {
            width: 242px;
        }
        .auto-style6 {
            height: 28px;
            width: 242px;
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
            width: 242px;
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
    <script type="text/javascript">
    $(document).ready(function () {
        $("#Button1").click(function (event) {
            var isValid = true;
            var errorMessage = "";

            var id = $("#<%=txtId.ClientID%>").val();
            var name = $("#<%=txtName.ClientID%>").val();
            var designation = $("#<%=txtDesig.ClientID%>").val();
            var dateOfJoining = $("#<%=Calendar1.ClientID%>").val();
            var salary = $("#<%=txtSal.ClientID%>").val();
            var gender = $("#<%=DropDownList2.ClientID%>").val();
            var state = $("#<%=DropDownList1.ClientID%>").val();

            
            if (id.trim() === "" || isNaN(id)) {
                isValid = false;
                errorMessage += "Valid Id is required.\n";
            }

            
            if (name.trim() === "") {
                isValid = false;
                errorMessage += "Name is required.\n";
            }

            
            if (designation.trim() === "") {
                isValid = false;
                errorMessage += "Designation is required.\n";
            }

            if (salary.trim() === "" || isNaN(salary)) {
                isValid = false;
                errorMessage += "Valid Salary is required.\n";
            }

            
            if (gender === "0") { 
                isValid = false;
                errorMessage += "Gender is required.\n";
            }

            
            if (state === "0") { 
                isValid = false;
                errorMessage += "State is required.\n";
            }

            if (!isValid) {
                alert(errorMessage);
                event.preventDefault(); 
            }
        });
    });
    </script>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div style="font-size:x-large; background-color:darkred; font-style: normal; font-variant: normal; color:azure;" align="center">Employee Form CRUD for BOOKXPERT</div>
        </div>
        <div>

            <table align="center" cellpadding="2" class="auto-style1">
                <tr>
                    <td class="auto-style8"></td>
                    <td class="auto-style9">
                        <asp:Label ID="Label1" runat="server" Text="EmpId" ForeColor="#0099FF" BackColor="White" BorderColor="White" BorderWidth="8px" Width="220px"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:TextBox ID="txtId" runat="server" BackColor="White" BorderColor="White" CssClass="auto-style12" Height="32px" Width="311px"></asp:TextBox>
                    </td>
                    <td class="auto-style8"></td>
                </tr>
                <tr>
                    <td class="auto-style8"></td>
                    <<td class="auto-style9">
                        <asp:Label ID="Label3" runat="server" Text="EmpName" ForeColor="#0099FF" BackColor="White" BorderColor="White" BorderWidth="8px" Width="220px"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:TextBox ID="txtName" runat="server" BackColor="White" BorderColor="White" CssClass="auto-style7" Height="32px" Width="311px"></asp:TextBox>
                    </td>
                    <td class="auto-style8"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style9">
                        <asp:Label ID="Label4" runat="server" Text="Designation" ForeColor="#0099FF" BackColor="White" BorderColor="White" BorderWidth="8px" Width="220px"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtDesig" runat="server" BackColor="White" BorderColor="White" CssClass="auto-style7" Height="32px" Width="311px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style9">
                        <asp:Label ID="Label6" runat="server" Text="DOJ" ForeColor="#0099FF" BackColor="White" BorderColor="White" BorderWidth="60px" Width="120px"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="320px" BorderWidth="1px">
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
                    <td class="auto-style9">
                        <asp:Label ID="Label7" runat="server" Text="State" ForeColor="#0099FF" BackColor="White" BorderColor="White" BorderWidth="8px" Width="220px"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:DropDownList ID="DropDownList1" runat="server" Width="320px" BackColor="White" ForeColor="#0099FF" Height="34px">
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
                    <td class="auto-style9">
                        <asp:Label ID="Label8" runat="server" Text="Gender" ForeColor="#0099FF" BackColor="White" BorderColor="White" BorderWidth="8px" Width="220px"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:DropDownList ID="DropDownList2" runat="server" BackColor="White" Width="320px" ForeColor="#0099FF" Height="34px">
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
                    <td class="auto-style9">
                        <asp:Label ID="Label5" runat="server" Text="Salary" ForeColor="#0099FF" BackColor="White" BorderColor="White" BorderWidth="8px" Width="220px"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtSal" runat="server" BackColor="White" BorderColor="White" CssClass="auto-style7" Height="32px" Width="311px"></asp:TextBox>
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
        <asp:Button ID="Button2" runat="server" Text="Edit" BackColor="#CC3399" BorderColor="White" BorderStyle="Solid" CssClass="auto-style12" Height="39px" Width="208px" OnClick="Button2_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" Text="Delete" BackColor="Red" BorderColor="White" BorderStyle="Solid" CssClass="auto-style12" Height="39px" Width="145px" OnClick="Button3_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
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
        <div align="center">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblTotalSalary" runat="server" BackColor="#3366CC" BorderColor="White" BorderWidth="8px" ForeColor="White"></asp:Label>

            </div>
    </form>
    
</body>
</html>
