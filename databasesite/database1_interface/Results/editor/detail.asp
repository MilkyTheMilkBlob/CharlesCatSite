

<html>

<head>
<% ' FP_ASP -- ASP Automatically generated by a FrontPage Component. Do not Edit.
FP_CharSet = "windows-1252"
FP_CodePage = 1252 %>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Results -- Home</title>
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
</head>

<body bgcolor="#FFFFFF">

<!--webbot bot="PurpleText" PREVIEW="-Important-  If you modify this Database Results region using the Database Results Wizard, then your Database Editor will no longer work.  If you accidentally open the Database Results Wizard, simply click Cancel to exit without regenerating the Database Results region." -->
<!--webbot bot="DatabaseRegionStart" s-columnnames="Key,Name,Address,Choice" s-columntypes="3,202,203,2" s-dataconnection="database1" b-tableformat="FALSE" b-menuformat="FALSE" s-menuchoice s-menuvalue b-tableborder="TRUE" b-tableexpand="TRUE" b-tableheader="TRUE" b-listlabels="TRUE" b-listseparator="FALSE" i-ListFormat="5" b-makeform="FALSE" s-RecordSource="Results" s-displaycolumns="Key,Name,Address,Choice" s-criteria="{Key} EQ {Key} +" s-order s-sql="SELECT * FROM Results WHERE Key = ::Key::" b-procedure="FALSE" clientside SuggestedExt="asp" s-DefaultFields="Key=0" s-NoRecordsFound="No records returned." i-MaxRecords="1" i-GroupSize="0" u-dblib="../../../_fpclass/fpdblib.inc" u-dbrgn1="../../../_fpclass/fpdbrgn1.inc" u-dbrgn2="../../../_fpclass/fpdbrgn2.inc" Tag="BODY" startspan BOTID="0" preview="&lt;table border=0 width=&quot;100%&quot;&gt;&lt;tr&gt;&lt;td bgcolor=&quot;#FFFF00&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;This is the start of a Database Results region. The page must be fetched from a web server with a web browser to display correctly; the current web is stored on your local disk or network.&lt;/font&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/table&gt;" --><!--#include file="../../../_fpclass/fpdblib.inc"-->
<% if 0 then %>
<SCRIPT Language="JavaScript">
document.write("<div style='background: yellow; color: black;'>The Database Results component on this page is unable to display database content. The page must have a filename ending in '.asp', and the web must be hosted on a server that supports Active Server Pages.</div>");
</SCRIPT>
<% end if %>
<%
fp_sQry="SELECT * FROM Results WHERE Key = ::Key::"
fp_sDefault="Key=0"
fp_sNoRecords="No records returned."
fp_sDataConn="database1"
fp_iMaxRecords=1
fp_iCommandType=1
fp_iPageSize=0
fp_fTableFormat=False
fp_fMenuFormat=False
fp_sMenuChoice=""
fp_sMenuValue=""
fp_sColTypes="&Key=3&Name=202&Address=203&Choice=2&"
fp_iDisplayCols=4
fp_fCustomQuery=False
BOTID=0
fp_iRegion=BOTID
%>
<!--#include file="../../../_fpclass/fpdbrgn1.inc"-->
<!--webbot bot="DatabaseRegionStart" endspan -->

<table BORDER=0>

<tr>
<td><b><font size="2">Key:</font></b></td>
<td>
<!--webbot bot="DatabaseResultColumn" s-columnnames="Key,Name,Address,Choice" s-column="Key" b-tableformat="TRUE" b-hasHTML="FALSE" clientside startspan b-makelink b-MenuFormat preview="&lt;font size=&quot;-1&quot;&gt;&amp;lt;&amp;lt;&lt;/font&gt;Key&lt;font size=&quot;-1&quot;&gt;&amp;gt;&amp;gt;&lt;/font&gt;" --><%=FP_FieldVal(fp_rs,"Key")%><!--webbot bot="DatabaseResultColumn" endspan --></td>
</tr><tr>
<td><b><font size="2">Name:</font></b></td>
<td>
<!--webbot bot="DatabaseResultColumn" s-columnnames="Key,Name,Address,Choice" s-column="Name" b-tableformat="TRUE" b-hasHTML="FALSE" clientside startspan b-makelink b-MenuFormat preview="&lt;font size=&quot;-1&quot;&gt;&amp;lt;&amp;lt;&lt;/font&gt;Name&lt;font size=&quot;-1&quot;&gt;&amp;gt;&amp;gt;&lt;/font&gt;" --><%=FP_FieldVal(fp_rs,"Name")%><!--webbot bot="DatabaseResultColumn" endspan --></td>
</tr><tr>
<td><b><font size="2">Address:</font></b></td>
<td>
<!--webbot bot="DatabaseResultColumn" s-columnnames="Key,Name,Address,Choice" s-column="Address" b-tableformat="TRUE" b-hasHTML="FALSE" clientside startspan b-makelink b-MenuFormat preview="&lt;font size=&quot;-1&quot;&gt;&amp;lt;&amp;lt;&lt;/font&gt;Address&lt;font size=&quot;-1&quot;&gt;&amp;gt;&amp;gt;&lt;/font&gt;" --><%=FP_FieldVal(fp_rs,"Address")%><!--webbot bot="DatabaseResultColumn" endspan --></td>
</tr><tr>
<td><b><font size="2">Choice:</font></b></td>
<td>
<!--webbot bot="DatabaseResultColumn" s-columnnames="Key,Name,Address,Choice" s-column="Choice" b-tableformat="TRUE" b-hasHTML="FALSE" clientside startspan b-makelink b-MenuFormat preview="&lt;font size=&quot;-1&quot;&gt;&amp;lt;&amp;lt;&lt;/font&gt;Choice&lt;font size=&quot;-1&quot;&gt;&amp;gt;&amp;gt;&lt;/font&gt;" --><%=FP_FieldVal(fp_rs,"Choice")%><!--webbot bot="DatabaseResultColumn" endspan --></td>
</tr>


	<tr><td><table>
	<tr>
	<td>
	
	<form method="POST" action="edit.asp">
	<input type="hidden" name="Key" value="<%=FP_FieldHTML(fp_rs,"Key")%>">
	<p><input type="submit" value=" Edit " name="B1"></p>
	</form>
	</td>

	<td>
	<form method="POST" action="delete.asp">
	<input type="hidden" name="Key" value="<%=FP_FieldHTML(fp_rs,"Key")%>">
	<p><input type="submit" value="Delete" name="B1"></p>
	</form>
	</td>
	</tr>
	</table></td></tr>

</table>

<!--webbot bot="DatabaseRegionEnd" b-tableformat="FALSE" b-menuformat="FALSE" u-dbrgn2="../../../_fpclass/fpdbrgn2.inc" i-groupsize="0" clientside Tag="BODY" startspan preview="&lt;table border=0 width=&quot;100%&quot;&gt;&lt;tr&gt;&lt;td bgcolor=&quot;#FFFF00&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;This is the end of a Database Results region.&lt;/font&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/table&gt;" --><!--#include file="../../../_fpclass/fpdbrgn2.inc"-->
<!--webbot bot="DatabaseRegionEnd" endspan -->

</body>

</html>
