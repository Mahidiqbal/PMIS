<%@ Page Title="Sanction/Borne" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Sanction.aspx.cs" Inherits="PMIS.Pages.Sanction" %>
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
       <section id="user" runat="server">
       <div class="row">
              
              <div class="col-md-6">
                  <label>Latest Cadre</label>
                  <asp:DropDownList ID="DDCadre" class="form-control" runat="server">
                      
                  </asp:DropDownList>
              </div>
              <div class="col-md-6">
                  <label>Working Sanction</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtWorkSanc" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
          </div>
       <asp:Label ID="lblMsg" ForeColor="Green" runat="server" Text=""></asp:Label>
       <br />
          <div class="col-12">
              <div class="form-group" >
                      <asp:Button ID="btnSubmit" runat="server" Text="Submit" class="btn btn-success" OnClick="btnSubmit_Click" Width="110px" />
                  </div>
              </div>
           </section>

       <section id="admin" runat="server">
           <div class="row">
              
              <div class="col-md-6">
                  <label>Latest Cadre</label>
                  <asp:DropDownList ID="DDCadre1" class="form-control" runat="server">
                      
                  </asp:DropDownList>
              </div>
               <div class="col-md-6">
               <label>Sanction</label>
                  <asp:DropDownList ID="ddSanction" class="form-control" runat="server">
                      
                  </asp:DropDownList>
                   </div>
               </div>
           <br />
           <div class="row">
               <div class="col-md-2">
                  <div class="form-group" >
                      <asp:Button ID="btnSearch" runat="server" Text="Submit" class="btn btn-info" OnClick="btnSearch_Click" Width="110px" />
                  </div>
                   </div>
           </div>
           <br />

           <div id="panel" style="height: 500px; background-color: White; padding: 10px; overflow: auto">  
    <asp:updatepanel id="UpdatePanelService" runat="server" updatemode="Conditional">  
            <ContentTemplate>  
                <asp:GridView ID="dgv" runat="server" CssClass="EU_DataTable" AutoGenerateColumns="false">  
                    <Columns>  
                        <asp:TemplateField ItemStyle-Width="30px" HeaderText="SR.NO">  
                            <ItemTemplate>  
                                <asp:Label ID="lblID" runat="server"  
                                  Text='<%#Eval("SanctionID")%>'></asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField>  
                        <asp:TemplateField ItemStyle-Width="600px" HeaderText="Working Sanction">  
                            <ItemTemplate>  
                                <asp:Label ID="lblService" runat="server" Text='<%#Eval("Working_Sanction")%>'></asp:Label>  
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtSanc" runat="server" Text='<%#Eval("Working_Sanction")%>'></asp:TextBox>  
                            </EditItemTemplate>  
                            <FooterTemplate>  
                                <asp:TextBox ID="txtSanc" runat="server"></asp:TextBox>  
                            </FooterTemplate>  
                        </asp:TemplateField>   
                       <asp:TemplateField ItemStyle-Width="600px" HeaderText="Cadre">  
                            <ItemTemplate>  
                                <asp:Label ID="lblCadre" runat="server" Text='<%#Eval("latest_cadre")%>'></asp:Label>  
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtCadre" runat="server" Text='<%#Eval("latest_cadre")%>'></asp:TextBox>  
                            </EditItemTemplate>  
                            <FooterTemplate>  
                                <asp:TextBox ID="txtCadre" runat="server"></asp:TextBox>  
                            </FooterTemplate>  
                        </asp:TemplateField> 
                    </Columns>  
                </asp:GridView>  
            </ContentTemplate>  
            <Triggers>  
            </Triggers>  
       </asp:updatepanel>  
</div>  
       </section>
       </div>
</asp:Content>
