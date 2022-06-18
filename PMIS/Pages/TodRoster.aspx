<%@ Page Title="Tod Roster" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TodRoster.aspx.cs" Inherits="PMIS.Pages.Promotion" %>
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
    padding-left: -75px;
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
        <hr />
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-4"></div>
              <div class="col-md-4">
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtSearch" runat="server" placeholder="Search Present Station" AutoPostBack="true" OnTextChanged="txtSearch_TextChanged"></asp:TextBox>
                  </div>
              </div>
            </div>
        <div id="panel5" style="height: 500px; background-color: White; padding: 10px; overflow: auto">  
    <asp:updatepanel id="UpdatePanel4" runat="server" updatemode="Conditional">  
            <ContentTemplate>  
                <asp:GridView ID="dgv" runat="server" CssClass="EU_DataTable" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="100%">  
                           <Columns>
                              
                                     <asp:TemplateField HeaderText="P.No">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("User_Pno") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtPno" Text='<%# Eval("User_Pno") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Name">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Name") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtEmail" Text='<%# Eval("Name") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="CNIC">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("User_CNIC") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtPhone" Text='<%# Eval("User_CNIC") %>' runat="server"></asp:TextBox>
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
                                    <asp:TemplateField HeaderText="Cadre">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Cadre") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtDOB" Text='<%# Eval("Cadre") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Unit">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Unit") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtMariStatus" Text='<%# Eval("Unit") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                               <asp:TemplateField HeaderText="Years Served">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Sta_Date") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtServedYear" Text='<%# Eval("StaDate") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                    </Columns>  
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>  
            </ContentTemplate>  
            <Triggers>  
            </Triggers>  
       </asp:updatepanel>  
</div> 
        </div>
</asp:Content>
