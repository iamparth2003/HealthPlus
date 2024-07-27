<%@ Page Title="" Language="C#" MasterPageFile="~/admin_master.master" AutoEventWireup="true" CodeFile="View_category.aspx.cs" Inherits="admin_View_category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
   <center> <asp:Label ID="Label3" runat="server" Font-Size="X-Large" ForeColor="Red" Text="View Specialist"></asp:Label></center>
       <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="c_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" HorizontalAlign="Center">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:BoundField DataField="c_id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="c_id" />
        <asp:BoundField DataField="c_nm" HeaderText="Name" SortExpression="c_nm" />
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
    </Columns>
    <EditRowStyle BackColor="#2461BF" />
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#EFF3FB" />
    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#F5F7FB" />
    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
    <SortedDescendingCellStyle BackColor="#E9EBEF" />
    <SortedDescendingHeaderStyle BackColor="#4870BE" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [category]" DeleteCommand="Delete from category where c_id=@c_id" UpdateCommand="Update category set c_nm=@c_nm where c_id=@c_id">
    <DeleteParameters>
        <asp:ControlParameter ControlID="GridView1" Name="c_id" PropertyName="SelectedValue" />
    </DeleteParameters>
    <UpdateParameters>
        <asp:ControlParameter ControlID="GridView1" Name="c_nm" PropertyName="SelectedValue" />
        <asp:ControlParameter ControlID="GridView1" Name="c_id" PropertyName="SelectedValue" />
    </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

