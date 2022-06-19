<%@ Page Title="Approval Request" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Request.aspx.cs" Inherits="PMIS.Pages.Request" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   <style>
        body {
            padding-top: 50px;
            padding-bottom: 20px;
        }

        /* Wrapping element */
        /* Set some basic padding to keep content from hitting the edges */
        .body-content {
            padding-left: 15px;
            padding-right: 15px;
        }
        .container-fluid {
    padding-right: 15px;
    padding-left: 75px;
    margin-right: auto;
    margin-left: auto;
}
        /* Set widths on the form inputs since otherwise they're 100% wide */
        input,
        select,
        textarea {
            max-width: 280px;
        }


        /* Responsive: Portrait tablets and up */
        @media screen and (min-width: 768px) {
            .jumbotron {
                margin-top: 0px;

            }

            .body-content {
                padding: 0;
            }
        }
    </style>
        <div class="container-fluid">
            <h2><%: Title %>.</h2>
            <br />
            <h3>1. Personal Information</h3>
            <hr />
            <div class="row">
                    <div class="col-lg-12">
                        <div style="overflow-x: auto; width: 100%">
                            <asp:GridView ID="dgv" runat="server"
                                AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="User_ID" OnRowDeleting="dgv_RowDeleting"  OnRowCommand="dgv_RowCommand" HorizontalAlign="Center">
                                <FooterStyle BackColor="White" ForeColor="#000066" />
                                <HeaderStyle HorizontalAlign="Center" ForeColor="White" BackColor="#006699" Font-Bold="True" />
                                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                <RowStyle ForeColor="#000066" />
                                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#00547E" />
                                <Columns>
                                    <asp:TemplateField HeaderText="User ID" Visible="false">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("User_ID") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtID" Text='<%# Eval("User_ID") %>' runat="server" ReadOnly="true"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="P.No / O.NO">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("User_Pno") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtPno" Text='<%# Eval("User_Pno") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Name">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("User_firstName") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtName" Text='<%# Eval("User_firstName") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="User Role">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("User_Role") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtRole" Text='<%# Eval("User_Role") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    

                                    <asp:TemplateField HeaderText="Email">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("User_Email") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtEmail" Text='<%# Eval("User_Email") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Phone No">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("User_Phone") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtPhone" Text='<%# Eval("User_Phone") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="CNIC No">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("User_CNIC") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtCNIC" Text='<%# Eval("User_CNIC") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Gender">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("User_Gender") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtGender" Text='<%# Eval("User_Gender") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Enrollment Date">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("EnrollDate") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="EnrollDate" Text='<%# Eval("EnrollDate") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Marital Status">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Marital_Status") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtMariStatus" Text='<%# Eval("Marital_Status") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Address" InsertVisible="False">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("PresentAddress") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtAddress" Text='<%# Eval("PresentAddress") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Status" InsertVisible="False">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Status") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtStatus" Text='<%# Eval("Status") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Request">
                                        <ItemTemplate>
                                            <asp:Button runat="server" CommandName="Approve" ToolTip="Approve" CommandArgument='<%# Eval("User_ID") %>' ForeColor="White" CssClass="btn btn-info" Text="Approve" />
                                            <asp:Button runat="server" CommandName="Reject" ToolTip="Reject" CommandArgument='<%# Eval("User_ID") %>' ForeColor="White" CssClass="btn btn-warning" Text="Reject" />
                                            <asp:Button runat="server" CommandName="Delete" ToolTip="Delete" ForeColor="White" CssClass="btn btn-danger" Text="Delete" CommandArgument='<%# Eval("User_ID") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>

                            </asp:GridView>
                        </div>
                    </div>
                </div>

            <br />
            <h3>2. Family  Information</h3>
            <hr />
            <div class="row">
                    <div class="col-lg-12">
                        <div style="overflow-x: auto; width: 100%">
                            <asp:GridView ID="dgvFam" runat="server"
                                AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Pno" OnRowCommand="dgv_RowCommand1" OnRowDeleting="dgv_RowDeleting1" HorizontalAlign="Center">
                                <FooterStyle BackColor="White" ForeColor="#000066" />
                                <HeaderStyle HorizontalAlign="Center" ForeColor="White" BackColor="#006699" Font-Bold="True" />
                                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                <RowStyle ForeColor="#000066" />
                                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#00547E" />
                                <Columns>
                                    <asp:TemplateField HeaderText="P.No" >
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Pno") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtPno" Text='<%# Eval("Pno") %>' runat="server" ReadOnly="true"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Father Name">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Fa_Name") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtFa_Name" Text='<%# Eval("Fa_Name") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Nok Name">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Nok_Name") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="Nok_Name" Text='<%# Eval("Nok_Name") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Nok Relationship">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Nok_Relationship") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="Nok_Relationship" Text='<%# Eval("Nok_Relationship") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Nok  Address">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Nok_Address") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="Nok_Address" Text='<%# Eval("Nok_Address") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Nok Contact">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Nok_Contact") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="Nok_Contact" Text='<%# Eval("Nok_Contact") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Status" InsertVisible="False">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Status") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtStatus" Text='<%# Eval("Status") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="View Data" ControlStyle-Width="100%">
                                        <ItemTemplate>
                                            <asp:Button runat="server" CommandName="View" ToolTip="View" CommandArgument='<%# Eval("Pno") %>' ForeColor="White" CssClass="btn btn-info" Text="View" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>

                            </asp:GridView>
                        </div>
                    </div>
                </div>
            <br />
            <h3>3. Qualification and Training</h3>
            <hr />
            <div class="row">
                    <div class="col-lg-12">
                        <div style="overflow-x: auto; width: 100%">
                            <asp:GridView ID="dgvQualification" runat="server"
                                AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="User_Pno" OnRowCommand="dgv_RowCommand2" OnRowDeleting="dgv_RowDeleting2" HorizontalAlign="Center">
                                <FooterStyle BackColor="White" ForeColor="#000066" />
                                <HeaderStyle HorizontalAlign="Center" ForeColor="White" BackColor="#006699" Font-Bold="True" />
                                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                <RowStyle ForeColor="#000066" />
                                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#00547E" />
                                <Columns>
                                    <asp:TemplateField HeaderText="P.No" >
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("User_Pno") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtPno" Text='<%# Eval("User_Pno") %>' runat="server" ReadOnly="true"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Name">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("User_firstName") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtFa_Name" Text='<%# Eval("User_firstName") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                   
                                    <asp:TemplateField HeaderText="Cadre">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Cadre") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtMo_Name" Text='<%# Eval("Cadre") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>                          
                                    <asp:TemplateField HeaderText="Present Unit">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Unit") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtMo_e" Text='<%# Eval("Unit") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>  
                                    <asp:TemplateField HeaderText="Status" InsertVisible="False">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Status") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtStatus" Text='<%# Eval("Status") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="View Data" ControlStyle-Width="100%">
                                        <ItemTemplate>
                                            <asp:Button runat="server" CommandName="View" ToolTip="View" CommandArgument='<%# Eval("User_Pno") %>' ForeColor="White" CssClass="btn btn-info" Text="View" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>

                            </asp:GridView>
                        </div>
                    </div>
                </div>
            <h3>4. Transfer Record</h3>
            <hr />
            <div class="row">
                    <div class="col-lg-12">
                        <div style="overflow-x: auto; width: 100%">
                            <asp:GridView ID="dgvTransfer" runat="server"
                                AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="TransferID" OnRowCommand="dgv_RowCommand4" OnRowDeleting="dgv_RowDeleting4" HorizontalAlign="Center">
                                <FooterStyle BackColor="White" ForeColor="#000066" />
                                <HeaderStyle HorizontalAlign="Center" ForeColor="White" BackColor="#006699" Font-Bold="True" />
                                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                <RowStyle ForeColor="#000066" />
                                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#00547E" />
                                <Columns>
                                    <asp:TemplateField HeaderText="Sanction ID" Visible="false">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("TransferID") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtID" Text='<%# Eval("TransferID") %>' runat="server" ReadOnly="true"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="P.No" >
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Pno") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtPno" Text='<%# Eval("Pno") %>' runat="server" ReadOnly="true"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                   
                                    <asp:TemplateField HeaderText="Unit Served">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Unit_Served1") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtServed1" Text='<%# Eval("Unit_Served1") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="From Date">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("From_Date1") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtFrom_Date1" Text='<%# Eval("From_Date1") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="To Date" InsertVisible="False">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("To_Date1") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtTo_Date1" Text='<%# Eval("To_Date1") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Unit Served">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Unit_Served2") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtServed2" Text='<%# Eval("Unit_Served2") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="From Date">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("From_Date2") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtFrom_Date2" Text='<%# Eval("From_Date2") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="To Date" InsertVisible="False">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("To_Date2") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtTo_Date2" Text='<%# Eval("To_Date2") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Unit Served">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Unit_Served3") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtServed3" Text='<%# Eval("Unit_Served3") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="From Date">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("From_Date3") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtFrom_Date3" Text='<%# Eval("From_Date3") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="To Date" InsertVisible="False">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("To_Date3") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtTo_Date3" Text='<%# Eval("To_Date3") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Unit Served">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Unit_Served4") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtServed4" Text='<%# Eval("Unit_Served4") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="From Date">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("From_Date4") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtFrom_Date4" Text='<%# Eval("From_Date4") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="To Date" InsertVisible="False">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("To_Date4") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtTo_Date4" Text='<%# Eval("To_Date4") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Unit Served">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Unit_Served5") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtServed5" Text='<%# Eval("Unit_Served5") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="From Date">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("From_Date5") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtFrom_Date5" Text='<%# Eval("From_Date5") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="To Date" InsertVisible="False">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("To_Date5") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtTo_Date5" Text='<%# Eval("To_Date5") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Status" InsertVisible="False">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Status") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtStatus" Text='<%# Eval("Status") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Request">
                                        <ItemTemplate>
                                            <asp:Button runat="server" CommandName="Approve" ToolTip="Approve" CommandArgument='<%# Eval("TransferID") %>' ForeColor="White" CssClass="btn btn-info" Text="Approve" />
                                            <asp:Button runat="server" CommandName="Reject" ToolTip="Reject" CommandArgument='<%# Eval("TransferID") %>' ForeColor="White" CssClass="btn btn-warning" Text="Reject" />
                                            <asp:Button runat="server" CommandName="Delete" ToolTip="Delete" ForeColor="White" CssClass="btn btn-danger" Text="Delete" CommandArgument='<%# Eval("TransferID") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>

                            </asp:GridView>
                        </div>
                    </div>
                </div>
            <h3>5. Sanction</h3>
            <hr />
            <div class="row">
                    <div class="col-lg-12">
                        <div style="overflow-x: auto; width: 100%">
                            <asp:GridView ID="dgvSanction" runat="server"
                                AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="SanctionID" OnRowCommand="dgv_RowCommand3" OnRowDeleting="dgv_RowDeleting3" HorizontalAlign="Center">
                                <FooterStyle BackColor="White" ForeColor="#000066" />
                                <HeaderStyle HorizontalAlign="Center" ForeColor="White" BackColor="#006699" Font-Bold="True" />
                                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                <RowStyle ForeColor="#000066" />
                                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#00547E" />
                                <Columns>
                                    <asp:TemplateField HeaderText="Sanction ID" Visible="false">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("SanctionID") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtID" Text='<%# Eval("SanctionID") %>' runat="server" ReadOnly="true"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                   <asp:TemplateField HeaderText="P.No" >
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Pno") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtPno" Text='<%# Eval("Pno") %>' runat="server" ReadOnly="true"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Sanction">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Working_Sanction") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtsanction" Text='<%# Eval("Working_Sanction") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Cadre">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("latest_cadre") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtCadre" Text='<%# Eval("latest_cadre") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Status" InsertVisible="False">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Status") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtStatus" Text='<%# Eval("Status") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    
                                    <asp:TemplateField HeaderText="Request">
                                        <ItemTemplate>
                                            <asp:Button runat="server" CommandName="Approve" ToolTip="Approve" CommandArgument='<%# Eval("SanctionID") %>' ForeColor="White" CssClass="btn btn-info" Text="Approve" />
                                            <asp:Button runat="server" CommandName="Reject" ToolTip="Reject" CommandArgument='<%# Eval("SanctionID") %>' ForeColor="White" CssClass="btn btn-warning" Text="Reject" />
                                            <asp:Button runat="server" CommandName="Delete" ToolTip="Delete" ForeColor="White" CssClass="btn btn-danger" Text="Delete" CommandArgument='<%# Eval("SanctionID") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>

                            </asp:GridView>
                        </div>
                    </div>
                </div>
        </div>

</asp:Content>
