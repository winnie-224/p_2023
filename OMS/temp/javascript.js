var sliderwidthrp="100%"
var sliderheightrp="60px"
var slidespeedrp=1;
slidebgcolorrp="#ffffff"

var leftrightsliderp=new Array()
var leftrightsliderp2=new Array()
var finalsliderp=''
leftrightsliderp[0]='<A href="#"><img src="images/nokia.jpg" width="103" height="59"></A>'
leftrightsliderp[1]='<A href="#"><img src="images/samsung.jpg" width="103" height="59"></A>'
leftrightsliderp[2]='<A href="#" width="103" height="59"></A>' 
leftrightsliderp[3]='<A href="#" width="103" height="59"></A>'
leftrightsliderp[4]='<A href="#"><img src="images/bb.jpg" width="103" height="59"></A>'
leftrightsliderp[5]='<A href="#"><img src="images/airtel.jpg" width="103" height="59"></A>'
//leftrightsliderp[6]='<A href="#"><img src="images/flylogo.jpg" width="103" height="59"></A>'
leftrightsliderp[7]='<A href="#"><img src="images/aircel.jpg" width="103" height="59"></A>'
leftrightsliderp[8]='<A href="#"><img src="images/idea.gif" width="103" height="59"></A>'
leftrightsliderp[9]='<A href="#"><img src="images/xbox360.jpg" width="103" height="59"></A>'
leftrightsliderp[10]='<A href="#"><img src="images/lglogo.gif" width="103" height="59"></A>'
leftrightsliderp[11]='<A href="#"><img src="images/jabra.gif" width="103" height="59"></A>'
leftrightsliderp[12]='<A href="#"><img src="images/transcend.jpg" width="103" height="59"></A>'
//leftrightsliderp[13]='<A href="#"><img src="images/tata.jpg" width="103" height="59"></A>'
leftrightsliderp[14]='<A href="#"><img src="images/tata_sky.jpg" width="103" height="59"></A>'
leftrightsliderp[15]='<A href="#"><img src="images/spice.jpg" width="103" height="59"></A>'
leftrightsliderp[16]='<A href="#"><img src="images/sandisk.jpg" width="103" height="59"></A>'
leftrightsliderp[17]='<A href="#"><img src="images/Reliance.jpg" width="103" height="59"></A>'
leftrightsliderp[18]='<A href="#"><img src="images/philips_gogear.jpg" width="103" height="59"></A>'
leftrightsliderp[19]='<A href="#"><img src="images/micromax.jpg" width="103" height="59"></A>'
leftrightsliderp[20]='<A href="#"><img src="images/Kingston.jpg" width="103" height="59"></A>'
leftrightsliderp[21]='<A href="#"><img src="images/Matrixlogo.jpg" width="103" height="59"></A>'
leftrightsliderp[22]='<A href="#"><img src="images/ipod.jpg" width="103" height="59"></A>'
//leftrightsliderp[23]='<A href="#"><img src="images/htcy.jpg" width="103" height="59"></A>'
//leftrightsliderp[24]='<A href="#"><img src="images/ALCATEL.jpg" width="103" height="59"></A>'
//leftrightsliderp[25]='<A href="#"><img src="images/BSNL.jpg" width="103" height="59"></A>'
leftrightsliderp[26]='<A href="#"><img src="images/tata-docomo.jpg" width="103" height="59"></A>'
leftrightsliderp[27]='<A href="#"><img src="images/Loopmobile.jpg" width="103" height="59"></A>'
leftrightsliderp[28]='<A href="#"><img src="images/mtnl.jpg" width="103" height="59"></A>'
leftrightsliderp[29]='<A href="#"><img src="images/mts.jpg" width="103" height="59"></A>'
leftrightsliderp[30]='<A href="#"><img src="images/uninor.jpg" width="103" height="59"></A>'
leftrightsliderp[31]='<A href="#" width="103" height="59"></A>'

var imagegaprp=''
var imagebrrp='<br>'
var imagegaprp2='&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
//Specify pixels gap between each slideshow rotation (use integer):
var slideshowgaprp=1


////NO NEED TO EDIT BELOW THIS LINE////////////

var copyspeedrp=slidespeedrp
leftrightsliderp='<nobr>'+leftrightsliderp.join(imagegaprp)+'<br>'+leftrightsliderp2.join(imagegaprp2)+'</nobr>'
//alert(leftrightsliderp);
var iedomrp=document.all||document.getElementById;
if (iedomrp)
{
	//alert("div");
document.write('<div id="temprp" style="visibility:hidden;display:block;position:absolute;left:-9000px;">'+leftrightsliderp+'</div>')
}
var actualwidthrp=''
var cross_sliderp, ns_sliderp
var browsername = navigator.appName;
	//alert("browsername-->>"+browsername);
function filluprp(){
if (iedomrp){
	//alert("iedomrp-->>"+iedomrp);
cross_sliderp=document.getElementById? document.getElementById("test2rp") : document.all.test2rp;
cross_sliderp2=document.getElementById? document.getElementById("test3rp") : document.all.test3rp;
cross_sliderp.innerHTML=cross_sliderp2.innerHTML=leftrightsliderp;
actualwidthrp=document.all? cross_sliderp.offsetWidth : document.getElementById("temprp").offsetWidth;
	//alert("actualwidthrp-->>"+actualwidthrp+"--slideshowgaprp-->>"+slideshowgaprp);
cross_sliderp2.style.left=actualwidthrp+slideshowgaprp;
}
else if (document.all){
	//alert("document.layers-->>"+document.layers );
ns_sliderp=document.ns_sliderpmenu.document.ns_sliderpmenu2
ns_sliderp2=document.ns_sliderpmenu.document.ns_sliderpmenu3
ns_sliderp.document.write(leftrightsliderp)
ns_sliderp.document.close()
actualwidthrp=ns_sliderp.document.width
ns_sliderp2.left=actualwidthrp+slideshowgaprp
ns_sliderp2.document.write(leftrightsliderp)
ns_sliderp2.document.close()
}
lefttime=setInterval("slideleftrp()",30)
}

//window.onload=filluprp;

function slideleftrp(){
if (iedomrp){
if (parseInt(cross_sliderp.style.left)>(actualwidthrp*(-1)+8))
	{
cross_sliderp.style.left=parseInt(cross_sliderp.style.left)-copyspeedrp+"px";
	}
else
	{
cross_sliderp.style.left=parseInt(cross_sliderp2.style.left)+actualwidthrp+slideshowgaprp+"px";
	}

if (parseInt(cross_sliderp2.style.left)>(actualwidthrp*(-1)+8))
	{
cross_sliderp2.style.left=parseInt(cross_sliderp2.style.left)-copyspeedrp+"px";
	}
else
	{
cross_sliderp2.style.left=parseInt(cross_sliderp.style.left)+actualwidthrp+slideshowgaprp+"px";
	}

}
else if (document.all){
if (ns_sliderp.left>(actualwidthrp*(-1)+8))
ns_sliderp.left-=copyspeedrp
else
ns_sliderp.left=ns_sliderp2.left+actualwidthrp+slideshowgaprp

if (ns_sliderp2.left>(actualwidthrp*(-1)+8))
ns_sliderp2.left-=copyspeedrp
else
ns_sliderp2.left=ns_sliderp.left+actualwidthrp+slideshowgaprp
}
}


if (iedomrp||document.layers){
	//alert(iedomrp);
with (document){
document.write('<table border="0"  cellspacing="0" cellpadding="0"><td>')
if (iedomrp){
write('<div style="position:relative;width:'+sliderwidthrp+';height:'+sliderheightrp+';overflow:hidden">')
write('<div style="position:absolute;width:'+sliderwidthrp+';height:'+sliderheightrp+';background-color:'+slidebgcolorrp+'" onMouseover="copyspeedrp=0" onMouseout="copyspeedrp=slidespeedrp">')
write('<div id="test2rp" style="position:absolute;left:10px;top:0px"></div>')
write('<div id="test3rp" style="position:absolute;left:1000px;top:0px"></div>')
write('</div></div>')
}
else if (document.layers){
write('<ilayer width='+sliderwidthrp+' height='+sliderheightrp+' name="ns_sliderpmenu" bgColor='+slidebgcolorrp+'>')
write('<layer name="ns_sliderpmenu2" left=0 top=0 onMouseover="copyspeedrp=0" onMouseout="copyspeedrp=slidespeedrp"></layer>')
write('<layer name="ns_sliderpmenu3" left=0 top=0 onMouseover="copyspeedrp=0" onMouseout="copyspeedrp=slidespeedrp"></layer>')
write('</ilayer>')
}
document.write('</td></table>')
}
}