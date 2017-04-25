<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Q1.aspx.cs" Inherits="Q1.Q1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Book Details</title>
    <script type="text/javascript">
        function ValidData()
        {
            var ret = true;
            var Book_Name = document.getElementById("t1").value;
            var Author = document.getElementById("t2").value;
            var Publisher = document.getElementById("t3").value;
            var Price = document.getElementById("t4").value;
            if(Book_Name=="")
            {
                document.getElementById("d1").style.color = "red";
                document.getElementById("d1").innerHTML = "Book Name is Required";
                ret = false;
            }
            else if (!isNaN(Book_Name))
            {
                document.getElementById("d1").style.color = "red";
                document.getElementById("d1").innerHTML = "Only Enter Characters";
                ret = false;
            }
            else
            {
                document.getElementById("d1").innerHTML = "";
            }
            if (Author == "")
            {
                document.getElementById("d2").style.color = "red";
                document.getElementById("d2").innerHTML = "Author is Required";
                ret = false;
            }
            else if (!isNaN(Author))
            {
                document.getElementById("d2").style.color = "red";
                document.getElementById("d2").innerHTML = "Only Enter Characters";
                ret = false;
            }
            else
            {
                document.getElementById("d2").innerHTML = "";
            }
            if (Publisher == "")
            {
                document.getElementById("d3").style.color = "red";
                document.getElementById("d3").innerHTML = "Publisher is Required";
                ret = false;
            }
            else if (!isNaN(Publisher))
            {
                document.getElementById("d3").style.color = "red";
                document.getElementById("d3").innerHTML = "Only Enter Characters";
                ret = false;
            }
            else
            {
                document.getElementById("d3").innerHTML = "";
            }
            if (Price == "")
            {
                document.getElementById("d4").style.color = "red";
                document.getElementById("d4").innerHTML = "Price is Required";
                ret = false;
            }
            else if (isNaN(Price))
            {
                document.getElementById("d4").style.color = "red";
                document.getElementById("d4").innerHTML = "Only Enter Number";
                ret = false;
            }
            else
            {
                document.getElementById("d4").innerHTML = "";
            }
            return ret;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <center>
            <div>
                <h2>Customer Details</h2>
            </div>
            <div>
                <table>
                    <tr>
                        <td>Book Name :-</td>
                        <td>
                            <asp:TextBox ID="t1" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="l1" runat="server" ForeColor="Red"></asp:Label>
                            <div id="d1"></div>
                        </td>
                    </tr>
                    <tr>
                        <td>Auhtor :-</td>
                        <td>
                            <asp:TextBox ID="t2" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="l2" runat="server" ForeColor="Red"></asp:Label>
                            <div id="d2"></div>
                        </td>
                    </tr>
                    <tr>
                        <td>Publisher :-</td>
                        <td>
                            <asp:TextBox ID="t3" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="l3" runat="server" ForeColor="Red"></asp:Label>
                            <div id="d3"></div>
                        </td>
                    </tr>
                    <tr>
                        <td>Price :-</td>
                        <td>
                            <asp:TextBox ID="t4" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="l4" runat="server" ForeColor="Red"></asp:Label>
                            <div id="d4"></div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td>
                            <asp:Button ID="b1" runat="server" Text="Submit" OnClick="b1_Click" OnClientClick="return ValidData()"/>
                            &nbsp;
                            <asp:Button ID="b2" runat="server" Text="Reset" OnClick="b2_Click"/>
                        </td>
                    </tr>
                </table>
            </div>
            <div style="padding-top:20px;padding-bottom:10px">
                <asp:Label ID="l5" runat="server" ForeColor="Green"></asp:Label>
            </div>
            <div style="padding-top:20px">
                <asp:GridView ID="g1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True" OnRowCancelingEdit="g1_RowCancelingEdit" OnRowCommand="g1_RowCommand" OnRowDeleting="g1_RowDeleting" OnRowEditing="g1_RowEditing" OnRowUpdating="g1_RowUpdating" OnPageIndexChanging="g1_PageIndexChanging" PageSize="5">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:TemplateField HeaderText="Book Name">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("Book_Name") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Book_Name") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Author">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("Author") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Author") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Publisher">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Eval("Publisher") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Publisher") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Price">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Eval("Price") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Edit">
                            <EditItemTemplate>
                                <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("id") %>' CommandName="Update">Update</asp:LinkButton>
                                <asp:LinkButton ID="LinkButton3" runat="server" CommandArgument='<%# Eval("id") %>' CommandName="Cancel">Cancel</asp:LinkButton>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("id") %>' CommandName="Edit">Edit</asp:LinkButton>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Delete">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton4" runat="server" CommandArgument='<%# Eval("id") %>' CommandName="Delete">Delete</asp:LinkButton>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />

                </asp:GridView>
            </div>
        </center>
    </form>
</body>
</html>
