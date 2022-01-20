<%

On Error Resume Next
Session("FP_OldCodePage") = Session.CodePage
Session("FP_OldLCID") = Session.LCID
Session.CodePage = 1252
Err.Clear

strErrorUrl = ""

If Request.ServerVariables("REQUEST_METHOD") = "POST" Then
If Request.Form("VTI-GROUP") = "0" Then
	Err.Clear

	Set fp_conn =  Server.CreateObject("ADODB.Connection")
	FP_DumpError strErrorUrl, "Cannot create connection"

	Set fp_rs = Server.CreateObject("ADODB.Recordset")
	FP_DumpError strErrorUrl, "Cannot create record set"

	fp_conn.Open Application("database1_ConnectionString")
	FP_DumpError strErrorUrl, "Cannot open database"

	fp_rs.Open "Results", fp_conn, 1, 3, 2 ' adOpenKeySet, adLockOptimistic, adCmdTable
	FP_DumpError strErrorUrl, "Cannot open record set"

	fp_rs.AddNew
	FP_DumpError strErrorUrl, "Cannot add new record set to the database"
	Dim arFormFields0(3)
	Dim arFormDBFields0(3)
	Dim arFormValues0(3)

	arFormFields0(0) = "Name"
	arFormDBFields0(0) = "Name"
	arFormValues0(0) = Request("Name")
	arFormFields0(1) = "Address"
	arFormDBFields0(1) = "Address"
	arFormValues0(1) = Request("Address")
	arFormFields0(2) = "Choice"
	arFormDBFields0(2) = "Choice"
	arFormValues0(2) = Request("Choice")

	FP_SaveFormFields fp_rs, arFormFields0, arFormDBFields0


	fp_rs.Update
	FP_DumpError strErrorUrl, "Cannot update the database"

	fp_rs.Close
	fp_conn.Close

	FP_FormConfirmationFromArrays "text/html; charset=windows-1252",_
						"Form Confirmation",_
						"Thank you for submitting the following information:",_
						"submission_form.asp",_
						"Return to the form.",_
						arFormDBFields0,_
						arFormValues0

End If
End If

Session.CodePage = Session("FP_OldCodePage")
Session.LCID = Session("FP_OldLCID")

%>
<% Response.Buffer = True %>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Results -- New</title>
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
</head>

<body bgcolor="#FFFFFF">

<table width="100%" align=left>
  <tr>
    <td width="50%">
	  <b><font size=+3 color="#000080"> Submission Form </font></b>
	</td>
    <td width="50%" align=right>
      <table>
        <tr>
          <td>
		<a href="../results_page.asp" target="_top">Results Page</a> | 
Submission Form
 | <a href="database_editor.asp" target="_top">Database Editor</a> 

          </td>
        </tr>
      </table>
	</td>
  </tr>
</table>


<p>
<br clear="all">
<hr>
<p>

<!--webbot BOT="GeneratedScript" PREVIEW=" " startspan --><script Language="JavaScript" Type="text/javascript"><!--
function FrontPage_Form1_Validator(theForm)
{

  if (theForm.Name.value.length > 255)
  {
    alert("Please enter at most 255 characters in the \"Name\" field.");
    theForm.Name.focus();
    return (false);
  }
  return (true);
}
//--></script><!--webbot BOT="GeneratedScript" endspan --><form METHOD="POST" action="submission_form.asp" onsubmit="return FrontPage_Form1_Validator(this)" language="JavaScript" name="FrontPage_Form1" webbot-action="--WEBBOT-SELF--">

<!--webbot bot="SaveDatabase" SuggestedExt="asp" S-DataConnection="database1" S-RecordSource="Results"  S-Form-Fields="Name Address Choice" S-Form-DBFields="Name Address Choice " B-UseDBFieldsForConfirmation="True" U-ASP-Include-Url="../../../_fpclass/fpdbform.inc" startspan --><input NAME="VTI-GROUP" TYPE="hidden" VALUE="0"><!--#include file="../../../_fpclass/fpdbform.inc"--><!--webbot bot="SaveDatabase" i-checksum="46753" endspan -->

<p><b>Name</b><br>
&nbsp;<!--webbot bot="Validation" s-display-name="Name" s-data-type="String" b-value-required="False" i-maximum-length="255" --><input type="TEXT" name="Name" size="64" value="" maxlength="255"><br>
</p>
<p><b>Address</b><br>
&nbsp;<!--webbot bot="Validation" s-display-name="Address" s-data-type="String" b-value-required="False" i-maximum-length="0" --><textarea rows="10" name="Address" cols="64"></textarea><br>
</p>
<p><b>Choice</b><br>
<p><input type="radio" name="Choice" value=1 >Option 1</p>
<p><input type="radio" name="Choice" value=2 >Option 2</p>
<p><input type="radio" name="Choice" value=3 >Option 3</p>
<br>
</p>


<p><input type="submit" value="    OK    "><input type="reset" value=" Reset "></p>

</form>

</body>

</html>