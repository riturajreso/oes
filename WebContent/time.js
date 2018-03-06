function addZero(i) {
					    if (i < 10) {
						i = "0" + i;
						    }
						    return i;
						}
						
						

						//var date=new Date();
					    var t="<%=hour%>";
						var t1="<%=minute%>";
						var t2="<%=second%>";
						
						
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
							var v=60;
							if(tt2>=st2)
							{
								tt2=Number(tt2)-Number(st2);
							}
							else
							{
								tt2=Number(tt2)+Number(v)-Number(st2);
								tt1=Number(tt1)-1;
							}

							if(tt1>=st1)
							{
								tt1=Number(tt1)-Number(st1);
							}
							else
							{
								
								tt1=Number(tt1)+Number(v)-Number(st1);
								tt=Number(tt)-1;
							}

							tt=Number(tt)-Number(st);
							
							if(tt==0 && tt1==0 && tt2==0)
								{
									
									
									document.getElementById('submitButtonId').click();
								
								}
							
						var a=document.getElementById('m');
						a.innerHTML="The time left:"+tt+":"+tt1+":"+tt2;
						
						var b=document.getElementById('m1');
						b.innerHTML="The Now time is:"+st+":"+st1+":"+st2;
						
						var c=document.getElementById('m2');
						c.innerHTML=t+":"+t1+":"+t2;


						}

						var timer=setInterval(xyz,1);