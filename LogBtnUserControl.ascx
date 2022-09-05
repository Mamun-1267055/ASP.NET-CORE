<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LogBtnUserControl.ascx.cs" Inherits="Work01.LogBtnUserControl" %>
    <script src="Scripts/jquery-3.6.0.js"></script>
    <script src="Scripts/bootstrap-datepicker.js"></script>
    <script type="text/javascript">
        $(document).ready(() => {
            $("input[name$='txtCdate']").datepicker({ format: "yyyy-mm-dd" });
        });
    </script>