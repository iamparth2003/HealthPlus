<%@ Page Title="" Language="C#" MasterPageFile="~/user_Master.master" AutoEventWireup="true" CodeFile="Details.aspx.cs" Inherits="user_Details" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <center><asp:Label ID="Label2" runat="server" Text="Doctors details" Font-Size="X-Large" ForeColor="Red"></asp:Label></center>
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="250px" AutoGenerateRows="False" DataKeyNames="d_id" DataSourceID="SqlDataSource1" HorizontalAlign="Center" CellPadding="4" ForeColor="#333333" GridLines="None" CssClass="panel">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
        <EditRowStyle BackColor="#999999" />
        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="d_id" HeaderText="d_id" InsertVisible="False" ReadOnly="True" SortExpression="d_id" Visible="false" />
            <asp:BoundField DataField="d_name" HeaderText="Name" SortExpression="d_name" />
            <asp:BoundField DataField="d_hospital_name" HeaderText="Hospital Name" SortExpression="d_hospital_name" />
            <asp:BoundField DataField="d_address" HeaderText="Address" SortExpression="d_address" />
            <asp:BoundField DataField="d_contactno" HeaderText="Contactno" SortExpression="d_contactno" />
            <asp:BoundField DataField="d_timing" HeaderText="Timing" SortExpression="d_timing" />
            <asp:BoundField DataField="d_c_id" HeaderText="d_c_id" SortExpression="d_c_id" Visible="False" />
           
            <asp:BoundField DataField="d_avail" HeaderText="Availble" SortExpression="d_avail" />
            <asp:BoundField DataField="d_qua" HeaderText="Qualifaction" SortExpression="d_qua" />
            <asp:BoundField DataField="d_exp" HeaderText="Experience" SortExpression="d_exp" />
          
            <asp:BoundField DataField="d_city" HeaderText="City" SortExpression="d_city" />
      
        </Fields>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:DetailsView>
  <center>  <asp:Button ID="Button1" runat="server" Text="Take and Appintment" OnClick="Button1_Click" /></center>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [doctor] WHERE ([d_id] = @d_id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="d_id" QueryStringField="id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>

