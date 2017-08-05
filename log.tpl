<% 
require 'json'
doc = JSON.parse(File.open("s77.tweets").read)
arr=[]
doc.each { |s|
	txt=s['text'].to_s.gsub("\n","<br>")
	arr.push "<div class=\"msg\"><div class=\"time\"><a href=\"https://twitter.com/substation77/status/"+s['id'].to_s+"\">"+s['id'].to_s+"</a> // "+s['created_at'].to_s+"</div>"+txt+"</div>\n"
}
arr.reverse!
feed = ""
arr.each { |x| feed << x}
%>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>Substation 77</title>
	<link rel="stylesheet" href="s77.css" kind="text/css">
	<style kind="text/css">
		.time {text-align: center; background-color: #C1C1C1; color: black;}
		.msg {padding-bottom: 1em;}
		.time a[href] { background-color: none; color: black; }
		.time a[href]:hover { background-color: black; color: white; }
	</style>
</head>
<body>
<div id="main">
<em style="display: block;">U-23719@RESNET // DL: 13.1kbps // UL: 4.6kbps</em>
<h1>FILE REQUEST</h1>
<table style="padding-bottom: .5em">
	<tr><th>FILE IDENTIFIER</th> <td>F04.77</td></tr>
	<tr><th>FILE TITLE</th><td>"Substation 77"</td></tr>
	<tr><th>SECURITY CLASS</th><td>TEMPEST KESTREL</td></tr>
</table>
<table style="padding-bottom: .5em">
	<tr><th>SUBFILE IDENTIFIER</th> <td>F04.77.1</td></tr>
	<tr><th>SUBFILE TITLE</th><td>"Comms Traffic"</td></tr>
	<tr><th>SECURITY CLASS</th><td>TORNADO PIGEON</td></tr>
</table>
<table style="padding-bottom: .5em">
	<tr><th>USER IDENTITY</th> <td>U-23719</td></tr>
	<tr><th>USER CLEARANCE</th><td>LONDON LILAC</td></tr>
	<tr><th>ACCESS LOCATION</th><td>SUBSTATION 53 :: TERMINAL 76</td></tr>
</table>
<table style="width: 100%">
	<tr><td colspan="2"><strong>USER CODEWORD CLEARANCES</strong></td></tr>
	<tr><td>* SOLEMN CANDLE</td><td>* EMPTY HEARTH</td></tr>
	<tr><td>* MYSTIC PINES</td><td>* FORGOTTEN VIGIL</td></tr>
	<tr><td colspan="2"> * SORROWFUL CURRENT</td></tr>
</table>
<p>&lt; &lt; REQUEST SENT &gt; &gt;</p>
<ul><li>This request has been logged for security purposes. Be advised that any network traffic may be selected at random for audit by the Clearance Review Board.</li></ul>
<p class="success"> &lt; &lt; ACCESS GRANTED &gt; &gt;</p>
<ul><li>Displaying file</li></ul>
<h1>Substation 77 / Comms Traffic</h1>
<div class="inset">
<%=feed%>
</div>

<div id="toolbar">
	<div><em>^I</em> <a accesskey="i" href="index.html">FileIndex</a></div>
	<div><em>^H</em> <a accesskey="h" href="F04.77.html">ParentFile</a></div>
	<div><em>^Q</em> <a accesskey="q" href="logout.html">LogOut</a></div>
</div>

</div>
</body>
</html>
