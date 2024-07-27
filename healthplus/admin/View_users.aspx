<%@ Page Title="" Language="C#" MasterPageFile="~/admin_master.master" AutoEventWireup="true" CodeFile="View_users.aspx.cs" Inherits="admin_View_users" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
         <center> <asp:Label ID="Label3" runat="server" Font-Size="X-Large" ForeColor="Red" Text="View Users"></asp:Label></center>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="u_id" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" HorizontalAlign="Center">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="u_id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="u_id" />
                <asp:BoundField DataField="u_fnm" HeaderText="Full Name" SortExpression="u_fnm" />
                <asp:BoundField DataField="u_unm" HeaderText="User Name" SortExpression="u_unm" />
                <asp:BoundField DataField="u_pwd" HeaderText="Password" SortExpression="u_pwd" />
                <asp:BoundField DataField="u_email" HeaderText="Email" SortExpression="u_email" />
                <asp:BoundField DataField="u_sql" HeaderText="Security Question" SortExpression="u_sql" />
                <asp:BoundField DataField="u_ans" HeaderText="Answer" SortExpression="u_ans" />
                <asp:CommandField ShowDeleteButton="True" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="Delete from registration where u_id=@u_id" SelectCommand="SELECT * FROM [Registration]">
            <DeleteParameters>
                <asp:ControlParameter ControlID="GridView1" Name="u_id" PropertyName="SelectedValue" />
            </DeleteParameters>
        </asp:SqlDataSource>
</asp:Content>

