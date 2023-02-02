﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EmployeePage.aspx.cs" Inherits="EmployeePage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
  
    
    </div>
    <center>
      <h1>פרטי עובד</h1>
     </center>
        
  <p> 
        <div dir=ltr>
            <asp:Button ID="ToMainBtn" runat="server" Text="בחזרה לעמוד הראשי" 
                onclick="ToMainBtn_Click" />
            </div>
        </p>
         <center>
      <p>
          
          <asp:Button ID="YesBtn" runat="server" Text="מחיקת עובד" style="margin:5px;" 
              BackColor="Red" onclick="YesBtn_Click"/>
          <asp:Button ID="NoBtn" runat="server" Text="ביטול מחיקת עובד" BackColor="#00CC66" 
              onclick="NoBtn_Click" />
          
      
      </p>



    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            AutoGenerateEditButton="True" onrowediting="GridView1_RowEditing" 
            onrowcancelingedit="GridView1_RowCancelingEdit" 
            onrowupdating="GridView1_RowUpdating" AutoGenerateDeleteButton="True" 
            onrowdeleting="GridView1_RowDeleting" BackColor="White" BorderColor="#336666" 
            BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Both"
            >
      <Columns>
            <asp:BoundField DataField="FullName" HeaderText="שם מלא">
                </asp:BoundField>

                 <asp:BoundField DataField="Id" HeaderText="תעדות זהות" ReadOnly=true />

                  <asp:BoundField DataField="Address" HeaderText="כתובת מגורים" />
                  
                <asp:BoundField DataField="DateOfBirth" HeaderText="תאריך לידה" DataFormatString = "{0:dd/MM/yyyy}" ReadOnly=true />

                <asp:BoundField DataField="PhoneNumber" HeaderText="מספר טלפון נייד" />

                <asp:BoundField DataField="FirstDay" HeaderText="תאריך העסקה" DataFormatString = "{0:dd/MM/yyyy}" ReadOnly=true />
               
                <asp:ImageField DataImageUrlField="Img" HeaderText="תמונת עובד" ControlStyle-Width="128px" ControlStyle-Height="128px" ReadOnly=true />
            </Columns>
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#487575" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#275353" />
    </asp:GridView>
   
    <div>
    <p>
    <center>
        <asp:Button ID="ShowDaysBtn" runat="server" Text="הצגת ימי העדרות" 
            onclick="ShowDaysBtn_Click" />
    </center>
    </p>
    </div>
    
    <div>
    <center>
    <p>
    
        <asp:GridView ID="GridViewDays" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" 
            CellPadding="4" GridLines="Horizontal" AutoGenerateDeleteButton="True" 
            onrowdeleting="GridViewDays_RowDeleting">
        <Columns>
        <asp:BoundField DataField="DateAway" HeaderText ="תאריך העדרות" DataFormatString = "{0:yyyy/MM/dd}" />
        <asp:BoundField DataField="Kind" HeaderText="סוג העדרות" />
        </Columns>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />
        </asp:GridView>
    <br />
     <asp:Label ID="DaysLeft" runat="server" Text="ימי חופש שנותרו"></asp:Label>
    </p>
       
    </div>
   <p>
    <asp:Button ID="AddDay" runat="server" Text="הוספת יום העדרות" 
           onclick="AddDay_Click" />
    </p>
        <asp:TextBox ID="DateAway" runat="server" type="date" ></asp:TextBox>

      
        <br />
        
       
        <p>
        <asp:DropDownList ID="Kind" runat="server">
            <asp:ListItem>חופשה</asp:ListItem>
            <asp:ListItem>מחלה</asp:ListItem>
        </asp:DropDownList>
        </p>
      
        <p>
         <asp:Button ID="Submit" runat="server" Text="הוסף יום העדרות" 
                onclick="Submit_Click" />
         </p>
     </center>
   
    </form>

    </body>
</html>
