

<html>

<head>
<% ' FP_ASP -- ASP Automatically generated by a FrontPage Component. Do not Edit.
FP_CharSet = "windows-1252"
FP_CodePage = 1252 %>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Results -- List</title>
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
</head>

<body bgcolor="#FFFFFF">

<script Language="JavaScript"><!--
	var sAction = "form";
	var NoRecordsChecked = true;
	
	function OnClickBtn( el )
	{		
		if( el.name != "form_list" )
		{
			if( el.value == "Add New Record" )
			{
				document.form_list.target = "detail";
				document.form_list.action = "new.asp";
				sAction = "btn"
			}
			else if( el.value == "Delete Selected Records" )
			{
				for (i=0;i<document.form_list.elements.length;i++) 
				{
				   	if (document.form_list.elements[i].checked) 
				   	{
				      	NoRecordsChecked = false;
					} 
				}

				if (NoRecordsChecked) 
				{
					sAction = "form";
					alert("Select the records you wish to delete and then choose Delete Selected Records.");
					return;
				}

				document.form_list.target = "detail";
				document.form_list.action = "delete.asp";
				sAction = "btn"
			}
		}
		else
		{
			if( sAction != "btn" )
			{
				document.form_list.target = "_self";
				document.form_list.action = "list.asp";
			}
			
			sAction = "form";
		}
	}
-->	
</script>


<table width="100%" align=left>
  <tr>
    <td width="50%">
	  <b><font size=+3 color="#000080"> Database Editor - <i>Results</i></font></b>
	</td>
    <td width="50%" align=right>
      <table>
        <tr>
          <td>
		<a href="../results_page.asp" target="_top">Results Page</a> | 
<a href="submission_form.asp" target="_top">Submission Form</a> | 
Database Editor
          </td>
        </tr>
      </table>
	</td>
  </tr>
</table>

<br clear=all>

<form name="form_list" target="_self" action="list.asp" method="POST" OnClick="OnClickBtn(this)">
	<table>	
	<td>
		<p><input name="btnAction" type="submit" value="Add New Record" OnClick="OnClickBtn(this)"></p>
	</td>
	<td>
		<p><input name="btnAction" type="submit" value="Delete Selected Records" OnClick="OnClickBtn(this)"></p>
	</td>
</table>

<hr>

<table border="0">
	<thead>
	<tr>

	<td></td>

<td bgcolor="black"><font color="white" size="2"><b>Key</b></font></td>
<td bgcolor="black"><font color="white" size="2"><b>Name</b></font></td>
<td bgcolor="black"><font color="white" size="2"><b>Choice</b></font></td>


	</tr>
	</thead>

	<tbody> 

	<!--webbot bot="DatabaseRegionStart" s-columnnames="Key,Name,Choice," s-columntypes="3,202,2," s-dataconnection="database1" b-tableformat="TRUE" b-menuformat="FALSE" s-menuchoice s-menuvalue b-tableborder="FALSE" b-tableexpand="FALSE" b-tableheader="TRUE" b-listlabels="TRUE" b-listseparator="TRUE" i-ListFormat="0" b-makeform="TRUE" s-RecordSource="Results" s-displaycolumns="Key,Name,Address,Choice" s-criteria s-order s-sql="SELECT * FROM Results ORDER BY Key ASC" b-procedure="FALSE" clientside SuggestedExt="asp" s-DefaultFields s-NoRecordsFound="No records returned." i-MaxRecords="256" i-GroupSize="5" u-dblib="../../../_fpclass/fpdblib.inc" u-dbrgn1="../../../_fpclass/fpdbrgn1.inc" u-dbrgn2="../../../_fpclass/fpdbrgn2.inc" Tag="TBODY" startspan BOTID="0" preview="&lt;tr&gt;&lt;td colspan=64 bgcolor=&quot;#FFFF00&quot; width=&quot;100%&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;This is the start of a Database Results region. The page must be fetched from a web server with a web browser to display correctly; the current web is stored on your local disk or network.&lt;/font&gt;&lt;/td&gt;&lt;/tr&gt;" --><!--#include file="../../../_fpclass/fpdblib.inc"-->
<% if 0 then %>
<SCRIPT Language="JavaScript">
document.write("<div style='background: yellow; color: black;'>The Database Results component on this page is unable to display database content. The page must have a filename ending in '.asp', and the web must be hosted on a server that supports Active Server Pages.</div>");
</SCRIPT>
<% end if %>
<%
fp_sQry="SELECT * FROM Results ORDER BY Key ASC"
fp_sDefault=""
fp_sNoRecords="<tr><td colspan=4 align=""LEFT"" width=""100%"">No records returned.</td></tr>"
fp_sDataConn="database1"
fp_iMaxRecords=256
fp_iCommandType=1
fp_iPageSize=5
fp_fTableFormat=True
fp_fMenuFormat=False
fp_sMenuChoice=""
fp_sMenuValue=""
fp_sColTypes="&Key=3&Name=202&Choice=2&"
fp_iDisplayCols=4
fp_fCustomQuery=False
BOTID=0
fp_iRegion=BOTID
%>
<!--#include file="../../../_fpclass/fpdbrgn1.inc"-->
<!--webbot bot="DatabaseRegionStart" endspan -->

	<tr>

	<td><input type="checkbox" name="<%=FP_FieldURL(fp_rs,"Key")%>" value="ON"></td>

<td><a href="detail.asp?Key=<%=FP_FieldURL(fp_rs,"Key")%>" target="detail">
<!--webbot bot="DatabaseResultColumn" s-columnnames="Key,Name,Address,Choice" s-column="Key" b-tableformat="TRUE" b-hasHTML="FALSE" clientside startspan b-makelink b-MenuFormat preview="&lt;font size=&quot;-1&quot;&gt;&amp;lt;&amp;lt;&lt;/font&gt;Key&lt;font size=&quot;-1&quot;&gt;&amp;gt;&amp;gt;&lt;/font&gt;" --><%=FP_FieldVal(fp_rs,"Key")%><!--webbot bot="DatabaseResultColumn" endspan --></a></td>
<td>
<!--webbot bot="DatabaseResultColumn" s-columnnames="Key,Name,Address,Choice" s-column="Name" b-tableformat="TRUE" b-hasHTML="FALSE" clientside startspan b-makelink b-MenuFormat preview="&lt;font size=&quot;-1&quot;&gt;&amp;lt;&amp;lt;&lt;/font&gt;Name&lt;font size=&quot;-1&quot;&gt;&amp;gt;&amp;gt;&lt;/font&gt;" --><%=FP_FieldVal(fp_rs,"Name")%><!--webbot bot="DatabaseResultColumn" endspan --></td>
<td>
<!--webbot bot="DatabaseResultColumn" s-columnnames="Key,Name,Address,Choice" s-column="Choice" b-tableformat="TRUE" b-hasHTML="FALSE" clientside startspan b-makelink b-MenuFormat preview="&lt;font size=&quot;-1&quot;&gt;&amp;lt;&amp;lt;&lt;/font&gt;Choice&lt;font size=&quot;-1&quot;&gt;&amp;gt;&amp;gt;&lt;/font&gt;" --><%=FP_FieldVal(fp_rs,"Choice")%><!--webbot bot="DatabaseResultColumn" endspan --></td>


	</tr>

	<!--webbot bot="DatabaseRegionEnd" b-tableformat="TRUE" b-menuformat="FALSE" u-dbrgn2="../../../_fpclass/fpdbrgn2.inc" i-groupsize="5" clientside Tag="TBODY" startspan preview="&lt;tr&gt;&lt;td colspan=64 bgcolor=&quot;#FFFF00&quot; width=&quot;100%&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;This is the end of a Database Results region.&lt;/font&gt;&lt;/td&gt;&lt;/tr&gt;&lt;TR&gt;&lt;TD VALIGN=MIDDLE COLSPAN=64&gt;&lt;NOBR&gt;&lt;INPUT TYPE=Button VALUE=&quot;  |&lt;  &quot;&gt;&lt;INPUT TYPE=Button VALUE=&quot;   &lt;  &quot;&gt;&lt;INPUT TYPE=Button VALUE=&quot;  &gt;   &quot;&gt;&lt;INPUT TYPE=Button VALUE=&quot;  &gt;|  &quot;&gt;  [1/5]&lt;/NOBR&gt;&lt;BR&gt;&lt;/td&gt;&lt;/tr&gt;" --><!--#include file="../../../_fpclass/fpdbrgn2.inc"-->
<!--webbot bot="DatabaseRegionEnd" endspan -->

	</tbody>
</table>

</form>

</body>

</html>