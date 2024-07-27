<%@ Page Title="" Language="C#" MasterPageFile="~/doctor.master" AutoEventWireup="true" CodeFile="Details.aspx.cs" Inherits="user_Details" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <center><asp:Label ID="Label2" runat="server" Text="Doctors details" Font-Size="X-Large" ForeColor="Red"></asp:Label>
        <br />
        <br />
        <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" DataKeyNames="d_id" DataSourceID="SqlDataSource2" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="d_id" HeaderText="d_id" InsertVisible="False" ReadOnly="True" SortExpression="d_id" Visible="False" />
                <asp:TemplateField SortExpression="d_image">
                    <EditItemTemplate>
                        <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Bind("d_image") %>' />
                    <asp:FileUpload ID="FileUpload1" runat="server" FileName='<%# Bind("d_image") %>' />
                    </EditItemTemplate>                    
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("d_image") %>'></asp:Label>
                        <img src='<%# "../upload/" +  Eval("d_image") %>' height="150x" width="250px" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowEditButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [d_id], [d_image] FROM [doctor] WHERE ([d_id] = @d_id)" UpdateCommand="update doctor set d_image=@d_image where d_id=@d_id">
            <SelectParameters>
                <asp:SessionParameter Name="d_id" SessionField="d_id" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:ControlParameter ControlID="DetailsView2" Name="d_image" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="DetailsView2" Name="d_id" PropertyName="SelectedValue" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </center>
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="250px" AutoGenerateRows="False" DataKeyNames="d_id" DataSourceID="SqlDataSource1" HorizontalAlign="Center" CellPadding="4" ForeColor="#333333" GridLines="None" CssClass="panel">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
        <EditRowStyle BackColor="#999999" />
        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="d_id" HeaderText="Id" SortExpression="d_id" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="d_name" HeaderText="Name" SortExpression="d_name" />
            <asp:BoundField DataField="d_hospital_name" HeaderText="Hospital name" SortExpression="d_hospital_name" />
            <asp:BoundField DataField="c_nm" HeaderText="Speciality" SortExpression="c_nm" />
            <asp:BoundField DataField="d_address" HeaderText="Address" SortExpression="d_address" />
            <asp:BoundField DataField="d_contactno" HeaderText="Contactno" SortExpression="d_contactno" />
            <asp:BoundField DataField="d_timing" HeaderText="Timing" SortExpression="d_timing" />
            <asp:BoundField DataField="d_c_id" HeaderText="d_c_id" Visible="false" SortExpression="d_c_id" />
            <asp:BoundField DataField="d_image" HeaderText="d_image" Visible="false" SortExpression="d_image" />
            <asp:BoundField DataField="d_avail" HeaderText="Available" SortExpression="d_avail" />
            <asp:BoundField DataField="d_qua" HeaderText="Qualification" SortExpression="d_qua" />
            <asp:BoundField DataField="d_exp" HeaderText="Experience" SortExpression="d_exp" />
            <asp:BoundField DataField="d_unm" HeaderText="Username" SortExpression="d_unm" />
            <asp:BoundField DataField="d_pass" HeaderText="Password" SortExpression="d_pass" />
            <asp:BoundField DataField="d_city" HeaderText="City" SortExpression="d_city" />      
            <asp:CommandField ShowEditButton="True" />
        </Fields>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:DetailsView>
  <center>  </center>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT doctor.d_address, doctor.d_contactno, doctor.d_timing, doctor.d_c_id, doctor.d_image, doctor.d_avail, doctor.d_qua, doctor.d_exp, doctor.d_unm, doctor.d_pass, doctor.d_city, doctor.d_app, doctor.d_hospital_name, doctor.d_name, doctor.d_id, category.c_nm FROM doctor INNER JOIN category ON doctor.d_c_id = category.c_id where doctor.d_id=@d_id" UpdateCommand="UPDATE doctor SET d_name =@d_name, d_hospital_name =@d_hospital_name, d_address =@d_address, d_contactno =@d_contactno, d_timing =@d_timing, d_c_id =@d_c_id,  d_unm =@d_unm, d_exp =@d_exp, d_qua =@d_qua, d_avail =@d_avail, d_pass =@d_pass">
        <SelectParameters>
            <asp:SessionParameter Name="d_id" SessionField="d_id" />
        </SelectParameters>
        <UpdateParameters>
            <asp:ControlParameter ControlID="DetailsView1" Name="d_name" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="DetailsView1" Name="d_hospital_name" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="DetailsView1" Name="d_address" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="DetailsView1" Name="d_contactno" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="DetailsView1" Name="d_timing" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="DetailsView1" Name="d_c_id" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="DetailsView1" Name="d_unm" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="DetailsView1" Name="d_exp" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="DetailsView1" Name="d_qua" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="DetailsView1" Name="d_avail" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="DetailsView1" Name="d_pass" PropertyName="SelectedValue" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>

