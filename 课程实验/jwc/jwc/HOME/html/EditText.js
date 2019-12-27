
var TD_BorderColor="#000000";
function onMouseOver_TD(Object){	
	Object.border="1";
	Object.style.cursor='hand';
}

function onMouseOut_TD(Object){
	Object.border="0";
}


function format(what,opt)
{
	HtmlEdit.focus();		
	if (opt=="removeFormat")
	{
		what=opt;
		opt=null;
	}
	if (opt==null) HtmlEdit.document.execCommand(what);
	else HtmlEdit.document.execCommand(what,"",opt);
	pureText = false;
}

////////////////////日历/////////////////////
function showdate()
{
	HtmlEdit.focus();
	showModalDialog("./html/date.htm?action=modify ",window,"dialogWidth:180px;dialogHeight:210px;help:no;scroll:no;status:no");
}

//////////////////插入水平线/////////////////////////
function inserthorizeline()
{
	var str="<hr width=100% size=2>";
	HtmlEdit.focus();
	var sel = HtmlEdit.document.selection.createRange();
	insertHTML(sel.text+str);
}

////////////////插入内容////////////////////////////////
function insertHTML(html)
{
	if(HtmlEdit.document.selection.type.toLowerCase() != "none")
		HtmlEdit.document.selection.clear() ;
	HtmlEdit.document.selection.createRange().pasteHTML(html); 
}	

////////////////插入表格////////////////////////////
function inserttable()
{  
	HtmlEdit.focus();
	showModalDialog("./html/table.htm?action=modify ",window,"dialogWidth:350px;dialogHeight:370px;help:no;scroll:no;status:no");
}
function tablecell()
{
	HtmlEdit.focus();
	showModalDialog("./html/tablecell.htm?action=CELL ",window,"dialogWidth:350px;dialogHeight:300px;help:no;scroll:no;status:no");
}
function tablecellRow()
{
	HtmlEdit.focus();
	showModalDialog("./html/tablecell.htm?action=row ",window,"dialogWidth:350px;dialogHeight:300px;help:no;scroll:no;status:no");
}

///////////////////////插入特殊符号///////////////
function symbol()
{
HtmlEdit.focus();			
showModalDialog("./html/symbol.htm?action=modify ",window,"dialogWidth:370px;dialogHeight:260px;help:no;scroll:no;status:no");
}


//////////////////////////字体color////////////////
function setfontcolor()
{
HtmlEdit.focus();			
var arr=showModalDialog("./html/selcolor.htm?action=modify ",window,"dialogWidth:350px;dialogHeight:300px;help:no;scroll:no;status:no");
if (arr != null) format('forecolor', arr);
else HtmlEdit.focus();
}

///////////////////动态字/////////////////////////
function setmarquee()
{
HtmlEdit.focus();			
showModalDialog("./html/marquee.htm?action=modify ",window,"dialogWidth:400px;dialogHeight:200px;help:no;scroll:no;status:no");		
}

///////////////////////超链接//////////////////////
function createlink()
{				
	HtmlEdit.focus();			
	showModalDialog("./html/hyperlink.htm?action=modify ",window,"dialogWidth:350px;dialogHeight:190px;help:no;scroll:no;status:no");
}

/////////////////插入图片/////////////////////////////
function insertpic()
{  	 
	HtmlEdit.focus();			
	showModalDialog("./html/images.htm?action=modify ",window,"dialogWidth:540px;dialogHeight:550px;help:no;scroll:no;status:no");
}

////////////////////////网页//////////////////////
function iframe()
{

HtmlEdit.focus();
var range = HtmlEdit.document.selection.createRange();
var arr = showModalDialog("./html/iframe.htm",window, "dialogWidth:22em; dialogHeight:13em; status:0;help:0");  
if (arr != null){
var ss;
ss=arr.split("*")
a=ss[0];
b=ss[1];
c=ss[2];
d=ss[3];
e=ss[4];
f=ss[5];
g=ss[6];
var str1;
str1="<iframe src='"+a+"'"
str1+=" scrolling="+b+""
str1+=" frameborder="+c+""
if(d!='')str1+=" marginheight="+d
if(e!='')str1+=" marginwidth="+e
if(f!='')str1+=" width="+f
if(g!='')str1+=" height="+g
str1=str1+"></iframe>"
content=HtmlEdit.document.body.innerHTML;
content=content+str1;
HtmlEdit.document.body.innerHTML=content;
}
else HtmlEdit.focus();
}

////////////////////////////分组框////////////////
function FIELDSET()
{
	HtmlEdit.focus();
	var range = HtmlEdit.document.selection.createRange();
	var arr = showModalDialog("./html/fieldset.htm", window, "dialogWidth:370px; dialogHeight:180px; status:0;help:0");
	if(arr!=null){
		var ss;
		ss=arr.split("*")
		a=ss[0];
		b=ss[1];
		c=ss[2];
		d=ss[3];
		var str1;
		str1="<FIELDSET "
		str1=str1+"align="+a+""
		str1=str1+" style='"
		if(c.value!='')str1=str1+"color:"+c+";"
		if(d.value!='')str1=str1+"background-color:"+d+";"
		str1=str1+"'><Legend"
		str1=str1+" align="+b+""
		str1=str1+">标题</Legend>内容</FIELDSET>"
		content=HtmlEdit.document.body.innerHTML;
		content=content+str1;
		HtmlEdit.document.body.innerHTML=content;
	}
	else HtmlEdit.focus();
}


///////////////编辑器事件//////////////////////////			
function getIframeData(){
var  cont=HtmlEdit.document.body.innerHTML;			   
document.getElementById("HtmlTextCode").setAttribute("value",cont);
}		