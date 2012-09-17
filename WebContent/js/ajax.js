var errorTag=true;

function packURL(url) {
	if(url.indexOf('?')>-1){
		url = url + "&timestamp=" + new Date().getTime() + "&convertcode=true";
	}else{
		url = url + "?timestamp=" + new Date().getTime() + "&convertcode=true";
	}
	return url;
}

function createXMLHttpRequest() {
	var xmlHttp;
    if (window.ActiveXObject) {
        xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
    } 
    else if (window.XMLHttpRequest) {
        xmlHttp = new XMLHttpRequest();
    }
    return xmlHttp;
}
    
function startRequest(url,divname,formid) {
	// loading 
	var divObj = document.getElementById(divname);
	if(divObj){
		divObj.innerHTML = '<br><img src="../images/loadingV2.gif"/>'; 
	}
	if(formid){
		if(!url) {
			url = $('#'+formid).attr("action");
		}
		var params=$('#'+formid).serialize(); 
		if(url.indexOf('?')>-1){
			url = url +"&" + params;
		}else{
			url = url+"?"+params;
		}
	}
	url = packURL(url);
	startAJAX(url,divname);
}

function startAJAX(url, changediv) {
	var xmlHttp = createXMLHttpRequest();
    xmlHttp.onreadystatechange = function () {
        if(xmlHttp.readyState == 4) {
            if(xmlHttp.status == 200) {
            	var tag;
            	if(xmlHttp.responseXML){
            		tag = xmlHttp.responseXML.getElementsByTagName("messge").item(0);
            	}
            	if(tag) {
            		var message = tag.firstChild.nodeValue;
            		alert(message);
            	} else {
            		errorTag=false;
            		if(changediv!=null){
            			//alert(xmlHttp.responseText);// for debug
            			showDiv(changediv);
            			document.getElementById(changediv).innerHTML = xmlHttp.responseText;
            			execInnerScript(xmlHttp.responseText);
            		}
            	}
            }else if(xmlHttp.status == 400){
            	alert('Request Error !ErrCode:400');
            }else if(xmlHttp.status == 404){
            	alert('Can not find page !ErrCode:404');
            }else if(xmlHttp.status == 500){
            	alert('Internal Server Error! ErrCode:500');        	
            }
        }   
    };
    xmlHttp.open("GET",url, true);
    xmlHttp.send(null);
}
    


function hiddenDiv(divname){
	document.getElementById(divname).style.display = "none";
}

function showDiv(divname){
	document.getElementById(divname).style.display = "block";
}
function execInnerScript(innerhtml)
{
  var temp=innerhtml.replace(/\n|\r/g,"");
  var regex=/<script.+?<\/script>/gi;
  var arr=temp.match(regex);
  if(arr)
  {
    for(var iiiiiiiiii_iii=0;iiiiiiiiii_iii<arr.length;iiiiiiiiii_iii++)
    {
      var temp1=arr[iiiiiiiiii_iii];
      var reg=new RegExp("^<script(.+?)>(.+)<\/script>$","gi");
      reg.test(temp1);
      eval(RegExp.$2);
    }
  }
}