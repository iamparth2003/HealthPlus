<%@ Page Title="" Language="C#" MasterPageFile="~/admin_master.master" AutoEventWireup="true" CodeFile="View_feedback.aspx.cs" Inherits="admin_ViewFeedback_" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <center> <asp:Label ID="Label3" runat="server" Font-Size="X-Large" ForeColor="Red" Text="View Feedback"></asp:Label>
       <br />
       <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="f_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" HorizontalAlign="Center">
           <AlternatingRowStyle BackColor="White" />
           <Columns>
               <asp:BoundField DataField="f_id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="f_id" />
               <asp:BoundField DataField="f_fnm" HeaderText="Full name" SortExpression="f_fnm" />
               <asp:BoundField DataField="f_comment" HeaderText="Comment" SortExpression="f_comment" />
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
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="Delete from Feedback where f_id=@f_id" SelectCommand="SELECT * FROM [Feedback]">
           <DeleteParameters>
               <asp:ControlParameter ControlID="GridView1" Name="f_id" PropertyName="SelectedValue" />
           </DeleteParameters>
       </asp:SqlDataSource>
    </center>
</asp:Content>

