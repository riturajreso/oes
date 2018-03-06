function addZero(i) {
    if (i < 10) {
        i = "0" + i;
    }
    return i;
}

var date=new Date();
var t=date.getHours();
var t1=date.getMinutes();
var t2=date.getSeconds();

t1=t1+30;
if(t1>=60)
{
	t=t+1;
	t1=t1%60;
}

xyz();

function xyz()
{
var date=new Date();
var st=date.getHours();
var st1=date.getMinutes();
var st2=date.getSeconds();


var tt=t;
var tt1=t1;
var tt2=t2;

if(tt2>=st2)
{
	tt2=tt2-st2;
}
else
{
	tt2=(tt2+60)-st2;
	tt1=tt1-1;
}

if(tt1>=st1)
{
	tt1=tt1-st1;
}
else
{
	tt1=(60+tt1)-st1;
	tt=tt-1;
}

tt=tt-st;

var a=document.getElementById('m');
a.innerHTML="The time left:"+addZero(tt)+":"+addZero(tt1)+":"+addZero(tt2);

}

var timer=setInterval(xyz,1);