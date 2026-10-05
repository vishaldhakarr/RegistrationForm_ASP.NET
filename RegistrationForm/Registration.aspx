<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="RegistrationForm.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Registration Form</title>

    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet" />

    <style>

        body {
            background: #f4f7fb;
            font-family: Arial, sans-serif;
        }

        .registration-wrapper {
            min-height: 100vh;
            padding: 50px 15px;
        }

        .registration-card {
            max-width: 850px;
            margin: auto;
            background: white;
            border-radius: 15px;
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.10);
            overflow: hidden;
        }

        .form-header {
            background: #0d6efd;
            color: white;
            padding: 30px;
            text-align: center;
        }

        .form-header h1 {
            font-size: 30px;
            font-weight: 600;
            margin-bottom: 8px;
        }

        .form-header p {
            margin: 0;
            opacity: 0.9;
        }

        .form-body {
            padding: 35px;
        }

        .form-label {
            font-weight: 600;
            color: #343a40;
        }

        .form-control {
            border-radius: 8px;
            padding: 10px 12px;
            border: 1px solid #ced4da;
        }

        .form-control:focus {
            border-color: #0d6efd;
            box-shadow: 0 0 0 0.2rem rgba(13, 110, 253, 0.15);
        }

        .validation-message {
            display: block;
            color: #dc3545;
            font-size: 13px;
            margin-top: 5px;
        }

        .gender-container {
            padding: 10px 0;
        }

        .gender-container label {
            margin-right: 25px;
            font-weight: normal;
        }

        .calendar-container {
            overflow-x: auto;
        }

        .calendar-container table {
            margin-bottom: 0;
        }

        .certificate-box {
            background: #f8f9fa;
            border: 1px dashed #adb5bd;
            border-radius: 8px;
            padding: 20px;
        }

        .register-button {
            width: 100%;
            padding: 12px;
            font-size: 17px;
            font-weight: 600;
            border-radius: 8px;
        }

        .section-title {
            font-size: 18px;
            font-weight: 600;
            color: #0d6efd;
            border-bottom: 1px solid #dee2e6;
            padding-bottom: 8px;
            margin-bottom: 25px;
        }

        @media (max-width: 576px) {

            .registration-wrapper {
                padding: 20px 10px;
            }

            .form-body {
                padding: 20px;
            }

            .form-header {
                padding: 25px 15px;
            }

            .form-header h1 {
                font-size: 24px;
            }
        }

    </style>

</head>

<body>

<form id="form1" runat="server">

    <div class="registration-wrapper">

        <div class="registration-card">

            <!-- HEADER -->
            <div class="form-header">

                <h1>Registration Form</h1>

                <p>Please enter your details below</p>

            </div>


            <!-- FORM BODY -->
            <div class="form-body">

                <div class="section-title">
                    Personal Information
                </div>


                <!-- FIRST NAME -->
                <div class="row mb-3">

                    <div class="col-md-6">

                        <label class="form-label">
                            First Name
                        </label>

                        <asp:TextBox
                            ID="txtFirstName"
                            runat="server"
                            CssClass="form-control"
                            placeholder="Enter first name">
                        </asp:TextBox>

                        <asp:RequiredFieldValidator
                            ID="rfvFirstName"
                            runat="server"
                            ControlToValidate="txtFirstName"
                            ErrorMessage="First Name is required"
                            CssClass="validation-message"
                            Display="Dynamic">
                        </asp:RequiredFieldValidator>

                        <asp:RegularExpressionValidator
                            ID="revFirstName"
                            runat="server"
                            ControlToValidate="txtFirstName"
                            ValidationExpression="^[A-Za-z]+([ '-][A-Za-z]+)*$"
                            ErrorMessage="First Name can contain letters only"
                            CssClass="validation-message"
                            Display="Dynamic">
                        </asp:RegularExpressionValidator>

                    </div>


                    <!-- LAST NAME -->
                    <div class="col-md-6">

                        <label class="form-label">
                            Last Name
                        </label>

                        <asp:TextBox
                            ID="txtLastName"
                            runat="server"
                            CssClass="form-control"
                            placeholder="Enter last name">
                        </asp:TextBox>

                        <asp:RequiredFieldValidator
                            ID="rfvLastName"
                            runat="server"
                            ControlToValidate="txtLastName"
                            ErrorMessage="Last Name is required"
                            CssClass="validation-message"
                            Display="Dynamic">
                        </asp:RequiredFieldValidator>

                        <asp:RegularExpressionValidator
                            ID="revLastName"
                            runat="server"
                            ControlToValidate="txtLastName"
                            ValidationExpression="^[A-Za-z]+([ '-][A-Za-z]+)*$"
                            ErrorMessage="Last Name can contain letters only"
                            CssClass="validation-message"
                            Display="Dynamic">
                        </asp:RegularExpressionValidator>

                    </div>

                </div>


                <!-- CONTACT + EMAIL -->
                <div class="row mb-3">

                    <!-- CONTACT -->
                    <div class="col-md-6">

                        <label class="form-label">
                            Contact No
                        </label>

                        <asp:TextBox
                            ID="txtContact"
                            runat="server"
                            CssClass="form-control"
                            placeholder="Enter 10 digit number"
                            MaxLength="10">
                        </asp:TextBox>

                        <asp:RequiredFieldValidator
                            ID="rfvContact"
                            runat="server"
                            ControlToValidate="txtContact"
                            ErrorMessage="Contact No is required"
                            CssClass="validation-message"
                            Display="Dynamic">
                        </asp:RequiredFieldValidator>

                        <asp:RegularExpressionValidator
                            ID="revContact"
                            runat="server"
                            ControlToValidate="txtContact"
                            ValidationExpression="^[0-9]{10}$"
                            ErrorMessage="Contact No must contain exactly 10 digits"
                            CssClass="validation-message"
                            Display="Dynamic">
                        </asp:RegularExpressionValidator>

                    </div>


                    <!-- EMAIL -->
                    <div class="col-md-6">

                        <label class="form-label">
                            Email
                        </label>

                        <asp:TextBox
                            ID="txtEmail"
                            runat="server"
                            CssClass="form-control"
                            placeholder="example@email.com">
                        </asp:TextBox>

                        <asp:RequiredFieldValidator
                            ID="rfvEmail"
                            runat="server"
                            ControlToValidate="txtEmail"
                            ErrorMessage="Email is required"
                            CssClass="validation-message"
                            Display="Dynamic">
                        </asp:RequiredFieldValidator>

                        <asp:RegularExpressionValidator
                            ID="revEmail"
                            runat="server"
                            ControlToValidate="txtEmail"
                            ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$"
                            ErrorMessage="Please enter a valid email address"
                            CssClass="validation-message"
                            Display="Dynamic">
                        </asp:RegularExpressionValidator>

                    </div>

                </div>


                <!-- DATE OF BIRTH -->
                <div class="row mb-4">

                    <div class="col-md-6">

                        <label class="form-label">
                            Date of Birth
                        </label>

                        <div class="calendar-container">

                            <asp:Calendar
                                ID="calDOB"
                                runat="server"
                                CssClass="table table-bordered"
                                DayNameFormat="Short"
                                FirstDayOfWeek="Monday">
                            </asp:Calendar>

                        </div>

                    </div>


                    <!-- GENDER -->
                    <div class="col-md-6">

                        <label class="form-label">
                            Gender
                        </label>

                        <div class="gender-container">

                            <asp:RadioButton
                                ID="rbMale"
                                runat="server"
                                Text="Male"
                                GroupName="Gender" />

                            <asp:RadioButton
                                ID="rbFemale"
                                runat="server"
                                Text="Female"
                                GroupName="Gender" />

                        </div>

                    </div>

                </div>


                <div class="section-title">
                    Account Information
                </div>


                <!-- PASSWORD -->
                <div class="row mb-3">

                    <div class="col-md-6">

                        <label class="form-label">
                            Password
                        </label>

                        <asp:TextBox
                            ID="txtPassword"
                            runat="server"
                            TextMode="Password"
                            CssClass="form-control"
                            placeholder="Enter password">
                        </asp:TextBox>

                        <asp:RequiredFieldValidator
                            ID="rfvPassword"
                            runat="server"
                            ControlToValidate="txtPassword"
                            ErrorMessage="Password is required"
                            CssClass="validation-message"
                            Display="Dynamic">
                        </asp:RequiredFieldValidator>

                    </div>


                    <!-- CONFIRM PASSWORD -->
                    <div class="col-md-6">

                        <label class="form-label">
                            Confirm Password
                        </label>

                        <asp:TextBox
                            ID="txtConfirmPassword"
                            runat="server"
                            TextMode="Password"
                            CssClass="form-control"
                            placeholder="Confirm password">
                        </asp:TextBox>

                        <asp:RequiredFieldValidator
                            ID="rfvConfirmPassword"
                            runat="server"
                            ControlToValidate="txtConfirmPassword"
                            ErrorMessage="Please confirm your password"
                            CssClass="validation-message"
                            Display="Dynamic">
                        </asp:RequiredFieldValidator>

                        <asp:CompareValidator
                            ID="cvPassword"
                            runat="server"
                            ControlToValidate="txtConfirmPassword"
                            ControlToCompare="txtPassword"
                            Operator="Equal"
                            Type="String"
                            ErrorMessage="Passwords do not match"
                            CssClass="validation-message"
                            Display="Dynamic">
                        </asp:CompareValidator>

                    </div>

                </div>


                <!-- ADDRESS -->
                <div class="mb-4">

                    <label class="form-label">
                        Address
                    </label>

                    <asp:TextBox
                        ID="txtAddress"
                        runat="server"
                        TextMode="MultiLine"
                        Rows="4"
                        CssClass="form-control"
                        placeholder="Enter your complete address">
                    </asp:TextBox>

                    <asp:RequiredFieldValidator
                        ID="rfvAddress"
                        runat="server"
                        ControlToValidate="txtAddress"
                        ErrorMessage="Address is required"
                        CssClass="validation-message"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>

                </div>


                <div class="section-title">
                    Vaccination Information
                </div>


                <!-- VACCINATED -->
                <div class="mb-3">

                    <asp:CheckBox
                        ID="chkVaccinated"
                        runat="server"
                        Text=" I am vaccinated"
                        AutoPostBack="true"
                        OnCheckedChanged="chkVaccinated_CheckedChanged" />

                </div>


                <!-- CERTIFICATE -->
                <asp:Panel
                    ID="pnlCertificate"
                    runat="server"
                    Visible="false"
                    CssClass="certificate-box mb-4">

                    <label class="form-label">
                        Vaccination Certificate
                    </label>

                    <p class="text-muted small">
                        Please upload your vaccination certificate.
                    </p>

                    <asp:FileUpload
                        ID="fuCertificate"
                        runat="server"
                        CssClass="form-control" />

                </asp:Panel>


                <!-- REGISTER BUTTON -->
                <div class="mt-4">

                    <asp:Button
                        ID="btnRegister"
                        runat="server"
                        Text="Register"
                        CssClass="btn btn-primary register-button"
                        OnClick="btnRegister_Click" />

                </div>

            </div>

        </div>

    </div>

</form>

<!-- Bootstrap JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>