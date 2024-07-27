<%@ Page Title="" Language="C#" MasterPageFile="~/admin_master.master" AutoEventWireup="true" CodeFile="view_doctor.aspx.cs" Inherits="admin_view_doctor" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <center>  <asp:Label ID="Label1" runat="server" Text="Add Doctors" Font-Size="X-Large" ForeColor="Red"></asp:Label></center>
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="d_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="50px" HorizontalAlign="Center" Width="300px">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
        <EditRowStyle BackColor="#2461BF" />
        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="d_id" HeaderText="d_id" InsertVisible="False" ReadOnly="True" SortExpression="d_id" />
            <asp:BoundField DataField="d_name" HeaderText="Name" SortExpression="d_name" />
            <asp:BoundField DataField="d_hospital_name" HeaderText="HospitalNname" SortExpression="d_hospital_name" />
            <asp:BoundField DataField="d_address" HeaderText="Address" SortExpression="d_address" />
            <asp:BoundField DataField="d_contactno" HeaderText="ContactNumber" SortExpression="d_contactno" />
            <asp:BoundField DataField="d_timing" HeaderText="Timing" SortExpression="d_timing" />
            <asp:BoundField DataField="d_c_id" HeaderText="Category" SortExpression="d_c_id" />
           
            <asp:BoundField DataField="d_avail" HeaderText="Availbale" SortExpression="d_avail" />
            <asp:BoundField DataField="d_qua" HeaderText="Qulafaction" SortExpression="d_qua" />
            <asp:BoundField DataField="d_exp" HeaderText="Experience" SortExpression="d_exp" />
            <asp:BoundField DataField="d_unm" HeaderText="Username" SortExpression="d_unm" />
            <asp:BoundField DataField="d_pass" HeaderText="Password" SortExpression="d_pass" />
            <asp:BoundField DataField="d_city" HeaderText="City" SortExpression="d_city" />
          
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Fields>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
    </asp:DetailsView>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="Delete from Doctor where d_id=@d_id" SelectCommand="SELECT * FROM [doctor]" UpdateCommand="Update doctor set d_name=@d_name,d_hospital_name=@d_hospital_name,d_address=@d_address,d_contactno=@d_contactno,d_timing=@d_timing,d_c_id=@d_c_id,d_image=@d_image,d_avail=@d_avail,d_qua=@d_qua,d_exp=@d_exp,d_unm=@d_unm,d_pass=@d_pass,d_city=@d_city where d_id =@d_id">
        <DeleteParameters>
            <asp:ControlParameter ControlID="DetailsView1" Name="d_id" PropertyName="SelectedValue" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:ControlParameter ControlID="DetailsView1" Name="d_name" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="DetailsView1" Name="d_hospital_name" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="DetailsView1" Name="d_address" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="DetailsView1" Name="d_contactno" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="DetailsView1" Name="d_timing" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="DetailsView1" Name="d_c_id" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="DetailsView1" Name="d_image" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="DetailsView1" Name="d_avail" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="DetailsView1" Name="d_qua" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="DetailsView1" Name="d_exp" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="DetailsView1" Name="d_unm" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="DetailsView1" Name="d_pass" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="DetailsView1" Name="d_city" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="DetailsView1" Name="d_id" PropertyName="SelectedValue" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>

