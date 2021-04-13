<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Index.master" AutoEventWireup="true" CodeFile="News.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="banner1 jarallax">
        <div class="container">
        </div>
    </div>

    <div class="services-breadcrumb">
        <div class="container">
            <ul>
                <li><a href="#">Home</a><i>|</i></li>
                <li>Add News</li>
            </ul>
        </div>
    </div>
    <table class="table table-bordered" align="centre">
        <tr>
            <td colspan="4">
                <b>
                    <br />
                    <span style="text-decoration: underline">Add News</span></b>
            </td>
        </tr>
        <tr>
            <td class="alignright">News
            </td>
            <td class="contact-form-aits">
                <asp:TextBox ID="txtbranch" runat="server"></asp:TextBox><asp:RequiredFieldValidator
                    ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtbranch"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>

            <td class="contact-form-aits" colspan="4">
                <asp:Button ID="Button1" runat="server" Text="Submit"
                    OnClick="Button1_Click" CssClass="btn btn-danger" />
            </td>
        </tr>
        <tr align="center">
            <td colspan="4">
                <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" CssClass="table table-bordered" CellPadding="4" ForeColor="Black" Width="309px"
                    BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                    <Columns>
                        <asp:BoundField DataField="Id" SortExpression="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" />
                        <asp:BoundField DataField="News" SortExpression="News" HeaderText="News" />
                       <asp:TemplateField HeaderText="Delete">
                            <ItemTemplate>
                                <asp:Button runat="server" ID="Delete" Text="Delete" CssClass="btn btn-danger" OnClick="Delete_Click" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:eclinicConnectionString %>" SelectCommand="SELECT * FROM [News]"></asp:SqlDataSource>

            </td>
        </tr>
    </table>
</asp:Content>

