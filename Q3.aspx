<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Q3.aspx.cs" Inherits="Q3.Q3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <center>
             <div>
                <h2>Order Details</h2>
             </div>
             <div>
                 <asp:GridView ID="g1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                     <AlternatingRowStyle BackColor="#DCDCDC" />
                     <Columns>
                         <asp:TemplateField HeaderText="Customer ID">
                             <ItemTemplate>
                                 <asp:Label ID="Label1" runat="server" Text='<%# Eval("Cust_id") %>'></asp:Label>
                             </ItemTemplate>
                             <ItemStyle HorizontalAlign="Center" />
                         </asp:TemplateField>
                         <asp:TemplateField HeaderText="First Name">
                             <ItemTemplate>
                                 <asp:Label ID="Label2" runat="server" Text='<%# Eval("FirstName") %>'></asp:Label>
                             </ItemTemplate>
                             <ItemStyle HorizontalAlign="Center" />
                         </asp:TemplateField>
                         <asp:TemplateField HeaderText="Last Name">
                             <ItemTemplate>
                                 <asp:Label ID="Label3" runat="server" Text='<%# Eval("LastName") %>'></asp:Label>
                             </ItemTemplate>
                             <ItemStyle HorizontalAlign="Center" />
                         </asp:TemplateField>
                         <asp:TemplateField HeaderText="City">
                             <ItemTemplate>
                                 <asp:Label ID="Label4" runat="server" Text='<%# Eval("City") %>'></asp:Label>
                             </ItemTemplate>
                             <ItemStyle HorizontalAlign="Center" />
                         </asp:TemplateField>
                         <asp:TemplateField HeaderText="Country">
                             <ItemTemplate>
                                 <asp:Label ID="Label5" runat="server" Text='<%# Eval("Country") %>'></asp:Label>
                             </ItemTemplate>
                             <ItemStyle HorizontalAlign="Center" />
                         </asp:TemplateField>
                         <asp:TemplateField HeaderText="Phone No.">
                             <ItemTemplate>
                                 <asp:Label ID="Label6" runat="server" Text='<%# Eval("Phone") %>'></asp:Label>
                             </ItemTemplate>
                             <ItemStyle HorizontalAlign="Center" />
                         </asp:TemplateField>
                         <asp:TemplateField HeaderText="Order Number">
                             <ItemTemplate>
                                 <asp:Label ID="Label7" runat="server" Text='<%# Eval("OrderNumber") %>'></asp:Label>
                             </ItemTemplate>
                             <ItemStyle HorizontalAlign="Center" />
                         </asp:TemplateField>
                         <asp:TemplateField HeaderText="Order Date">
                             <ItemTemplate>
                                 <asp:Label ID="Label8" runat="server" Text='<%# Eval("OrderDate") %>'></asp:Label>
                             </ItemTemplate>
                             <ItemStyle HorizontalAlign="Center" />
                         </asp:TemplateField>
                         <asp:TemplateField HeaderText="Total Amount">
                             <ItemTemplate>
                                 <asp:Label ID="Label9" runat="server" Text='<%# Eval("Total_Amount") %>'></asp:Label>
                             </ItemTemplate>
                             <ItemStyle HorizontalAlign="Center" />
                         </asp:TemplateField>
                     </Columns>
                     <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                     <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                     <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                     <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                     <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                     <SortedAscendingCellStyle BackColor="#F1F1F1" />
                     <SortedAscendingHeaderStyle BackColor="#0000A9" />
                     <SortedDescendingCellStyle BackColor="#CAC9C9" />
                     <SortedDescendingHeaderStyle BackColor="#000065" />

                 </asp:GridView>
             </div>
        </center>
    </form>
</body>
</html>
