$(document).ready(function()
{
	var divtest = $('<div id=\"test\"></div>');
	
	//var offset = $('#res').offset(); 
	//alert("left:"+offset.left+",top:"+offset.top); 
	//alert(UrlDecode("%C2%D2%C2%EB"));
	//alert(document.location.href);
	//document.location.href
	const searchQPattern = /&q=([A-Za-z0-9_%\+]+)/;
	//const searchQPattern = /q=(\w+)/;
	//&$
	//const searchQPattern = /q=(\w+)/;
    var searchQ = searchQPattern.exec(document.location.href)[1];
    searchQ=decode(searchQ);
	
	//alert(searchQ);
	//alert(localStorage["url"]);
	//$('#rhscol').append(divtt);
	
	$('#main').after(divtest);
	$("#test").css({position: "absolute", border: "1px solid green", left: "800px", top: "180px"}).width(200).height(800); 
	$("#test").append("Title:"+searchQ+"<br>");
	//bookmarkXML=
	//alert(
	//chrome.extension.getBackgroundPage().searchGet();//);
	//chrome.extension.connect();
	
	//chrome.extension.sendRequest({toggle_pin: true}, function(response) {  
	chrome.extension.sendRequest(null, function(response) {  
      // Do stuff on successful response  
      //id=response.id;  
      //pw=response.pw;  
        //alert(response.id);
		$.get("http://localhost/linkslight/cgi/getSearch.php?id="+response.id+"&password="+response.pw+"&keyword="+searchQ,function(data)
		{
			bookmarkXML=data;
			$(bookmarkXML).find("bookmark").each(function()
			{
				if($(this).attr("url"))
				{
				
					$("#test").append('<a href="' + $(this).attr("url")+ '">' + $(this).attr("title") + '</a><br>');
					$("#test").append('--------------------------------------------------');
				}
			});
		});
    });  
	
	/*
	alert(bookmarkXML);
	
	*/
	//alert("OK");
});

/*
function UrlDecode(str)
{ 
  var ret=""; 
  for(var i=0;i<str.length;i++){ 
   var chr = str.charAt(i); 
    if(chr == "+"){ 
      ret+=" "; 
    }else if(chr=="%"){ 
     var asc = str.substring(i+1,i+3); 
     if(parseInt("0x"+asc)>0x7f){ 
      ret+=String.fromCharCode(parseInt("0x"+asc+str.substring(i+4,i+6))); 
      i+=5; 
     }else{ 
      ret+=String.fromCharCode(parseInt("0x"+asc)); 
      i+=2; 
     } 
    }else{ 
      ret+= chr; 
    } 
  } 
  return ret; 
} 
*/
function decode(str) {
	//var obj = document.getElementById('dencoder');
	
	var encoded = str;
	return decodeURIComponent(encoded.replace(/\+/g,  " "));
	//return decodeURIComponent(encoded);
}
