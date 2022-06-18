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
                                AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="User_ID" OnRowCommand="dgv_RowCommand" HorizontalAlign="Center">
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

                                    <asp:TemplateField HeaderText="First Name">
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

                                    <asp:TemplateField HeaderText="P.No / O.NO">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("User_Pno") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtPno" Text='<%# Eval("User_Pno") %>' runat="server"></asp:TextBox>
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
                                AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Fam_ID" OnRowCommand="dgv_RowCommand1" HorizontalAlign="Center">
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
                                    <asp:TemplateField HeaderText="ID" Visible="false">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Fam_ID") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtID" Text='<%# Eval("Fam_ID") %>' runat="server" ReadOnly="true"></asp:TextBox>
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
                                    <asp:TemplateField HeaderText="Father Name">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Fa_Name") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtFa_Name" Text='<%# Eval("Fa_Name") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Father CNIC">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Fa_CNIC") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtFa_CNIC" Text='<%# Eval("Fa_CNIC") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Nationality">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Fa_Nationality") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtFa_Nationality" Text='<%# Eval("Fa_Nationality") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Occupation">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Fa_Occupation") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtFa_Occupation" Text='<%# Eval("Fa_Occupation") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Religion">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Fa_Religion") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtFa_Religion" Text='<%# Eval("Fa_Religion") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Alive">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Fa_Alive") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtFa_Alive" Text='<%# Eval("Fa_Alive") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Mother Name">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Mo_Name") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtMo_Name" Text='<%# Eval("Mo_Name") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="CNIC">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Mo_CNIC") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtMo_CNIC" Text='<%# Eval("Mo_CNIC") %>' runat="server"></asp:TextBox>
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
                                            <asp:Button runat="server" CommandName="Approve" ToolTip="Approve" CommandArgument='<%# Eval("Fam_ID") %>' ForeColor="White" CssClass="btn btn-info" Text="Approve" />
                                            <asp:Button runat="server" CommandName="Reject" ToolTip="Reject" CommandArgument='<%# Eval("Fam_ID") %>' ForeColor="White" CssClass="btn btn-warning" Text="Reject" />
                                            <asp:Button runat="server" CommandName="Delete" ToolTip="Delete" ForeColor="White" CssClass="btn btn-danger" Text="Delete" CommandArgument='<%# Eval("Fam_ID") %>' />
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
                                AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="QualificationID" OnRowCommand="dgv_RowCommand2" HorizontalAlign="Center">
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
                                    <asp:TemplateField HeaderText="ID" Visible="false">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("QualificationID") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtID" Text='<%# Eval("QualificationID") %>' runat="server" ReadOnly="true"></asp:TextBox>
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
                                    <asp:TemplateField HeaderText="Institute">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Institute1") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtFa_Name" Text='<%# Eval("Institute1") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Degree">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Degree1") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtDegree1" Text='<%# Eval("Degree1") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Percentage">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Percentage1") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtPercentage1" Text='<%# Eval("Percentage1") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Year">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Year1") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtYear" Text='<%# Eval("Year1") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Institute">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Institute2") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtFa_Name2" Text='<%# Eval("Institute2") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Degree">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Degree2") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtDegree2" Text='<%# Eval("Degree2") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Percentage">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Percentage2") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtPercentage2" Text='<%# Eval("Percentage2") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Year">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Year2") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtYear2" Text='<%# Eval("Year2") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField><asp:TemplateField HeaderText="Institute">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Institute3") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtFa_Name3" Text='<%# Eval("Institute3") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Degree">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Degree3") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtDegree3" Text='<%# Eval("Degree3") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Percentage">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Percentage3") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtPercentage3" Text='<%# Eval("Percentage3") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Year">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Year3") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtYear3" Text='<%# Eval("Year3") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField><asp:TemplateField HeaderText="Institute">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Institute4") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtFa_Name4" Text='<%# Eval("Institute4") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Degree">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Degree4") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtDegree4" Text='<%# Eval("Degree4") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Percentage">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Percentage4") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtPercentage4" Text='<%# Eval("Percentage4") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Year">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Year4") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtYear4" Text='<%# Eval("Year4") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Specialization">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Specialization1") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtSpecialization" Text='<%# Eval("Specialization1") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Status">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Status1") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtStatus1" Text='<%# Eval("Status1") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Specialization">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Specialization2") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtSpecialization2" Text='<%# Eval("Specialization2") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Status">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Status2") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtStatus2" Text='<%# Eval("Status2") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Specialization">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Specialization3") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtSpecialization3" Text='<%# Eval("Specialization3") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Status">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Status3") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtStatus3" Text='<%# Eval("Status3") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Specialization">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Specialization4") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtSpecialization4" Text='<%# Eval("Specialization4") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Status">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Status4") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtStatus4" Text='<%# Eval("Status4") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Course">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Course1") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtCourse1" Text='<%# Eval("Course1") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Institute">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Inst1") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtInst1" Text='<%# Eval("Inst1") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Course Status">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("CourseStatus1") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtCourseStatus1" Text='<%# Eval("CourseStatus1") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Course">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Course2") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtCourse2" Text='<%# Eval("Course2") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Institute">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Inst2") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtInst2" Text='<%# Eval("Inst2") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Course Status">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("CourseStatus2") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtCourseStatus2" Text='<%# Eval("CourseStatus2") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Course">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Course3") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtCourse3" Text='<%# Eval("Course3") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Institute">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Inst3") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtInst3" Text='<%# Eval("Inst3") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Course Status">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("CourseStatus3") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtCourseStatus3" Text='<%# Eval("CourseStatus3") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Course">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Course4") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtCourse4" Text='<%# Eval("Course4") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Institute">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Inst4") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtInst4" Text='<%# Eval("Inst4") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Course Status">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("CourseStatus4") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtCourseStatus4" Text='<%# Eval("CourseStatus4") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Cadre">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Cadre1") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtMo_Name" Text='<%# Eval("Cadre1") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Promotion Date">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Promotion_Date1") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtMo_CNIC" Text='<%# Eval("Promotion_Date1") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Cadre">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Cadre2") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtMo_Name2" Text='<%# Eval("Cadre2") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Promotion Date">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Promotion_Date2") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtMo_CNIC2" Text='<%# Eval("Promotion_Date2") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Cadre">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Cadre3") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtMo_Name3" Text='<%# Eval("Cadre3") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Promotion Date">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Promotion_Date3") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtMo_CNIC3" Text='<%# Eval("Promotion_Date3") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Cadre">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Cadre4") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtMo_Name4" Text='<%# Eval("Cadre4") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Promotion Date">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Promotion_Date4") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtMo_CNIC4" Text='<%# Eval("Promotion_Date4") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Cadre">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Cadre5") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtMo_Name5" Text='<%# Eval("Cadre5") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Promotion Date">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Promotion_Date5") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtMo_CNIC5" Text='<%# Eval("Promotion_Date5") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Cadre">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Cadre6") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtMo_Name6" Text='<%# Eval("Cadre6") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Promotion Date">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Promotion_Date6") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtMo_CNIC6" Text='<%# Eval("Promotion_Date6") %>' runat="server"></asp:TextBox>
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

                                    <asp:TemplateField HeaderText="Request" ItemStyle-Width="100%">
                                        <ItemTemplate>
                                            <asp:Button runat="server" CommandName="Approve" ToolTip="Approve" CommandArgument='<%# Eval("QualificationID") %>' ForeColor="White" CssClass="btn btn-info" Text="Approve" />
                                            <asp:Button runat="server" CommandName="Reject" ToolTip="Reject" CommandArgument='<%# Eval("QualificationID") %>' ForeColor="White" CssClass="btn btn-warning" Text="Reject" />
                                            <asp:Button runat="server" CommandName="Delete" ToolTip="Delete" ForeColor="White" CssClass="btn btn-danger" Text="Delete" CommandArgument='<%# Eval("QualificationID") %>' />
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
                                AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="TransferID" OnRowCommand="dgv_RowCommand4" HorizontalAlign="Center">
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
                                AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="SanctionID" OnRowCommand="dgv_RowCommand3" HorizontalAlign="Center">
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
