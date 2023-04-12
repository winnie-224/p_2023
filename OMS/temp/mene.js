// JavaScript Document
//************Code Details*******************************************
//Programmer = "Raghvendra"
//Date = 19 Sept 2007
//********************************************************************
//Specify the slider's width (in pixels)

var sliderwidthrp="100%"
//Specify the slider's height
var sliderheightrp="60px"
//Specify the slider's slide speed (larger is faster 1-10)
var slidespeedrp=1;
//configure background color:
slidebgcolorrp="#ffffff"

//Specify the slider's images
var leftrightsliderp=new Array()
var leftrightsliderp2=new Array()
var finalsliderp=''
leftrightsliderp[0]='<A href="/mobilestore/cellphone-buy/store-price_shop-3_online-7_latest-1_/Mobile_Phones/Nokia.html"><img src="http://www.themobilestore.in/mobilestore/faces/tiles/templates/media/images/mobileStore/nokia.jpg" width="103" height="59"></A>'
leftrightsliderp[1]='<A href="/mobilestore/cellphone-buy/store-price_shop-3_online-8_latest-1_/Mobile_Phones/Samsung.html"><img src="http://www.themobilestore.in/mobilestore/faces/tiles/templates/media/images/mobileStore/samsung.jpg" width="103" height="59"></A>'
leftrightsliderp[2]='<A href="/mobilestore/cellphone-buy/store-price_shop-3_online-6_latest-1_/Mobile_Phones/Motorola.html"><img src="http://www.themobilestore.in/mobilestore/faces/tiles/templates/media/images/mobileStore/motorola.jpg" width="103" height="59"></A>' 
leftrightsliderp[3]='<A href="/mobilestore/cellphone-buy/store-price_shop-3_online-9_latest-1_/Mobile_Phones/Sony_Ericsson.html"><img src="http://www.themobilestore.in/mobilestore/faces/tiles/templates/media/images/mobileStore/sonyericsson.jpg" width="103" height="59"></A>'
leftrightsliderp[4]='<A href="/mobilestore/cellphone-buy/store-price_shop-3_online-2_latest-1_/Mobile_Phones/Blackberry.html"><img src="http://www.themobilestore.in/mobilestore/faces/tiles/templates/media/images/mobileStore/bb.jpg" width="103" height="59"></A>'
leftrightsliderp[5]='<A href="#"><img src="http://www.themobilestore.in/mobilestore/faces/tiles/templates/media/images/mobileStore/airtel.jpg" width="103" height="59"></A>'
//leftrightsliderp[6]='<A href="#"><img src="http://www.themobilestore.in/mobilestore/faces/tiles/templates/media/images/mobileStore/flylogo.jpg" width="103" height="59"></A>'
leftrightsliderp[7]='<A href="#"><img src="http://www.themobilestore.in/mobilestore/faces/tiles/templates/media/images/mobileStore/aircel.jpg" width="103" height="59"></A>'
leftrightsliderp[8]='<A href="#"><img src="http://www.themobilestore.in/mobilestore/faces/tiles/templates/media/images/mobileStore/idea.gif" width="103" height="59"></A>'
leftrightsliderp[9]='<A href="#"><img src="http://www.themobilestore.in/mobilestore/faces/tiles/templates/media/images/mobileStore/xbox360.jpg" width="103" height="59"></A>'
leftrightsliderp[10]='<A href="/mobilestore/cellphone-buy/store-price_shop-3_online-5_latest-1_/Mobile_Phones/LG.html"><img src="http://www.themobilestore.in/mobilestore/faces/tiles/templates/media/images/mobileStore/lglogo.gif" width="103" height="59"></A>'
leftrightsliderp[11]='<A href="#"><img src="http://www.themobilestore.in/mobilestore/faces/tiles/templates/media/images/mobileStore/jabra.gif" width="103" height="59"></A>'
leftrightsliderp[12]='<A href="#"><img src="http://www.themobilestore.in/mobilestore/faces/tiles/templates/media/images/mobileStore/transcend.jpg" width="103" height="59"></A>'
//leftrightsliderp[13]='<A href="#"><img src="http://www.themobilestore.in/mobilestore/faces/tiles/templates/media/images/mobileStore/tata.jpg" width="103" height="59"></A>'
leftrightsliderp[14]='<A href="#"><img src="http://www.themobilestore.in/mobilestore/faces/tiles/templates/media/images/mobileStore/tata_sky.jpg" width="103" height="59"></A>'
leftrightsliderp[15]='<A href="/mobilestore/cellphone-buy/store-price_shop-3_online-102_latest-1_/Mobile_Phones/Spice.html"><img src="http://www.themobilestore.in/mobilestore/faces/tiles/templates/media/images/mobileStore/spice.jpg" width="103" height="59"></A>'
leftrightsliderp[16]='<A href="#"><img src="http://www.themobilestore.in/mobilestore/faces/tiles/templates/media/images/mobileStore/sandisk.jpg" width="103" height="59"></A>'
leftrightsliderp[17]='<A href="/mobilestore/cellphone-buy/store-price_shop-3_online-3_latest-1_/Mobile_Phones/Reliance_CDMA.html"><img src="http://www.themobilestore.in/mobilestore/faces/tiles/templates/media/images/mobileStore/Reliance.jpg" width="103" height="59"></A>'
leftrightsliderp[18]='<A href="#"><img src="http://www.themobilestore.in/mobilestore/faces/tiles/templates/media/images/mobileStore/philips_gogear.jpg" width="103" height="59"></A>'
leftrightsliderp[19]='<A href="/mobilestore/cellphone-buy/store-price_shop-3_online-101_latest-1_/Mobile_Phones/Micromax.html"><img src="http://www.themobilestore.in/mobilestore/faces/tiles/templates/media/images/mobileStore/micromax.jpg" width="103" height="59"></A>'
leftrightsliderp[20]='<A href="#"><img src="http://www.themobilestore.in/mobilestore/faces/tiles/templates/media/images/mobileStore/Kingston.jpg" width="103" height="59"></A>'
leftrightsliderp[21]='<A href="#"><img src="http://www.themobilestore.in/mobilestore/faces/tiles/templates/media/images/mobileStore/Matrixlogo.jpg" width="103" height="59"></A>'
leftrightsliderp[22]='<A href="#"><img src="http://www.themobilestore.in/mobilestore/faces/tiles/templates/media/images/mobileStore/ipod.jpg" width="103" height="59"></A>'
//leftrightsliderp[23]='<A href="#"><img src="http://www.themobilestore.in/mobilestore/faces/tiles/templates/media/images/mobileStore/htcy.jpg" width="103" height="59"></A>'
//leftrightsliderp[24]='<A href="#"><img src="http://www.themobilestore.in/mobilestore/faces/tiles/templates/media/images/mobileStore/ALCATEL.jpg" width="103" height="59"></A>'
//leftrightsliderp[25]='<A href="#"><img src="http://www.themobilestore.in/mobilestore/faces/tiles/templates/media/images/mobileStore/BSNL.jpg" width="103" height="59"></A>'
leftrightsliderp[26]='<A href="#"><img src="http://www.themobilestore.in/mobilestore/faces/tiles/templates/media/images/mobileStore/tata-docomo.jpg" width="103" height="59"></A>'
leftrightsliderp[27]='<A href="#"><img src="http://www.themobilestore.in/mobilestore/faces/tiles/templates/media/images/mobileStore/Loopmobile.jpg" width="103" height="59"></A>'
leftrightsliderp[28]='<A href="#"><img src="http://www.themobilestore.in/mobilestore/faces/tiles/templates/media/images/mobileStore/mtnl.jpg" width="103" height="59"></A>'
leftrightsliderp[29]='<A href="#"><img src="http://www.themobilestore.in/mobilestore/faces/tiles/templates/media/images/mobileStore/mts.jpg" width="103" height="59"></A>'
leftrightsliderp[30]='<A href="#"><img src="http://www.themobilestore.in/mobilestore/faces/tiles/templates/media/images/mobileStore/uninor.jpg" width="103" height="59"></A>'
leftrightsliderp[31]='<A href="/mobilestore/cellphone-buy/store-price_shop-3_online-82_latest-1_/Mobile_Phones/Virgin_Mobile_CDMA.html"><img src="http://www.themobilestore.in/mobilestore/faces/tiles/templates/media/images/mobileStore/virgin.jpg" width="103" height="59"></A>'





//leftrightsliderp2[0]='<A href="#">fhgfchfc</A>'
//leftrightsliderp2[1]='<A href="#">fhgfchfc</A>'
//leftrightsliderp2[2]='<A href="#">ksdfkj</A>'
//leftrightsliderp2[3]='<A href="#">sdfjdsff</A>'
//leftrightsliderp2[4]='<A href="#">mansish</A>'
//leftrightsliderp2[5]='<A href="#">manish</A>'
//leftrightsliderp2[6]='<A href="#">manish</A>'
//leftrightsliderp2[7]='<A href="#">manish</A>'
//leftrightsliderp2[8]='<A href="#">m</A>'
//leftrightsliderp2[9]='<A href="#"><img src="./templates/media/images/mobileStore/nokia.jpg"></A>'
//leftrightsliderp2[10]='<A href="#"><img src="./templates/media/images/mobileStore/nokia.jpg"></A>'
//leftrightsliderp2[11]='<A href="#"><img src="./templates/media/images/mobileStore/nokia.jpg"></A>'
//leftrightsliderp2[12]='<A href="#"><img src="./templates/media/images/mobileStore/nokia.jpg"></A>'
//leftrightsliderp2[13]='<A href="#"><img src="./templates/media/images/mobileStore/nokia.jpg"></A>'
//leftrightsliderp2[14]='<A href="#"><img src="./templates/media/images/mobileStore/nokia.jpg"></A>'
//leftrightsliderp2[15]='<A href="#"><img src="./templates/media/images/mobileStore/nokia.jpg"></A>'
//leftrightsliderp2[16]='<A href="#"><img src="./templates/media/images/mobileStore/nokia.jpg"></A>'
//leftrightsliderp2[17]='<A href="#"><img src="./templates/media/images/mobileStore/nokia.jpg"></A>'
//leftrightsliderp2[18]='<A href="#"><img src="./templates/media/images/mobileStore/nokia.jpg"></A>'
//leftrightsliderp2[19]='<A href="#"><img src="./templates/media/images/mobileStore/nokia.jpg"></A>'
//leftrightsliderp2[20]='<A href="#"><img src="./templates/media/images/mobileStore/nokia.jpg"></A>'
//leftrightsliderp2[21]='<A href="#"><img src="./templates/media/images/mobileStore/nokia.jpg"></A>'
//leftrightsliderp2[22]='<A href="#"><img src="./templates/media/images/mobileStore/nokia.jpg"></A>'
//leftrightsliderp2[23]='<A href="#"><img src="./templates/media/images/mobileStore/nokia.jpg"></A>'
//leftrightsliderp2[24]='<A href="#"><img src="./templates/media/images/mobileStore/nokia.jpg"></A>'
//leftrightsliderp2[25]='<A href="#"><img src="./templates/media/images/mobileStore/nokia.jpg"></A>'
//leftrightsliderp2[26]='<A href="#"><img src="./templates/media/images/mobileStore/nokia.jpg"></A>'
//leftrightsliderp2[27]='<A href="#"><img src="./templates/media/images/mobileStore/nokia.jpg"></A>'
//leftrightsliderp2[28]='<A href="#"><img src="./templates/media/images/mobileStore/nokia.jpg"></A>'
//leftrightsliderp2[29]='<A href="#"><img src="./templates/media/images/mobileStore/nokia.jpg"></A>'
//leftrightsliderp2[30]='<A href="#"><img src="./templates/media/images/mobileStore/nokia.jpg"></A>'
//leftrightsliderp2[31]='<A href="#"><img src="./templates/media/images/mobileStore/nokia.jpg"></A>'
//leftrightsliderp2[32]='<A href="#"><img src="./templates/media/images/mobileStore/nokia.jpg"></A>'
//leftrightsliderp2[33]='<A href="#"><img src="./templates/media/images/mobileStore/nokia.jpg"></A>'
//leftrightsliderp2[34]='<A href="#"><img src="./templates/media/images/mobileStore/nokia.jpg"></A>'
//leftrightsliderp2[35]='<A href="#"><img src="./templates/media/images/mobileStore/nokia.jpg"></A>'
//leftrightsliderp2[36]='<A href="#"><img src="./templates/media/images/mobileStore/nokia.jpg"></A>'
//leftrightsliderp2[37]='<A href="#"><img src="./templates/media/images/mobileStore/nokia.jpg"></A>'
//leftrightsliderp2[38]='<A href="#"><span width=35>&nbsp;</span></A>'
//leftrightsliderp[14]='<A href="#"><img src="./templates/media/images/mobileStore/i-mate.gif"></A>'
//leftrightsliderp[11]='<A href="#"><img src="./templates/media/images/mobileStore/hplogo.gif"></A>'
//leftrightsliderp[12]='<A href="#"><img src="./templates/media/images/mobileStore/ibuddy.gif"></A>'
//leftrightsliderp[8]='<A href="#"><img src="./templates/media/images/mobileStore/bpllogo.jpg"></A>'
//leftrightsliderp[9]='<A href="#"><img src="./templates/media/images/mobileStore/bsnllogo.jpg"></A>'
//leftrightsliderp[6]='<A href="#"><img src="./templates/media/images/mobileStore/benq.jpg"></A>'


//Specify gap between each image (use HTML):
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
write('<div id="test2rp" style="position:absolute;left:0px;top:0px"></div>')
write('<div id="test3rp" style="position:absolute;left:-1000px;top:0px"></div>')
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