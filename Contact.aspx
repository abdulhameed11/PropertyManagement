<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <style>
       body {
        background:  url(city.jpg) no-repeat padding-box top border-box ;
    
       
        }</style>
    <script src="jquery-3.2.1.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("input").focus(function () {
                $(this).css("background-color", "black")
                $(this).css("color", "white")
            });

            $("input").blur(function () {

                $(this).css("background-color", "white")
                $(this).css("color", "black")
            });

            $("textarea").focus(function () {

                $(this).css("background-color", "black")
                $(this).css("color", "white")

            });

            $("textarea").blur(function () {

                $(this).css("background-color", "white")
                $(this).css("color", "black")
            });


        });

        </script>
        









</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">





    <div class="col-lg-8 col-lg-offset-2 col-md-8 col-md-offset-2 col-sm-8 col-sm-offset-2">
       
    
        <div class="form-group">
          <h2 style="color:orange" id="lblname"> Name </h2><input class="form-control " required="required"  style="height:50px; width:40%; border-radius:10px;font-size:large"/>
        </div>
        <div class="form-control"  style="height:100px">
            <h2 style="color:orange" id="lblemail">Email </h2> <input class="  " type="text" placeholder="abc@gmail.com" required="required" style="height: 50px; width: 40%; border-radius:10px; font-size:large"/>
        </div>
       <h2 style="color:orange" id="lblmsg">Message </h2>
            <textarea name="message" id="msg" style="min-height: 350px; width: 600px;  border-radius:10px;font-size:large"   class="" required="required" ></textarea>
      
        <div class="form-group">
            <button type="submit">SUBMIT REQUEST</button>
        </div>
    
    </div>














</asp:Content>

