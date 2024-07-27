<%@ Page Title="" Language="C#" MasterPageFile="~/admin_master.master" AutoEventWireup="true" CodeFile="view_doctors.aspx.cs" Inherits="upload_view_doctors" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label3" runat="server" Font-Size="X-Large" ForeColor="Red" Text="View Doctor Details"></asp:Label>
    <br />
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="d_id" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="d_id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="d_id" />
            <asp:BoundField DataField="d_name" HeaderText="Name" SortExpression="d_name" />
            <asp:BoundField DataField="d_hospital_name" HeaderText="Hospital Name" SortExpression="d_hospital_name" />
            <asp:BoundField DataField="d_address" HeaderText="Address" SortExpression="d_address" />
            <asp:BoundField DataField="d_contactno" HeaderText="Contactno" SortExpression="d_contactno" />
            <asp:BoundField DataField="d_timing" HeaderText="Timing" SortExpression="d_timing" />
            <asp:BoundField DataField="d_c_id" HeaderText="Category" SortExpression="d_c_id" />
            <asp:BoundField DataField="d_image" HeaderText="Image" SortExpression="d_image" />
            <asp:BoundField DataField="d_avail" HeaderText="Available" SortExpression="d_avail" />
            <asp:BoundField DataField="d_qua" HeaderText="Qualification" SortExpression="d_qua" />
            <asp:BoundField DataField="d_exp" HeaderText="Experience" SortExpression="d_exp" />
            <asp:BoundField DataField="d_unm" HeaderText="Username" SortExpression="d_unm" />
            <asp:BoundField DataField="d_pass" HeaderText="Password" SortExpression="d_pass" />
            <asp:BoundField DataField="d_city" HeaderText="City" SortExpression="d_city" />
            <asp:BoundField DataField="d_app" HeaderText="A.0pp" SortExpression="d_app" Visible="False" />
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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [doctor]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
</asp:Content>

