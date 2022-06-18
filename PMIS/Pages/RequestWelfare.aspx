<%@ Page Title="Request & Welfare" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RequestWelfare.aspx.cs" Inherits="PMIS.Pages.Reports" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   <style>
        body {
            padding-top: 50px;
            padding-bottom: 20px;
        }

        /* Wrapping element */
        /* Set some basic padding to keep content from hitting the edges */
        .body-content {
            padding-left: -25px;
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
        select
         {
            max-width: 280px;
        }
        textarea{
            max-width:1095px;
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
       <div class="row" id="button" runat="server">
            <div class="col-sm-4"></div>
            <div class="col-sm-4"">
                <asp:Button ID="btnNOC" type="submit" runat="server" Width="200px" Height="50px" class="btn btn-primary" OnClick="btnNOC_Click" Text="NOC’s" />
            </div>
            <div class="col-sm-4"></div>
        </div>
       <br />
       <section id="data" runat="server">
           <div class="container-fluid">
            <div class="row">
              <div class="col-md-4">
                  <label>P.No</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtPno" runat="server" placeholder=""></asp:TextBox>
                  </div>
              </div>
                <div class="col-md-4">
                  <label>Name</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtName" runat="server" placeholder=""></asp:TextBox>
                  </div>
              </div>
                <div class="col-md-2">
                  <label>Gender</label>
                  <asp:DropDownList ID="ddGender" class="form-control" runat="server">
                      <asp:ListItem Text="Select" Value="Select" Selected="True" />
                      <asp:ListItem Text="Male" Value="Male" />
                      <asp:ListItem Text="Female" Value="Female" />
                  </asp:DropDownList>
              </div>
                <div class="col-md-1">
                  <label>Age</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtAge" runat="server" placeholder=""></asp:TextBox>
                  </div>
              </div>
            </div>
           <div class="row">
               <div class="col-md-4">
                  <label>CNIC</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtCNIC" runat="server" placeholder=""></asp:TextBox>
                  </div>
                   </div>
               <div class="col-md-4">
                  <label>Cadre</label>
                  <asp:DropDownList ID="ddAdminCadre" class="form-control" runat="server">
                      <asp:ListItem Text="Select" Value="" Selected="True" />
                      <asp:ListItem Text="LDC" Value="LDC" />
                      <asp:ListItem Text="UDC" Value="UDC" />
                      <asp:ListItem Text="Head Clerk" Value="Head Clerk" />
                      <asp:ListItem Text="Junior Superident" Value="Junior Superident" />
                      <asp:ListItem Text="Senior Superident" Value="Senior Superident" />
                  </asp:DropDownList>
                   </div>
               <div class="col-md-4">
                  <label>Present Unit</label>
                  <asp:DropDownList ID="DDUnitServed1" class="form-control" runat="server">
                      <asp:ListItem Text="Select" Value="" Selected="True" />
                      <asp:ListItem Text="PNS RAHBAR" Value="PNS RAHBAR" />
                      <asp:ListItem Text="PNS JAUHAR" Value="PNS JAUHAR" />
                      <asp:ListItem Text="PNS BAHADUR" Value="PNS BAHADUR" />
                      <asp:ListItem Text="PNCA" Value="PNCA" />
                      <asp:ListItem Text="PNSL" Value="PNSL" />
                      </asp:DropDownList>
                   </div>
           </div>
               
           <div class="row" >
               <div class="col-md-12">
               <label>Reason for NOC</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtReason" runat="server" TextMode="MultiLine" placeholder=""></asp:TextBox>
                  </div>
                   </div>
           </div>
               
               <div class="row">
                   <center>
                   <h3><b>To Whom It May Concern</b></h3>
                       </center>
                   <br />
                   <h5>1. This is to certify that <asp:TextBox ID="txtDash1" style="border:0; border-bottom:solid 1px; outline:none
" runat="server"></asp:TextBox> is a <asp:TextBox ID="txtDash2" style="border:0; border-bottom:solid 1px; outline:none" runat="server"></asp:TextBox> in Pakistan Navy and is presently serving at <asp:TextBox ID="txtDash3" style="border:0; border-bottom:solid 1px; outline:none" runat="server"></asp:TextBox> unit.</h5>
                   <h5>2. Your cooperation in this regard will be highly appreciated.</h5>
               </div>
               <br />
                <asp:Label ID="lblMsg" ForeColor="Green" runat="server" Text=""></asp:Label>
          <div class="col">
              <div class="form-group" >
                      <asp:Button ID="btnEdit" runat="server" Text="Submit" class="btn btn-success" OnClick="btnEdit_Click" Width="110px" />
                     
                      <asp:Button ID="btnBack" runat="server" Text="Back" class="btn btn-info" OnClick="btnBack_Click" Width="110px" />
                  </div>
              </div>
               </div>
       </section>

       <section id="Admin" runat="server">
           <div class="row">
                    <div class="col-lg-12">
                        <div style="overflow-x: auto; width: 100%">
                            <asp:GridView ID="dgv" runat="server"
                                AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Pno"  OnRowCommand="dgv_RowCommand" HorizontalAlign="Center">
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
                                    <asp:TemplateField ItemStyle-Width="600px" HeaderText="P.NO">  
                            <ItemTemplate>  
                                <asp:Label ID="pno" runat="server" Text='<%#Eval("Pno")%>'></asp:Label>  
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:TextBox ID="pno" runat="server" Text='<%#Eval("Pno")%>'></asp:TextBox>  
                            </EditItemTemplate>  
                        </asp:TemplateField>   
                        <asp:TemplateField ItemStyle-Width="600px" HeaderText="Name">  
                            <ItemTemplate>  
                                <asp:Label ID="lblName" runat="server" Text='<%#Eval("Name")%>'></asp:Label>  
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtName" runat="server" Text='<%#Eval("Name")%>'></asp:TextBox>  
                            </EditItemTemplate>  
                        </asp:TemplateField>   
                                     <asp:TemplateField ItemStyle-Width="600px" HeaderText="Gender">  
                            <ItemTemplate>  
                                <asp:Label  runat="server" Text='<%#Eval("Gender")%>'></asp:Label>  
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:TextBox ID="Gender" runat="server" Text='<%#Eval("Gender")%>'></asp:TextBox>  
                            </EditItemTemplate>  
                        </asp:TemplateField>   
                         <asp:TemplateField ItemStyle-Width="600px" HeaderText="Age">  
                            <ItemTemplate>  
                                <asp:Label  runat="server" Text='<%#Eval("Age")%>'></asp:Label>  
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:TextBox ID="Age" runat="server" Text='<%#Eval("Age")%>'></asp:TextBox>  
                            </EditItemTemplate>  
                        </asp:TemplateField>   
                                     <asp:TemplateField ItemStyle-Width="600px" HeaderText="CNIC">  
                            <ItemTemplate>  
                                <asp:Label runat="server" Text='<%#Eval("CNIC")%>'></asp:Label>  
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:TextBox ID="CNIC" runat="server" Text='<%#Eval("CNIC")%>'></asp:TextBox>  
                            </EditItemTemplate>  
                        </asp:TemplateField>   
                       <asp:TemplateField ItemStyle-Width="600px" HeaderText="Cadre">  
                            <ItemTemplate>  
                                <asp:Label ID="lblCadre" runat="server" Text='<%#Eval("Cadre")%>'></asp:Label>  
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtCadre" runat="server" Text='<%#Eval("Cadre")%>'></asp:TextBox>  
                            </EditItemTemplate>
                        </asp:TemplateField> 
                        <asp:TemplateField ItemStyle-Width="600px" HeaderText="Present Station">  
                            <ItemTemplate>  
                                <asp:Label ID="lblCSta" runat="server" Text='<%#Eval("Unit")%>'></asp:Label>  
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtCaSta" runat="server" Text='<%#Eval("Unit")%>'></asp:TextBox>  
                            </EditItemTemplate>
                        </asp:TemplateField> 
                        
                        <asp:TemplateField ItemStyle-Width="600px" HeaderText="Reason for NOC">  
                            <ItemTemplate>  
                                <asp:Label ID="lblDu" runat="server" Text='<%#Eval("Reason")%>'></asp:Label>  
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtDu" runat="server" Text='<%#Eval("Reason")%>'></asp:TextBox>  
                            </EditItemTemplate>
                        </asp:TemplateField> 
                                    <asp:TemplateField ItemStyle-Width="600px" HeaderText="Date">  
                            <ItemTemplate>  
                                <asp:Label ID="lblSta" runat="server" Text='<%#Eval("Date")%>'></asp:Label>  
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtSta" runat="server" Text='<%#Eval("Date")%>'></asp:TextBox>  
                            </EditItemTemplate>
                        </asp:TemplateField> 
                        
                        <asp:TemplateField ItemStyle-Width="600px" HeaderText="Status">  
                            <ItemTemplate>  
                                <asp:Label ID="lblStatus" runat="server" Text='<%#Eval("Status")%>'></asp:Label>  
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtStatus" runat="server" Text='<%#Eval("Status")%>'></asp:TextBox>  
                            </EditItemTemplate>
                        </asp:TemplateField> 

                                    <asp:TemplateField HeaderText="Request" ControlStyle-Width="100px">
                                        <ItemTemplate>
                                            <asp:Button runat="server" CommandName="Approve" ToolTip="Approve" CommandArgument='<%# Eval("Pno") %>' ForeColor="White" CssClass="btn btn-info" Text="Approve" />
                                            <asp:Button runat="server" CommandName="Reject" ToolTip="Reject" CommandArgument='<%# Eval("Pno") %>' ForeColor="White" CssClass="btn btn-warning" Text="Reject" />
                                            <asp:Button runat="server" CommandName="Delete" ToolTip="Delete" ForeColor="White" CssClass="btn btn-danger" Text="Delete" CommandArgument='<%# Eval("Pno") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                </Columns>

                            </asp:GridView>
                        </div>
                    </div>
                </div>
       </section>
       </div>
</asp:Content>
