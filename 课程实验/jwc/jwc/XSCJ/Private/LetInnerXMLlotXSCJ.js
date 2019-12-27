function LetInnerXMLlot(thisID,vP,vT,vL,pN)
{ 
	var vXML,vWd,vID=thisID.value;
	var Coln=new Array();
	var Col1=new Array();
	var Col2=new Array();
	var Old="";
	if (vT=='%')vT='ALL';
	eval("vWd=document.all."+vL+".width");
	vURL='../XSCJ/Private/list_'+vP+'.aspx?id='+vID+'&s='+vT+'&wd='+vWd;
	vXML=getXMLHTTP(vURL,vID);
	pN.length=0;
	Coln=vXML.split('@');
	if (Coln!="")
	{
		pN.options[1]=new Option('','');
		for(i=0;i<=Coln.length-1;i++)
		{
			if (Old!=Coln[i])
			{
				Col1[i]=Coln[i].split('|')[0];
				Col2[i]=Coln[i].split('|')[1];
				Old=Coln[i];
			}
			pN.options[i+1]=new Option(Col2[i],Col1[i]);
		}
	}
}
