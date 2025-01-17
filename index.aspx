﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<!doctype HTML>
<html>

<head>
    <meta charset="UTF-8">
    <meta content="width=device-width,initial-scale=1" name="viewport">
    <link rel="stylesheet" href="node_modules/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/material.blue-deep_purple.min.css" />
    <link href="css/css.css" rel="stylesheet">
    <link href="fonts/fontello/css/fontello.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/bootstrap-offset-right.css">
    <link rel="stylesheet" href="css/style.css">
    <title>Supporting Multi data store application in Attribute Based Encryptionl </title>
    <style>
        .mdl-textfield__label {
            margin-bottom: 0;
            color: #d7dbdc;
            font-weight: normal;
        }
        
        .mdl-textfield--floating-label.is-focused .mdl-textfield__label,
        .mdl-textfield--floating-label.is-dirty .mdl-textfield__label {
            text-transform: uppercase
        }
        
        .has-feedback label~.form-control-feedback {
            top: 15px;
        }
        
        .mdl-textfield {
            width: 100%;
        }
        
        .mdl-checkbox__label {
            cursor: text;
            font-size: 13px;
            float: left;
            color: #b0b3b4;
            font-weight: normal;
        }
        
        .mdl-checkbox__box-outline {
            border: 1px solid #b0b3b4;
        }
        
        .mdl-textfield__input {
            border: none;
            border-bottom: 1px solid rgba(0, 0, 0, .12);
            display: block;
            font-size: 16px;
            margin: 0;
            padding: 4px 0;
            width: 100%;
            background: 0 0;
            text-align: left;
            color: inherit;
            font-weight: bold;
        }
        
        .mdl-switch__label {
            float: left;
            font-weight: normal;
            color: #b0b3b4;
            font-size: 14px;
        }
    </style>
</head>

<body>
    <div class="container">
        <div class="center-block">
         
            <div class="col-lg-4 col-lg-offset-1 col-md-4 col-md-offset-1 col-sm-12 col-xs-12 no-padding" style="z-index:1">
                <!-- Slider -->

                <div class="mlt-carousel">
                    <div id="myCarousel" class="carousel slide carousel-fade" data-ride="carousel">
                        <div class="carousel-inner" role="listbox">
                            <div class="item active">
                                <img class="img-responsive center-block" src="img/step1.png" alt="step1">
                                <div class="item-content">
                                    <h3>Supporting Multi data store application</h3>
                                    <p>Without Decryption</p>
                                    <p>Similar Data only Showed</p>
                                
                                </div>
                            </div>
                            <div class="item">
                                <img class="img-responsive center-block" src="img/step2.png" alt="step2">
                                <div class="item-content">
                                    <h3>Attribute Based Encryption</h3>
                                    <p>The Authorized Data owner can access file</p>
                                    <p>Data Owner - Doctor</p>
                                </div>
                            </div>
                            <div class="item">
                                <img class="img-responsive center-block" src="img/step3.png" alt="step3">
                                <div class="item-content">
                                    <h3>Personal Health care Record</h3>
                                    <p>Store the patient data securely</p>
                                    <p>Encrypt keyword and document</p>
                                  
                                </div>
                            </div>
                        </div>
                        <!-- Indicators -->
                        <ol class="carousel-indicators">
                            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                            <li data-target="#myCarousel" data-slide-to="1"></li>
                            <li data-target="#myCarousel" data-slide-to="2"></li>
                        </ol>
                    </div>
                    <!--mlt-carousel-->
                </div>
                <!-- Slider -->
            </div>
            <!-- Login -->

            <div class="col-lg-6 col-lg-offset-right-1 col-md-6 col-md-offset-right-1 col-sm-12 col-xs-12 no-padding">
                <div class="mlt-content">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#register" data-toggle="tab">Register</a></li>
                        <li><a href="#login" data-toggle="tab">Login</a></li>
                    </ul>
                    <div id="myTabContent" class="tab-content">
                        <div class="tab-pane fade in active" id="register">
                            <!--register form-->

                             <form id="form2" runat="server">
                                <div class="col-lg-10 col-lg-offset-1 col-lg-offset-right-1 col-md-10 col-md-offset-1 col-md-offset-right-1 col-sm-12 col-xs-12 pull-right ">

                                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-group has-feedback">
                                        <asp:TextBox ID="TextBox1" class="mdl-textfield__input" runat="server" >
                                        </asp:TextBox>
                                        
                                     
                                        <label class="mdl-textfield__label " for="fullName ">Full Name</label>
                                        <span class="form-control-feedback" aria-hidden="true" id="fname1"></span>
                                    </div>
                                    <!--
                                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                        <input class="mdl-textfield__input " type="text" id="fullName ">
                                        <label class="mdl-textfield__label " for="fullName ">Full Name</label>
                                    </div>-->
                                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label ">
                                       <asp:TextBox ID="TextBox2" class="mdl-textfield__input" runat="server" >
                                        </asp:TextBox>
                                      
                                        <label class="mdl-textfield__label " for="emailAddress ">Email Address</label>
                                    </div>

                                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label ">
                                      
                                         <asp:TextBox ID="TextBox3" class="mdl-textfield__input" runat="server" >
                                        </asp:TextBox>
                                         <label class="mdl-textfield__label " for="mobileNumber ">Mobile Number</label>
                                        <span class="mdl-textfield__error ">Input is not a number!</span>
                                    </div>

                                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label ">
                                        <asp:TextBox ID="TextBox4" class="mdl-textfield__input" runat="server" TextMode="Password">
                                        </asp:TextBox>
                                        <label class="mdl-textfield__label " for="SetPassword ">Password</label>
                                    </div>
                                     <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label ">
                                       
    <asp:DropDownList ID="DropDownList1" class="mdl-textfield__input" runat="server">
        <asp:ListItem>Dataowner</asp:ListItem>
        <asp:ListItem>Data user</asp:ListItem>

    </asp:DropDownList> 
    
  
                                    
                                    </div>

                                     <asp:Button ID="Button1" runat="server" class="btn lt-register-btn" 
                                        Text="Register" onclick="Button1_Click" />
                          
                                </div>
                           
                            <!--register form-->
                        </div>
                        <div class="tab-pane fade" id="login">
                            <!--login form-->
                          

                                <div class="col-lg-10 col-lg-offset-1 col-lg-offset-right-1 col-md-10 col-md-offset-1 col-md-offset-right-1 col-sm-12 col-xs-12 pull-right ">
                                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                       <asp:TextBox ID="TextBox5" class="mdl-textfield__input" runat="server" >
                                        </asp:TextBox>
                                        <label class="mdl-textfield__label" for="emailAddress">Email Address</label>
                                    </div>
                                </div>

                                <div class="col-lg-10 col-lg-offset-1 col-lg-offset-right-1 col-md-10 col-md-offset-1 col-md-offset-right-1 col-sm-12 col-xs-12 pull-right ">
                                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                         <asp:TextBox ID="TextBox6" class="mdl-textfield__input" runat="server" TextMode="Password">
                                        </asp:TextBox>
                                        <label class="mdl-textfield__label" for="password">Password</label>
                                    </div>

                                </div>
                                <div class="col-lg-10 col-lg-offset-1 col-lg-offset-right-1 col-md-10 col-md-offset-1 col-md-offset-right-1 col-sm-12 col-xs-12 pull-right ">
                              
                                   <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label ">
                                       
    <asp:DropDownList ID="DropDownList2" class="mdl-textfield__input" runat="server">
        <asp:ListItem>Dataowner</asp:ListItem>
        <asp:ListItem>Data user</asp:ListItem>
        <asp:ListItem>Attribute Center</asp:ListItem>
        <asp:ListItem>Token Generator</asp:ListItem>
    </asp:DropDownList> 
    
  
                                    
                                    </div>
                                    </div>

                               

                                <div class="col-lg-10 col-lg-offset-1 col-lg-offset-right-1 col-md-10 col-md-offset-1 col-md-offset-right-1 col-sm-12 col-xs-12 pull-right ">
                                              <asp:Button ID="Button2" runat="server" class="btn lt-register-btn" 
                                                  Text="Login" onclick="Button2_Click" />
                         
                                </div>
                            </form>
                            <!--login form-->
                        </div>
                    </div>
                </div>
                <!--Login-->
            </div>
            <!--center-block-->
        </div>
        <!--container-->
    </div>







    <script src="node_modules/jquery/dist/jquery.min.js "></script>
    <script src="node_modules/bootstrap/dist/js/bootstrap.min.js "></script>
    <script src="libs/mdl/material.min.js "></script>
    <script src="css/jquery.validate.min.js "></script>

    <script>
        //Google analytics.
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r;
            i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date();
            a = s.createElement(o),
                m = s.getElementsByTagName(o)[0];
            a.async = 1;
            a.src = g;
            m.parentNode.insertBefore(a, m)
        })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');

        ga('create', 'UA-79865537-1', 'auto');
        ga('send', 'pageview');
    </script>

    <script>
        //Form validation.
        $('form').validate({
            rules: {
                fname: {
                    minlength: 3,
                    maxlength: 15,
                }
            },
            errorPlacement: function(error, element) {},
            highlight: function(element) {
                var id_attr = "#" + $(element).attr("id") + "1";
                $(element).closest('.form-group').removeClass('has-success').addClass('has-error');
                $(id_attr).removeClass('icon-ok-circled2').addClass('icon-cancel-circled2');
            },
            unhighlight: function(element) {
                var id_attr = "#" + $(element).attr("id") + "1";
                $(element).closest('.form-group').removeClass('has-error').addClass('has-success');
                $(id_attr).removeClass('icon-cancel-circled2').addClass('icon-ok-circled2');
            },
        });
    </script>

</body>

</html>